def used?(invocation_count)
  (invocation_count > 0) || (maximum == 0)
end
