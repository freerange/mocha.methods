def self.const_missing(name)
  return super unless name == :Standalone
  require 'mocha/deprecation'
  Deprecation.warning "Mocha::Standalone has been renamed to Mocha::API"
  return API
end
