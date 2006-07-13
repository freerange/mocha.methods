def initialize(*arguments)
  @mocked = arguments.shift unless arguments.first.is_a?(Hash)
  @mocked ||= always_responds
  expectations = arguments.shift || {}
  expectations.each do |method_name, result|
    expects(method_name).returns(result)
  end
end
