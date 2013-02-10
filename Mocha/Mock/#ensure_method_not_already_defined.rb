def ensure_method_not_already_defined(method_name)
  self.__metaclass__.send(:undef_method, method_name) if self.__metaclass__.method_defined?(method_name) || self.__metaclass__.private_method_defined?(method_name)
end
