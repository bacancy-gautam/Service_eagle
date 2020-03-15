# frozen_string_literal: true

class ServiceUpdatesController < ApplicationController
  before_action :authenticate_user!
  def new
    @update = ServiceUpdate.new
  end

  def index
    @updates = ServiceUpdate.joins(:booked_appointment).select(:service_status, :description, :created_at, :estimation, 'booked_appointments.token').search(params[:booking_id])
  end

  def create
    @update = ServiceUpdate.new(allowed_parameter)
    @appoinment = BookedAppointment.find_by(token: params[:bookingid])
    @update.booked_appointment_id = @appoinment.id
    flash.alert = if @update.save
                    'update saved successfully'
                    if @update.service_status == 'completed'
                      @appoinment.service_status = 'completed'
                      @appoinment.save
                      redirect_to generate_invoice_path(@update)
                    elsif @update.service_status == 'inprogress'
                      redirect_to service_updates_path
                    end
                  else
                    'update does not save successfully'
                  end
  end

  def edit
    @update = ServiceUpdate.find(params[:id])
  end

  def show
    @update = ServiceUpdate.find(params[:id])
    @appoinment = BookedAppointment.find(@update.booked_appointment_id)
  end

  def update
    @update = ServiceUpdate.find(params[:id])
    @update.update(allowed_parameter)
    flash.alert = 'succefully updated'
    redirect_to service_updates_path(@update.id)
  end

  def destroy
    @update = ServiceUpdate.find(params[:id])
    @update.destroy
    flash.alert = 'record deleted'
    redirect_to service_updates_path(@update.id)
  end

  def allowed_parameter
    params.require(:service_update).permit(:service_status, :description, :estimation)
  end

  private
end
