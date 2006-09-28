def hidden_method
  "__stubba__#{
    method.to_s.sub('!', '_exclamation_mark').
                sub('?', '_question_mark').
                sub('=', '_equals_sign')
  }__stubba__"
end  
