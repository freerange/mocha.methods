def unique_mocks
  stubba_methods.inject({}) { |mocks, method| mocks[method.mock.__id__] = method.mock; mocks }.values
end
