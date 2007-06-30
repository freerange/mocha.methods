def respond_to?(symbol)
  if @responder then
    @responder.respond_to?(symbol)
  else
    @expectations.respond_to?(symbol)
  end
end
