def mocha_inspect
  @__mock_name ? "#<Mock:#{@__mock_name}>" : mocha_inspect_before_hijacked_by_named_mocks
end
