def returns(*values)
  @return_values += ReturnValues.build(*values)
  self
end
