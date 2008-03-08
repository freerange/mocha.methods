def restore_original_method
  if method_exists?(hidden_method)
    begin
      stubbee.class_eval("alias_method :#{method}, :#{hidden_method}; remove_method :#{hidden_method}", __FILE__, __LINE__)
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
