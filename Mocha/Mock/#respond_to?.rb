  	def respond_to?(symbol)
	    if @responder then
	      @responder.respond_to?(symbol)
      else
    	  @expectations.any? { |expectation| expectation.method_name == symbol }
  	  end
	  end
