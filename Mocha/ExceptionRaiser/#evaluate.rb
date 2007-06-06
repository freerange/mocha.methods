def evaluate
  raise @exception, @exception.to_s if @exception == Interrupt
  raise @exception, @message if @message
  raise @exception
end
