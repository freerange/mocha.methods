def needs_verifying?
  self != self.class.at_least(0)
end
