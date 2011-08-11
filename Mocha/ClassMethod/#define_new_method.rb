def define_new_method
  stubbee.__metaclass__.class_eval(%{
    def #{method}(*args, &block)
      mocha.method_missing(:#{method}, *args, &block)
    end
  }, __FILE__, __LINE__)
end
