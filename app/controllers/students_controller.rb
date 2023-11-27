class StudentsController < ApplicationController

  def index
    students = Student.all
    if params[:name]
      name = params[:name].downcase
      students = students.select {|s| s.last_name.downcase == name || s.first_name.downcase == name}
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
