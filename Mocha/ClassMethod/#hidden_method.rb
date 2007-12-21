def hidden_method
  method_name = method.to_s.gsub(/\W/) { |s| "_substituted_character_#{s[0].respond_to?(:ord) ? s[0].ord : s[0]}_" }
  "__stubba__#{method_name}__stubba__"
end  
