class StudentsController < ApplicationController
  def index
    @classroom = Classroom.find(params[:classroom_id])
    @students = @classroom.students

    render json: @students, status: :ok
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      @auth_token = @student.generate_token(@student.id)
      response.headers['X-Auth-Token'] = @auth_token

      render json: @student, status: :created
    else
      render json: @student.errors, status: :method_not_allowed
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    token = request.headers['X-Auth-Token']

    if @student.nil?
      render json: {error: 'Некорректный  id студента'}, status: :bad_request
    elsif @student.generate_token(@student.id) == token
      @student.destroy

      head :ok
    else
      render json: {error: 'Некорректная авторизация'}, status: :unauthorized
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :surname, :classroom_id, :school_id)
  end
end
