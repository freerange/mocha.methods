def hidden_method
  "__stubba__#{method.to_s.sub('!', '_exclamation_mark').sub('?', '_question_mark')}__stubba__"
end  
