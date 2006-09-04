def stub(*args)
  name, expectations = name_and_expectations_from_args(args)
  build_mock_with_expectations(:stubs, expectations, name)
end
