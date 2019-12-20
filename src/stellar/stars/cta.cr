module Stellar
  module CTA
    def sendgrid_host_notice(template, subject)
      analyze_sendgrid_response SendGrid.templated_message({
        subject: subject,
        from: host_email,
        to: [ host_email ],
        template_remote: "notify_host",
        template_local: "sendgrid/host/#{template}",
        model: @payload
      })
    end

    def sendgrid_guest_notice(template, subject)
      analyze_sendgrid_response SendGrid.templated_message({
        subject: subject,
        from: host_email,
        to: [ guest_email ],
        template_remote: "notify_guest",
        template_local: "sendgrid/guest/#{template}",
        model: @payload
      })
    end

    def analyze_sendgrid_response(response)
      case response.status_code
      when 200
        #de Success
      when 401
        Slack.debug(":warning: We exceeded our `SendGrid` API usage for today.")
      when 429
        Slack.debug(":warning: We overwhelmed the `SendGrid` API rate limiter.")
      else
        Slack.debug(":warning: Unanticipated `SendGrid` API error: #{response.status_code}")
      end
    end

    def slack_templated_message(template : String, channel = Slack::DEFAULT_CHANNEL)
      ::Slack::Message.new(render_template("slack/#{template}", @payload), channel: channel)
        .send_to_hook(Slack::DEFAULT_URL)
    end

    def host_email
      {
        name: "#{PRESENCE["name"]}",
        address: "#{PRESENCE["email"]}"
      }
    end

    def guest_email
      {
        name: guest_full_name,
        address: "#{@payload["EmailAddress"]}"
      }
    end

    def guest_full_name
      name = ""
      name += "#{@payload["NameFirst"]} "
      if !(middle = "#{@payload["NameMiddle"]} ").empty?
        name += middle
      end
      name += "#{@payload["NameLast"]}"
    end
  end
end