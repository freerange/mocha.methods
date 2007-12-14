def expects(method_name_or_hash, backtrace = nil)
  if method_name_or_hash.is_a?(Hash) then
    method_name_or_hash.each do |method_name, return_value|
      ensure_method_not_already_defined(method_name)
      @expectations.add(Expectation.new(self, method_name, backtrace).returns(return_value))
    end
  else
    ensure_method_not_already_defined(method_name_or_hash)
    @expectations.add(Expectation.new(self, method_name_or_hash, backtrace))
  end
end
