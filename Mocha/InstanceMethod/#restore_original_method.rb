def restore_original_method
  super if singleton_method?(hidden_method)
end
