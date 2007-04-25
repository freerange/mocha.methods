def ==(parameter)
  @matchers.any? { |matcher| matcher == parameter }
end
