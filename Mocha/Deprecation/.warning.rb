def warning(message)
  @messages << message
  $stderr.puts "Mocha deprecation warning: #{message}" unless mode == :disabled
  $stderr.puts caller.join("\n  ") if mode == :debug
end
