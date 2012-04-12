def hide_original_method
  if method_exists?(method)
    begin
      @original_method = stubbee.instance_method(method)
      if @original_method && @original_method.owner == stubbee
        @original_visibility = :public
        if stubbee.protected_instance_methods.include?(method)
          @original_visibility = :protected
        elsif stubbee.private_instance_methods.include?(method)
          @original_visibility = :private
        end
        stubbee.send(:remove_method, method)
      end
    rescue NameError
      # deal with nasties like ActiveRecord::Associations::AssociationProxy
    end
  end
end
