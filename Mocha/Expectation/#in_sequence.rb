def in_sequence(*sequences)
  sequences.each { |sequence| add_in_sequence_ordering_constraint(sequence) }
  self
end
