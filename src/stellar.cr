require "retriable"
require "crest"

ENV["ARTILLERY_CONFIGURATION"] = "stellar.yml"

require "artillery"
require "./boot/stellar"

alias Star = Artillery::Shot

Retriable.configure do |settings|
  settings.max_attempts = 5
  settings.max_elapsed_time = 3.seconds
end

require "./stellar/integrations/slack"
