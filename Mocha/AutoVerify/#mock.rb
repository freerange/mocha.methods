def mock(expected_methods = {})
  build_mock_with_expectations(:expects, expected_methods)
end
