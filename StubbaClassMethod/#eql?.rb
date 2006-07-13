def eql?(other)
  return false unless (other.class == self.class)
  (object == other.object) and (method == other.method)
end
