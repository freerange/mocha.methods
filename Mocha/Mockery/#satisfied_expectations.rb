def satisfied_expectations
  expectations.select { |e| e.verified? }
end
