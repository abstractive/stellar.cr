require "sendgrid"

module Stellar
  module SendGrid
    API_URL = "https://api.sendgrid.com/v3/mail/send"

    @@client = uninitialized ::Sendgrid::Client
  
    if Artillery::SECRETS["sendgrid"]["apikey"]?
      if Artillery::SECRETS["sendgrid"]["apikey"]?
        @@client = ::Sendgrid::Client.new(API_URL, Artillery::SECRETS["sendgrid"]["apikey"].to_s)
      end
    end

    extend self
    extend Templates

    def templated_message(options : NamedTuple(
                          subject: String,
                          from: NamedTuple(name: String, address: String),
                          to: Array(NamedTuple(name: String, address: String)),
                          template_remote: String?,
                          template_local: String,
                          model: Hash(String, JSON::Any)
                        ))
      message = ::Sendgrid::Message.new
      message.from = ::Sendgrid::Address.new(email=options[:from][:address], name=options[:from][:name])
      options[:to].each { |to|
        message.to << ::Sendgrid::Address.new(email=to[:address], name=to[:name])
      }
      message.subject = options["subject"]
      message.content = ::Sendgrid::Content.new(
        render_template(options[:template_local], options[:model]),
        "text/html"
      )
      if options.has_key?(:template_remote) &&
        Artillery::SECRETS["sendgrid"].is_a?(YAML::Any) &&
        Artillery::SECRETS["sendgrid"]["templates"]? &&
        Artillery::SECRETS["sendgrid"]["templates"].is_a?(YAML::Any) &&
        Artillery::SECRETS["sendgrid"]["templates"][options[:template_remote]]?
        extra_fields = {} of String => ::Sendgrid::ExtraFieldsType
        extra_fields["template_id"] = "#{Artillery::SECRETS["sendgrid"]["templates"][options[:template_remote]]}"
        message.extra_fields.merge!(extra_fields)
      end
      @@client.send(message)
    end
  end
end
