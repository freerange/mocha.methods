def eql?(other)
  return false unless (other.class == self.class)
  (stubbee == other.stubbee) and (method == other.method)
end
