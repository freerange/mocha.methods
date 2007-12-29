def perform_side_effects
  @side_effects.each { |side_effect| side_effect.perform }
end
