def unstub
  remove_new_method
  restore_original_method
  object.any_instance.reset_mocha
end
