def name_and_expectations_from_args(args)
  name = args.first.is_a?(String) ? args.delete_at(0) : nil
  expectations = args.first || {}
  [name, expectations]
end
