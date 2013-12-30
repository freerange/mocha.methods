def mocks
  object, mocks = @object, []
  while object do
    mocks << object.mocha
    object = object.is_a?(Class) ? object.superclass : nil
  end
  mocks
end
