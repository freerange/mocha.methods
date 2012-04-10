def any_instance
  if frozen?
    raise StubbingError.new("can't stub method on frozen object: #{mocha_inspect}.any_instance", caller)
  end
  @any_instance ||= AnyInstance.new(self)
end
