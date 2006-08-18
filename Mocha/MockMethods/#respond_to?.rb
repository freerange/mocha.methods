  	def respond_to?(symbol)
  	  expectations.any? { |expectation| expectation.method_name == symbol }
	  end
