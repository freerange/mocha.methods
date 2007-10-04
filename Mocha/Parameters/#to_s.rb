def to_s
  text = @parameters.mocha_inspect
  text = text.gsub(/^\[|\]$/, '')
  text = text.gsub(/^\{|\}$/, '') if @parameters.length == 1
  "(#{text})"
end
