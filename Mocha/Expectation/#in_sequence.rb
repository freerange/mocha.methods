def in_sequence(*sequences)
  sequences.each { |sequence| sequence.constrain_as_next_in_sequence(self) }
  self
end
