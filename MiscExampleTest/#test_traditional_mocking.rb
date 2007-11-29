def test_traditional_mocking
  object = mock()
  object.expects(:expected_method).with(:p1, :p2).returns(:result)
  assert_equal :result, object.expected_method(:p1, :p2)
end
