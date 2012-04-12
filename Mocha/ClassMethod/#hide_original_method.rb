def hide_original_method
  if method_exists?(method)
    begin
      @original_method = stubbee.method(method)
      if @original_method && @original_method.owner == stubbee.__metaclass__
        @original_visibility = :public
        if stubbee.__metaclass__.protected_instance_methods.include?(method)
          @original_visibility = :protected
        elsif stubbee.__metaclass__.private_instance_methods.include?(method)
          @original_visibility = :private
        end
        stubbee.__metaclass__.send(:remove_method, method)
      end
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
