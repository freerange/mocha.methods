def mocha_inspect
  "[#{collect { |member| member.mocha_inspect }.join(', ')}]"
end
