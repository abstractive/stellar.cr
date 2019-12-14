require "crinja"

module Artillery
  STELLAR_TEMPLATES = "#{CALLSITE}/config/templates"
  abstract class Shot
    def render_template(file, model)
      model = {
        "PresenceName" => STELLAR_PRESENCE["name"].to_s,
      }.merge(model).transform_values { |v|
        ( v = ( v.is_a?(JSON::Any) ) ? v.as_s : v ).empty? ? nil : v
      }
      env = Crinja.new
      env.loader = Crinja::Loader::FileSystemLoader.new(STELLAR_TEMPLATES)
      env.get_template("#{file}.jinja").render(model)
    rescue ex
      puts ex
    end
  end
  
  @@presence = if @@yaml["presence"]?
    @@yaml["presence"]
  else
    YAML.parse("")
  end
  STELLAR_PRESENCE = @@presence
end