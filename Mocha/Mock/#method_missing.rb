  def method_missing(symbol, *arguments, &block)
    if @responder and not @responder.respond_to?(symbol)
      raise NoMethodError, "undefined method `#{symbol}' for #{self.mocha_inspect} which responds like #{@responder.mocha_inspect}"
    end
    matching_expectation = matching_expectation(symbol, *arguments)
    if matching_expectation then
      matching_expectation.invoke(&block)
    elsif stub_everything then
      return
    else
      begin
        super_method_missing(symbol, *arguments, &block)
  		rescue NoMethodError
  			unexpected_method_called(symbol, *arguments)
  		end
		end
	end
