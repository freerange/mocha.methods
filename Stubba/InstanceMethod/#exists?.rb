def exists?
  object.respond_to?(method)
end
