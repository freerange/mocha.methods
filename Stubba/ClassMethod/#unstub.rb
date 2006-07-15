def unstub
  remove_new_method
  restore_original_method
  object.reset_mocha
end
