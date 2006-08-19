def unstub
  remove_new_method
  restore_original_method
  stubbee.reset_mocha
end
