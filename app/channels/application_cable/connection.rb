module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_device

    def connect
      puts "******** Connection connect ********"
      self.current_device = find_device
    end

    protected

      def find_device
        if current_device = Device.find_by(id: cookies.signed[:device_id])
          current_device
        else
          reject_unauthorized_connection
        end
      end
  end
end
