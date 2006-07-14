def verify(*method_names)
  for_verification = method_names.empty? ? expectations : expectations_matching(method_names)
  for_verification.each { |expectation| expectation.verify }
end
