def define_new_method
  object.metaclass.class_eval "def #{method}(*args, &block); mocha.method_missing(:#{method}, *args, &block); end"
end
