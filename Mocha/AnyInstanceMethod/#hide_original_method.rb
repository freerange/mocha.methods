def hide_original_method
  if method_exists?(method)
    begin
      stubbee.send(:alias_method, hidden_method, method)
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
