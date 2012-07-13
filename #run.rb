def run(gemfile)
  ENV["BUNDLE_GEMFILE"] = gemfile
  ENV["MOCHA_OPTIONS"] = "debug"
  reset_bundle
  execute(
    "bundle install --gemfile=#{gemfile}",
    "bundle exec rake test"
  )
end
