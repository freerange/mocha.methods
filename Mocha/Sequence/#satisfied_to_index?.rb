def satisfied_to_index?(index)
  @expectations[0...index].all? { |expectation| expectation.satisfied? }
end
