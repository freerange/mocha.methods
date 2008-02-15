def ==(object)
  object.is_a?(Mocha::Cardinality) && (object.required == required) && (object.maximum == maximum)
end
