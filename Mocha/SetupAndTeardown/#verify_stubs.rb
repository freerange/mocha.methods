def verify_stubs(assertion_counter = nil)
  $stubba.verify_all(assertion_counter) if $stubba
end
