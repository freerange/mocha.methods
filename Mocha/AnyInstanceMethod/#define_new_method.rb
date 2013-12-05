def define_new_method
  stubbee.class_eval(<<-CODE, __FILE__, __LINE__ + 1)
    def #{method}(*args, &block)
      self.class.any_instance.mocha.method_missing(:#{method}, *args, &block)
    end
  CODE
end
