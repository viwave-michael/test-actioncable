module SessionsHelper
  def log_in(device)
    puts "******** log_in device(#{device.id}) ********"
    cookies.permanent.signed[:device_id] = device.id
  end

  def log_out
    current_device.disappear
    ActionCable.server.broadcast('AppearanceChannel', device: current_device)

    cookies.delete(:device_id)
    @current_device = nil
  end

  def current_device
    puts "******** current_device device_id: #{cookies.signed[:device_id]} ********"
    if (device_id = cookies.signed[:device_id])
      @current_device ||= Device.find_by(id: device_id)
    end
  end

  def logged_in?
    !current_device.nil?
  end
end
