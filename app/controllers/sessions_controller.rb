class SessionsController < ApplicationController
  def create
    device = Device.find_by(id: params[:device_id])
    redirect_to manage_devices_path, notice: "Cannot find device with id: #{params[:device_id]}" and return if device.nil?

    log_in device
    redirect_to manage_devices_path, notice: "Hi, #{current_device.name}!"
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
