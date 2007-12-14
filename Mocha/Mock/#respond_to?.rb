def respond_to?(symbol)
  if @responder then
    @responder.respond_to?(symbol)
  else
    @expectations.matches_method?(symbol)
  end
end
