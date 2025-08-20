class ClassroomsController < ApplicationController
  def index
    @school = School.find(params[:school_id])
    @classrooms = @school.classrooms

    render json: @classrooms, status: :ok
  end
end
