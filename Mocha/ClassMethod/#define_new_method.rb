def define_new_method
  stubbee.__metaclass__.class_eval(%{
    def #{method}(*args, &block)
      mocha.method_missing(:#{method}, *args, &block)
    end
  }, __FILE__, __LINE__)
  if @original_visibility
    Module.instance_method(@original_visibility).bind(stubbee.__metaclass__).call(method)
  end
end
