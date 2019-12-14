module Stellar
  module CTA
    class ShareTestimonial < Star
      vector :post, "/cta/share/testimonial"
      def post
        if payload = @request.data
          if body = render_template("slack/share_testimonial", payload)
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
