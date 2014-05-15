require 'yaml'
require "agqr/recorder"

module Agqr
  class << self
    
    def run(argv)
      if argv[0] == "--help"
        puts "Usage: #{File.basename(__FILE__)} [config_file=config.yml]"
        exit
      end

      config = YAML.load_file(argv[0] || "config.yml")
      recorder = Agqr::Recorder.new(config)
      config["programs"].each do |program|
        recorder.reserve(program)
      end

    end
  end
end
