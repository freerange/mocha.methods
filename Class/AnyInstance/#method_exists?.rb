def method_exists?(symbol)
  (@stubba_object.public_instance_methods + @stubba_object.protected_instance_methods + @stubba_object.private_instance_methods).detect { |m| m.to_s == symbol.to_s }
end
