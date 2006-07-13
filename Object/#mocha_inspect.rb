def mocha_inspect
  inspect =~ /#</ ? "#<#{self.class}: #{self.object_id}>" : inspect
end
