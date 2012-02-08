def unstub
  remove_new_method
  restore_original_method
  mock.unstub(method.to_sym)
  unless mock.any_expectations?
    reset_mocha
  end
end
