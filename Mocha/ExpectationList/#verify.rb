def verify(&block)
  @expectations.each { |expectation| expectation.verify(&block) }
end
