def hide_original_method
  if method_exists?(method)
    begin
      @original_method = stubbee._method(method)
      @original_visibility = :public
      if stubbee.__metaclass__.protected_instance_methods.include?(method)
        @original_visibility = :protected
      elsif stubbee.__metaclass__.private_instance_methods.include?(method)
        @original_visibility = :private
      end
      if @original_method && @original_method.owner == stubbee.__metaclass__
        stubbee.__metaclass__.send(:remove_method, method)
      end
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
