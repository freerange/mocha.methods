def restore_original_method
  if stubbee.singleton_methods(false).include?(hidden_method)
    super
  end
end
