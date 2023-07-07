class ScholarsController < ApplicationController
  def index
    @student = Student.all
  end

  def new
  end

  def edit
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end
end
