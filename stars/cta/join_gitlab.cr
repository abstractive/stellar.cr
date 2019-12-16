module Stellar
  module CTA
    class JoinGitLab < Star
      vector :post, "/cta/join/gitlab"
      def post
        if @payload
          slack_templated_message("cta_join_gitlab")
          sendgrid_host_notice("cta_join_gitlab", "A request to join our GitLab workspace arrived.")
          sendgrid_guest_notice("cta_join_gitlab", "Thank you for asking to join our GitLab workspace.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
