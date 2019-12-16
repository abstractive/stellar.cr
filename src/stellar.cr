require "retriable"
Retriable.configure do |settings|
  settings.max_attempts = 5
  settings.max_elapsed_time = 3.seconds
end

#de require "crest"

ENV["ARTILLERY_CONFIGURATION"] = "stellar.yml"

require "artillery"
require "./boot/artillery"

module Stellar
  include Artillery
end

require "./stellar/templates"
require "./stellar/star/cta"
require "./stellar/star"

require "./stellar/integrations/slack"
require "./stellar/integrations/sendgrid"

alias Star = Stellar::Star
