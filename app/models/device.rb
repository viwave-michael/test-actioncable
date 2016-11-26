class Device < ApplicationRecord
  def self.ONLINE
    "online"
  end

  def self.OFFLINE
    "offline"
  end

  def self.AWAY
    "away"
  end

  def appear
    update_attribute(:status, Device.ONLINE)
  end

  def disappear
    update_attribute(:status, Device.OFFLINE)
  end

  def away
    update_attribute(:status, Device.AWAY)
  end
end
