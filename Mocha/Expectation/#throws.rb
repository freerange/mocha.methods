def throws(tag, object = nil)
  @return_values += ReturnValues.new(Thrower.new(tag, object))
  self
end
