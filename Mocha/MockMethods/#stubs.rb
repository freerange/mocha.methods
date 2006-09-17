def stubs(method_names, backtrace = nil)
  method_names = method_names.is_a?(Hash) ? method_names : { method_names => nil }
  method_names.each do |method_name, return_value|
    expectations << Stub.new(self, method_name, backtrace).returns(return_value)
  end
  expectations.last
end
