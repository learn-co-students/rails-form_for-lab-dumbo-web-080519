class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(class_params(:title, :room_number))
    redirect_to @school_class
  end

  def show
    self.find_class
  end

  def edit
    find_class
  end

  def update
    find_class
    @school_class.update(class_params(:title, :room_number))
    redirect_to @school_class
  end

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end

  private

  def class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
