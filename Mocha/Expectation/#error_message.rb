def error_message(expected_count, actual_count)
  "#{method_signature} - expected calls: #{expected_count.mocha_inspect}, actual calls: #{actual_count}"
end
