def logger
  @logger ||= Logger.new($stderr)
end
