def hide_original_method
  if stubbee.singleton_methods(false).include?(method)
    super
  end
end
