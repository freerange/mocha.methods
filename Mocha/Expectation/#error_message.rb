def error_message(cardinality, invocation_count)
  "#{method_signature} - expected calls: #{cardinality.mocha_inspect}, actual calls: #{invocation_count}"
end
