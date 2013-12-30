def all_expectations
  @receiver.mocks.inject(ExpectationList.new) { |e, m| e + m.__expectations__ }
end
