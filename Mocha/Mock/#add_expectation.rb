def add_expectation(expectation)
  expectations << expectation
  method_name = expectation.method_name
  self.__metaclass__.send(:undef_method, method_name) if self.__metaclass__.method_defined?(method_name)
  expectation
end
