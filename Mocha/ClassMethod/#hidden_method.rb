def hidden_method
  if RUBY_VERSION < '1.9'
    method_name = method.to_s.gsub(/\W/) { |s| "_substituted_character_#{s[0]}_" }
  else
    method_name = method.to_s.gsub(/\W/) { |s| "_substituted_character_#{s.ord}_" }
  end
  "__stubba__#{method_name}__stubba__".to_sym
end  
