def mocha_inspect
  signature = matchers.mocha_inspect
  signature = signature.gsub(/^\[|\]$/, '')
  signature = signature.gsub(/^\{|\}$/, '') if matchers.length == 1
  "(#{signature})"
end
