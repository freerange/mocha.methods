def evaluate
  if @value.__is_a__(Proc) then
    message = 'use of Expectation#returns with instance of Proc - see Expectation#returns RDoc for alternatives'
    Deprecation.warning(message)
    @value.call
  else
    @value
  end
end
