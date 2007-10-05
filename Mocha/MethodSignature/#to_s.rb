def to_s
  "#{@mock.mocha_inspect}.#{@method_name}#{parameter_signature}"
end
