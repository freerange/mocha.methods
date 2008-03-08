def hide_original_method
  if method_exists?(method)
    begin
      stubbee.class_eval("alias_method :#{hidden_method}, :#{method}", __FILE__, __LINE__)
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
