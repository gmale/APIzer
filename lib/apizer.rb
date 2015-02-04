$LOAD_PATH << File.expand_path('../', __FILE__)

module Apizer
  autoload :CLI, 'apizer/cli'
  autoload :Auth, 'apizer/auth'
end
