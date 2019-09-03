class StudentsController < ApplicationController

    def index
      @students = Student.all
    end

    def new
      @student = Student.new
    end

    def create
      @student = Student.create(student_params(:first_name, :last_number))
      redirect_to @student
    end

    def show
      self.find_student
    end

    def edit
      find_student
    end

    def update
      find_student
      @student.update(student_params(:first_name, :last_name))
      redirect_to @student
    end

    def find_student
      @student = Student.find(params[:id])
    end

    private

    def student_params(*args)
      params.require(:student).permit(*args)
    end

end
