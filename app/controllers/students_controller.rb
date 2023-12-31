class StudentsController < ApplicationController
 
  
  def index
    @students = Student.all
  end

 def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: 'Student has been created successfully'
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to student_path(@student), notice: 'Student has been updated successfully'
    else
      render :edit
  end
end

def destroy
  @student = Student.find(params[:id])
  @student.destroy
  redirect_to students_path, notice: 'Student has been deleted successfully'
end

private
def student_params
  params.require(:student).permit(:f_name, :l_name, :email, :phone_no, :bio)
end




end

