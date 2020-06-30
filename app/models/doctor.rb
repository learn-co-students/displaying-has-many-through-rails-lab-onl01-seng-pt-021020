class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments 

  def time
    self.appointments.appointment_datetime.strftime("%B %d, %Y at %H")
  end
end
