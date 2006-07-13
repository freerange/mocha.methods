def self.at_most(maximum_value)
  Range.new(-infinite, maximum_value, false)
end
