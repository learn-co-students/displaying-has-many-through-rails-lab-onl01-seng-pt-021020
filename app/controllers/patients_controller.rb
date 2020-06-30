class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end
  
  def create
    @patient = Patient.create(patient_params)

    if @patient.save
      redirect_to patients_path
    else
      render :new
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)

    if @patient.save
      redirect_to patient_pathe(@patient)
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    redirect_to patients_path
  end

  private
  def patients_params
    params.require(:patient).permit(
      :name,
      :age,
      appointments_attributes: [
        :appointment_datetime
      ],
    )
  end
end
