def with_rbenv(command)
  %{export PATH="$HOME/.rbenv/bin:$PATH"; eval "$(rbenv init -)"; #{command}}
end
