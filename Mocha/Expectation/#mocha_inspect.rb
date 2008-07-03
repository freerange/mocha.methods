def mocha_inspect
  message = "#{@cardinality.mocha_inspect}, "
  if @invocation_count > 0
    message << "already invoked #{@invocation_count} time"
    message << "s" if @invocation_count > 1
  else
    message << "not yet invoked"
  end
  message << ": "
  message << method_signature
  message << "; #{@ordering_constraints.map { |oc| oc.mocha_inspect }.join("; ")}" unless @ordering_constraints.empty?
  message
end
