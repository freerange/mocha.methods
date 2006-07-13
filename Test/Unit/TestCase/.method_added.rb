def self.method_added(method)
  case method
  when :setup
    unless method_defined?(:setup_without_stubba)
      alias_method :setup_without_stubba, :setup
      define_method(:setup) do
        setup_post_stubba
        setup_without_stubba
      end
    end
  when :teardown
    unless method_defined?(:teardown_without_stubba)
      alias_method :teardown_without_stubba, :teardown
      define_method(:teardown) do
        teardown_without_stubba
        teardown_post_stubba
      end
    end
  end
end
