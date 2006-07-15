def define_new_method
  object.class_eval "def #{method}(*args, &block); self.class.any_instance.mocha.method_missing(:#{method}, *args, &block); end"
end
