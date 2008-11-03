def respond_to?(symbol, include_private = false)
  if @responder then
    if @responder.method(:respond_to?).arity > 1
      @responder.respond_to?(symbol, include_private)
    else
      @responder.respond_to?(symbol)
    end
  else
    @expectations.matches_method?(symbol)
  end
end
