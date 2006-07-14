def invoke
  @invoked += 1
  @return_value.is_a?(Proc) ? @return_value.call : @return_value
end
