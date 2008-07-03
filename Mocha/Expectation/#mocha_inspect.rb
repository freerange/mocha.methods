def mocha_inspect
  message = "#{@cardinality.mocha_inspect}, "
  message << case @invocation_count
    when 0: "not yet invoked"
    when 1: "already invoked once"
    when 2: "already invoked twice"
    else "already invoked #{@invocation_count} times"
  end
  message << ": "
  message << method_signature
  message << "; #{@ordering_constraints.map { |oc| oc.mocha_inspect }.join("; ")}" unless @ordering_constraints.empty?
  message
end
