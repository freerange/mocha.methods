def warning(message)
  @messages << message
  $stderr.puts "\n*** Mocha deprecation warning: #{message}\n\n" unless mode == :disabled
  $stderr.puts caller.join("\n  ") if mode == :debug
end
