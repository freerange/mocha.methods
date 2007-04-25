def ==(parameter)
  @matchers.all? { |matcher| matcher == parameter }
end
