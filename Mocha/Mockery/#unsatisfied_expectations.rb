def unsatisfied_expectations
  expectations.reject { |e| e.verified? }
end
