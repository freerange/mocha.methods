def stub(method)
  unless stubba_methods.include?(method)
    method.stub 
    stubba_methods.push(method)
  end
end
