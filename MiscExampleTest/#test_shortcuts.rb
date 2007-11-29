def test_shortcuts
  object = stub(:method1 => :result1, :method2 => :result2)
  assert_equal :result1, object.method1
  assert_equal :result2, object.method2
end
