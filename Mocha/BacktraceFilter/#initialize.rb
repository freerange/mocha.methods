def initialize(lib_directory = LIB_DIRECTORY)
  @path_pattern = Regexp.new(lib_directory)
end
