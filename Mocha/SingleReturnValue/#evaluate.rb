def evaluate
  if @value.__is_a__(Proc) then
    @value.call
  else
    @value
  end
end
