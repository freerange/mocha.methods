def self.build(*values)
  ReturnValues.new(*values.map { |value| SingleReturnValue.new(value) })
end
