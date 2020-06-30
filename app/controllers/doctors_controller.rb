class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end
  def create
    Doctor.create(params)
    redirect_to new_doctor_path
  end
  def show
    @doctor = Doctor.find_by_id(params[:id])
  end
end
