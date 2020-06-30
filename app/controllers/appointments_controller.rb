class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end
  def create
    Appointment.create(params)
    redirect_to new_appointment_path
  end
  def show
    @appointment = Appointment.find_by_id(params[:id])
  end
end
