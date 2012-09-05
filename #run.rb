def run(gemfile, task = "test")
  ENV["BUNDLE_GEMFILE"] = gemfile
  ENV["MOCHA_OPTIONS"] = "debug"
  ENV["MOCHA_NO_DOCS"] = "true"
  reset_bundle
  execute(
    with_rbenv("bundle install --gemfile=#{gemfile}"),
    with_rbenv("bundle exec rake #{task}")
  )
end
