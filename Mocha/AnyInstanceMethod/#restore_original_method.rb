def restore_original_method
  if method_exists?(hidden_method)
    begin
      stubbee.send(:alias_method, method, hidden_method)
      stubbee.send(:remove_method, hidden_method)
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
