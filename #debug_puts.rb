def debug_puts(message)
  $stderr.puts(message) if $mocha_options['debug']
end
