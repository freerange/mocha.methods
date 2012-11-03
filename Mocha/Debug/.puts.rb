def self.puts(message)
  $stderr.puts(message) if OPTIONS['debug']
end
