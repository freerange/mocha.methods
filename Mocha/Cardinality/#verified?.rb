def verified?(invocation_count)
  (invocation_count >= @required) && (invocation_count <= @maximum)
end
