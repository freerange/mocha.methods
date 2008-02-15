def error_message(cardinality, invocation_count)
  "#{method_signature} - #{cardinality.mocha_inspect}, actual calls: #{invocation_count}"
end
