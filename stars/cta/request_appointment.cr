module Stellar
  module CTA
    class RequestAppointment < Star
      vector :post, "/cta/request/appointment"
      def post
        if payload = @request.data
          if body = render_template("slack/request_appointment", payload)
            Stellar::Slack.message(body)
          end
          success({ success: true }.to_json)
        else
          puts "No payload."
        end
      end
    end
  end
end
