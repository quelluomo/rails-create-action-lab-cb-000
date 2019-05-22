class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = "First Name"
    @student.last_name = "Last Name"
    @student.save 
    redirect_to student_path(@student)
  end

end
