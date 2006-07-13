	def super_method_missing(symbol, *arguments, &block)
	  raise NoMethodError
  end
