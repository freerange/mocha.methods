def self.included(mod)
  MonkeyPatcher.apply(mod, RunMethodPatch)
end
