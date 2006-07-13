def initialize(method_name, expectations = [])
  super(method_name)
  @expectations = expectations
  @invoked = true
end
