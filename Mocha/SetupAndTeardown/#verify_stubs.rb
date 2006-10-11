def verify_stubs
  $stubba.verify_all { yield if block_given? } if $stubba
end
