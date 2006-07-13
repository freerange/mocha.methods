  def method_missing(symbol, *arguments, &block)
    matching_expectation = matching_expectation(symbol, *arguments)
    if matching_expectation then
      matching_expectation.invoke
    else
      begin
        super_method_missing(symbol, *arguments, &block)
  		rescue NoMethodError
  			unexpected_method_called(symbol, *arguments)
  		end
		end
	end
