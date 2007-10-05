def parameter_signature
  return "" unless @parameters
  signature = @parameters.mocha_inspect
  signature = signature.gsub(/^\[|\]$/, '')
  signature = signature.gsub(/^\{|\}$/, '') if @parameters.length == 1
  "(#{signature})"
end
