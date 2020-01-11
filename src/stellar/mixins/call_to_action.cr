require "../integrations/slack"
require "../integrations/sendgrid"

module Stellar
  class Star
    module CallToAction

      include Stellar::Slack
      include Stellar::SendGrid

    end
  end
end
