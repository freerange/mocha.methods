def evaluate
  raise @exception, @exception.to_s if @exception.is_a?(Module) && @exception.ancestors.include?(Interrupt)
  raise @exception, @message if @message
  raise @exception
end
