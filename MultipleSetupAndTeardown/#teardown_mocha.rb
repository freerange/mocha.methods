def teardown_mocha
  self.class.class_eval { teardown_methods }.reverse.each { |symbol| send(symbol) }
end
