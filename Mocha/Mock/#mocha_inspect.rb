def mocha_inspect
  @mock_name ? "#<Mock:#{@mock_name}>" : "#<Mock:0x#{__id__.to_s(16)}>"
end
