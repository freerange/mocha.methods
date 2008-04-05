def on_stubbing(object, symbol)
  on_stubbing_non_existent_method(object, symbol) unless object.method_exists?(symbol)
  on_stubbing_method_on_non_mock_object(object, symbol)
end
