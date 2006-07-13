def verify_all
  mochas.each_value { |mocha| mocha.verify_all }
end
