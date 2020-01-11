require "slack"

module Stellar
  module Slack

    extend self
    extend Templates

    @@default_url = uninitialized String
    @@default_channel = uninitialized String
    @@debug_url = uninitialized String
    @@debug_channel = uninitialized String

    def Slack.templated_message(payload, template : String, channel = Slack::DEFAULT_CHANNEL)
      ::Slack::Message.new(render_template("slack/#{template}", payload), channel: channel)
        .send_to_hook(Slack::DEFAULT_URL)
    end
  
    if Artillery::SECRETS["slack"]["default"]?
      if Artillery::SECRETS["slack"]["default"]["url"]?
        @@default_url = Artillery::SECRETS["slack"]["default"]["url"].to_s
      else
        raise "No default Slack webhook URL" #de TODO: Use actual Error classes
      end

      if Artillery::SECRETS["slack"]["default"]["url"]?
        @@default_channel = Artillery::SECRETS["slack"]["default"]["channel"].to_s
      else
        raise "No default Slack channel" #de TODO: Use actual Error classes
      end

      @@debug_url = if Artillery::SECRETS["slack"]["debug"]["url"]?
        Artillery::SECRETS["slack"]["debug"]["url"].to_s
      else
        @@default_url
      end

      @@debug_channel = if Artillery::SECRETS["slack"]["debug"]["channel"]?
        Artillery::SECRETS["slack"]["debug"]["channel"].to_s
      else
        @@default_channel
      end
    end

    DEFAULT_URL = @@default_url.to_s
    DEFAULT_CHANNEL = @@default_channel.to_s
    DEBUG_URL = @@debug_url.to_s
    DEBUG_CHANNEL = @@debug_channel.to_s

    def message(message : String, channel = DEFAULT_CHANNEL)
      ::Slack::Message.new(message, channel: channel)
        .send_to_hook(DEFAULT_URL)
    end

    def debug(message : String, channel = DEBUG_CHANNEL)
      ::Slack::Message.new(message, channel: channel)
        .send_to_hook(DEBUG_URL)
    end

    def exception(tag, ex)
      debug(":bomb: *Exception* [ `#{tag}` ] #{typeof(ex)}\n*Message:* #{ex.message}\n*Backtrace:* #{ex.backtrace}")
    end

  end
end