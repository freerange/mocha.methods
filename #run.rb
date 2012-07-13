def run(gemfile)
  ENV["BUNDLE_GEMFILE"] = gemfile
  ENV["MOCHA_OPTIONS"] = "debug"
  reset_bundle
  execute(
    with_rbenv("bundle install --gemfile=#{gemfile}"),
    with_rbenv("bundle exec rake test")
  )
end
