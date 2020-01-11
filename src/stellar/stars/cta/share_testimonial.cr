module Stellar
  module CTA
    class ShareTestimonial < Star
      vector :post, "/cta/share/testimonial"
      def post
        if !@payload.nil?
          slack_templated_message("cta_share_testimonial")
          sendgrid_host_notice("cta_share_testimonial", "A new testimonial arrived.")
          sendgrid_guest_notice("cta_share_testimonial", "Thank you for sharing your testimonial.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
