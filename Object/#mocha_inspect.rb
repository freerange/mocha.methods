def mocha_inspect
  inspect =~ /#</ ? "#<#{self.class}:0x#{self.object_id.to_s(16)}>" : inspect
end
