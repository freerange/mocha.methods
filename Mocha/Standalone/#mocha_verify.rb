def mocha_verify(&block)
  verify_mocks(&block)
  verify_stubs(&block)
end
