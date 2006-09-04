def mock(*args)
  name, expectations = name_and_expectations_from_args(args)
  build_mock_with_expectations(:expects, expectations, name)
end
