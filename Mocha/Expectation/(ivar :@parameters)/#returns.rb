def returns(*values)
  @return_value = (values.size > 1) ? lambda { values.shift } : @return_value = values.first
  self
end
