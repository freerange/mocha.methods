def allowed_any_number_of_times?
  required == 0 && infinite?(maximum)
end
