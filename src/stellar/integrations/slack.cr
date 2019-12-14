require "slack"

module Stellar
  module Slack

    @@default_url = uninitialized YAML::Any
    @@default_channel = uninitialized YAML::Any
    @@debug_url = uninitialized YAML::Any
    @@debug_channel = uninitialized YAML::Any
  
    if Artillery::SECRETS["slack"]["default"]?
      if Artillery::SECRETS["slack"]["default"]["url"]?
        @@default_url = Artillery::SECRETS["slack"]["default"]["url"]
      else
        raise "No default Slack webhook URL" #de TODO: Use actual Error classes
      end

      if Artillery::SECRETS["slack"]["default"]["url"]?
        @@default_channel = Artillery::SECRETS["slack"]["default"]["channel"]
      else
        raise "No default Slack channel" #de TODO: Use actual Error classes
      end

      @@debug_url = if Artillery::SECRETS["slack"]["debug"]["url"]?
        Artillery::SECRETS["slack"]["debug"]["url"]
      else
        @@default_url
      end

      @@debug_channel = if Artillery::SECRETS["slack"]["debug"]["url"]?
        Artillery::SECRETS["slack"]["debug"]["channel"]
      else
        @@default_channel
      end
    end

    SLACK_DEFAULT_URL = @@default_url.to_s
    SLACK_DEFAULT_CHANNEL = @@default_channel.to_s
    SLACK_DEBUG_URL = @@debug_url.to_s
    SLACK_DEBUG_CHANNEL = @@debug_channel.to_s

    def self.message(message : String, channel = SLACK_DEFAULT_CHANNEL)
      ::Slack::Message.new(message, channel: SLACK_DEFAULT_CHANNEL).send_to_hook(SLACK_DEFAULT_URL)
      nil
    end

    def self.debug(message : String, channel = SLACK_DEBUG_CHANNEL)
      if DEBUG
        ::Slack::Message.new(message, channel: SLACK_DEBUG_CHANNEL).send_to_hook(SLACK_DEBUG_URL)
      end
      nil
    end

    def self.exception(tag, ex)
      debug(":bomb: *Exception* [ `#{tag}` ] #{typeof(ex)}\n*Message:* #{ex.message}\n*Backtrace:* #{ex.backtrace}")
    end

  end
end