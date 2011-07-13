def hidden_method
  if RUBY_VERSION < '1.9'
    method_name = method.to_s.gsub(/\W/) { |s| "_substituted_character_#{s[0]}_" }
  else
    method_name = method.to_s.gsub(/\W/) { |s| "_substituted_character_#{s.ord}_" }
  end
  hidden_method = "__stubba__#{method_name}__stubba__"
  RUBY_VERSION < '1.9' ? hidden_method.to_s : hidden_method.to_sym
end
