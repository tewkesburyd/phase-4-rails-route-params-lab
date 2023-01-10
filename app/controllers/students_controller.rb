class StudentsController < ApplicationController

  def index
    params = {first_name: params[:first_name], last_name: params[:last_name]}
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
