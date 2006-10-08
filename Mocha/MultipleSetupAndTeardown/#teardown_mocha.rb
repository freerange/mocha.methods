def teardown_mocha
  stored_exception = nil
  self.class.class_eval { teardown_methods }.reverse.each do |symbol|
    begin
      send(symbol)
    rescue Exception => e
      stored_exception ||= e
    end
  end
  raise stored_exception if stored_exception
end
