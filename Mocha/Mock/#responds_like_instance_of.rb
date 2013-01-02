def responds_like_instance_of(responder_class)
  responds_like(responder_class.allocate)
end
