def setup_mocha
  self.class.class_eval { setup_methods }.each { |symbol| send(symbol) }
end
