def self.method_added(method)
  case method
  when :setup
    unless method_defined?(:setup_added)
      alias_method :setup_added, :setup
      define_method(:setup) do
        begin
          setup_new
        ensure
          setup_added
        end
      end
    end
  when :teardown
    unless method_defined?(:teardown_added)
      alias_method :teardown_added, :teardown
      define_method(:teardown) do
        begin
          teardown_added
        ensure
          teardown_new
        end
      end
    end
  end
end
