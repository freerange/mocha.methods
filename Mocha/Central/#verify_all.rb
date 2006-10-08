def verify_all(&block)
  unique_mocks.each { |mock| mock.verify(&block) }
end
