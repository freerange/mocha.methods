def expectations
  mocks.map { |mock| mock.__expectations__.to_a }.flatten
end
