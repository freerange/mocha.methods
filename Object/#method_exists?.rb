def method_exists?(symbol)
  respond_to?(symbol, include_private_methods = true)
end
