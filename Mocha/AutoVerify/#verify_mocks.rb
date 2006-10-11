def verify_mocks # :nodoc:
  mocks.each { |mock| mock.verify { yield if block_given? } }
end
