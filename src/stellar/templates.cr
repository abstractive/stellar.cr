require "crinja"

module Stellar
  TEMPLATES = "#{CALLSITE}/config/templates"
  module Templates
    def render_template(file, payload)
      payload = {} of String => JSON::Any if payload.nil?
      model = {
        #de Values present in all templates.
        "PresenceName" => PRESENCE["name"].to_s,
      }.merge(payload).transform_values { |v|
        #de FIX: Doesn't handle hashes of hashes
        ( v = ( v.is_a?(JSON::Any) ) ? v.as_s : v ).empty? ? nil : v
      }
      env = Crinja.new
      env.loader = Crinja::Loader::FileSystemLoader.new(TEMPLATES)
      env.get_template("#{file}.jinja").render(model)
    rescue ex
      puts ex
      ""
    end
  end
end