def restore_original_method
  if @original_method && @original_method.owner == stubbee.__metaclass__
    if RUBY_VERSION < '1.9'
      original_method = @original_method
      stubbee.__metaclass__.send(:define_method, method) do |*args, &block|
        original_method.call(*args, &block)
      end
    else
      stubbee.__metaclass__.send(:define_method, method, @original_method)
    end
    stubbee.__metaclass__.send(@original_visibility, method)
  end
end
