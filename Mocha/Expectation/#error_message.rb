def error_message(expected_count, actual_count)
  "#{@mock.mocha_inspect}.#{method_signature} - expected calls: #{expected_count.mocha_inspect}, actual calls: #{actual_count}"
end
