def expects(method_name_or_hash, backtrace = nil)
  iterator = ArgumentIterator.new(method_name_or_hash)
  iterator.each { |*args|
    method_name = args.shift
    ensure_method_not_already_defined(method_name)
    expectation = Expectation.new(self, method_name, backtrace)
    expectation.returns(args.shift) if args.length > 0
    @expectations.add(expectation)
  }
end
