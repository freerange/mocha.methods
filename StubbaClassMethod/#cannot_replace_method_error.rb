def cannot_replace_method_error
  Test::Unit::AssertionFailedError.new("Cannot replace #{method} because it is not defined in #{object}.")
end
