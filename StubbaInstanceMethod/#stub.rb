def stub
  raise cannot_replace_method_error unless exists?
  define_new_method
end
