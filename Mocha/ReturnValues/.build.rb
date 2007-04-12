def self.build(*values)
  new(*values.map { |value| SingleReturnValue.new(value) })
end
