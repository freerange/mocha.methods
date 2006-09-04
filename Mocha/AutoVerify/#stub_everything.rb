def stub_everything(*args)
  name, expectations = name_and_expectations_from_args(args)
  build_mock_with_expectations(:stub_everything, expectations, name)
end
