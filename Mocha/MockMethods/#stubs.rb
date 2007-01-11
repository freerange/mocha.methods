def stubs(method_names, backtrace = nil)
  method_names = method_names.is_a?(Hash) ? method_names : { method_names => nil }
  method_names.each do |method_name, return_value|
    expectations << Stub.new(self, method_name, backtrace).returns(return_value)
    self.__metaclass__.send(:undef_method, method_name) if self.__metaclass__.method_defined?(method_name)
  end
  expectations.last
end
