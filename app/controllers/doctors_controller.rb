class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to doctors_path
    else
      render :new 
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.update(doctor_params)

    if @doctor.save
      redirect_to @doctor
    else
      render :edit
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @dector.destroy
    redirect_to doctors_path
  end

  private

  def doctor_params
    params.require(:doctor).permit(
      :name,
      :department,
      appointments_attributes: [
        :appointment_datetime
      ]
    ) 
  end
  
end
