class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student=Student.find(params[:id])
    render :show
  end

  def new 
    @student =Student.new
    render :new
  end 

  def create 
    @student = Student.create(params_path)
    redirect_to student_path(@student)
  end 

  private 

  def params_path 
    params.require(:student).permit(:first_name, :last_name)

  end 





end
