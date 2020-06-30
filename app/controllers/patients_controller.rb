class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end
  def new
    @patient = Patient.new
  end
  def create
    Patient.create(params)
    redirect_to new_patient_path
  end
  def show
    @patient = Patient.find_by_id(params[:id])
  end
end
