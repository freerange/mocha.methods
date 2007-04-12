def evaluate
  if @message then
    raise @exception, @message
  else
    raise @exception
  end
end
