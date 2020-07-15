class AppointmentsController < ApplicationController
    def show
        @appoint = Appointment.find_by_id(params[:id])
    end
end