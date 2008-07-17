def on_stubbing(object, method)
  method = RUBY_VERSION < '1.9' ? method.to_s : method.to_sym
  unless Mocha::Configuration.allow?(:stubbing_non_existent_method)
    unless object.method_exists?(method, include_public_methods = true)
      on_stubbing_non_existent_method(object, method)
    end
  end
  unless Mocha::Configuration.allow?(:stubbing_non_public_method)
    if object.method_exists?(method, include_public_methods = false)
      on_stubbing_non_public_method(object, method)
    end
  end
  unless Mocha::Configuration.allow?(:stubbing_method_on_non_mock_object)
    on_stubbing_method_on_non_mock_object(object, method)
  end
end
