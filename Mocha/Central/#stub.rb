def stub(method)
  unless stubba_methods.detect { |m| m.matches?(method) }
    method.stub 
    stubba_methods.push(method)
  end
end
