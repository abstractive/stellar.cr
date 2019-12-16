module Artillery
  @@presence = if @@yaml["presence"]?
    @@yaml["presence"]
  else
    YAML.parse("")
  end
  PRESENCE = @@presence
end