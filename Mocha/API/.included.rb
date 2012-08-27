def self.included(mod)
  Object.send(:include, Mocha::ObjectMethods)
  Module.send(:include, Mocha::ModuleMethods)
  Class.send(:include, Mocha::ClassMethods)
end
