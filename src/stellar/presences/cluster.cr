require "artillery/launcher/bazooka"
require "artillery/mountpoint/shoulder"

launcher = Artillery::Bazooka.new
mountpoint = Artillery::Shoulder.new

mountpoint.connect

spawn do
  launcher.start
end

Artillery::Logger.log "Starting self-contained launcher for presence: #{Artillery::PRESENCE_CODE}", "Stellar"
mountpoint.engage
