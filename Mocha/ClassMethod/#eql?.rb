def eql?(other)
  return false unless (other.class == self.class)
  (stubbee.object_id == other.stubbee.object_id) and (method == other.method)
end
