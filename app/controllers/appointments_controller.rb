class AppointmentsController < ApplicationController

    def show
        @app = Appointment.find_by_id(params[:id])
    end
end
