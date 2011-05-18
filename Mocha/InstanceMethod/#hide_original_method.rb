def hide_original_method
  super if singleton_method?(method)
end
