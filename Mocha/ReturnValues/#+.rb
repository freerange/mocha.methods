def +(other)
  self.class.new(*(@values + other.values))
end
