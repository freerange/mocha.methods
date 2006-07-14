def always_responds
  Class.new { def respond_to?(symbol); true; end }.new
end
