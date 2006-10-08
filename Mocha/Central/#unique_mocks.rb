def unique_mocks
  stubba_methods.collect { |method| method.mock }.uniq
end
