class StudentsController < ApplicationController

  def index
    # students = Student.all
    # render json: students

    students = if params[:name]
      Student.find_by(first_name: params[:name])
    else
      Student.all
    end    
render json: students
  end

  def show
    student = Student.find_by_id(params[:id])
    render json: student
  end

end
