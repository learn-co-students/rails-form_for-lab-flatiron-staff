class SchoolClassesController < ApplicationController
  before_action :find_school, only: [:show, :edit, :update]

  def show
  end

  def new
    @school = SchoolClass.new
  end

  def create
    school = SchoolClass.new(school_params)
    school.save

    redirect_to school_class_path(school)
  end

  def edit
  end

  def update
    @school.update_attributes(school_params)

    redirect_to school_class_path(@school)
  end

  private

  def find_school
    @school = SchoolClass.find(params[:id])
  end

  def school_params
    params.require(:school_class).permit(:title, :room_number)
  end
end