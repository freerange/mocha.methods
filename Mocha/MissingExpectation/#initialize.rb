def initialize(method_name, mock, expectations = [])
  super(method_name)
  @mock, @expectations = mock, expectations
  @invoked = true
end
