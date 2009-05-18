def define_new_method
  stubbee.class_eval("def #{method}(*args, &block); self.class.any_instance.mocha.method_missing(:#{method}, *args, &block); end", __FILE__, __LINE__)
end
