def to_s
  if @parameters then
    text = @parameters.mocha_inspect
    text = text.gsub(/^\[|\]$/, '')
    text = text.gsub(/^\{|\}$/, '') if @parameters.length == 1
    "(#{text})"
  else
    ""
  end
end
