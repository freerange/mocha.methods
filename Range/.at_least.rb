def self.at_least(minimum_value)
  Range.new(minimum_value, infinite)
end
