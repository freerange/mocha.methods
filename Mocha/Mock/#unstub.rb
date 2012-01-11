def unstub(method_name)
  expectations = @expectations.to_a.select { |e| e.matches_method?(method_name) }
  expectations.each { |e|
    @expectations.remove(e)
  }
end
