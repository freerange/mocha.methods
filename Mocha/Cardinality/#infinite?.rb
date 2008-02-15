def infinite?(number)
  number.respond_to?(:infinite?) && number.infinite?
end
