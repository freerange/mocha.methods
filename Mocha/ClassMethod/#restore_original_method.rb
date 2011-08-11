def restore_original_method
  if method_exists?(hidden_method)
    begin
      stubbee.__metaclass__.send(:alias_method, method, hidden_method)
      stubbee.__metaclass__.send(:remove_method, hidden_method)
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
