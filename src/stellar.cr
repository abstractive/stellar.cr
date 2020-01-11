require "retriable"
Retriable.configure do |settings|
  settings.max_attempts = 5
  settings.max_elapsed_time = 3.seconds
end


#de TODO: Separate configurations? Probably not.
ENV["ARTILLERY_CONFIGURATION"] = "stellar.yml"

require "artillery"

module Stellar
  include Artillery
end

require "./stellar/templates"
require "./stellar/stars/cta"
require "./stellar/star"

require "./stellar/integrations/slack"
require "./stellar/integrations/sendgrid"

alias Star = Stellar::Star
