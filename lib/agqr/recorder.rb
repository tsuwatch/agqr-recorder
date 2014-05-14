require "agqr/recorder/job"
require "agqr/recorder/version"

module Agqr
  class Recorder

    attr_reader :attributes

    def initialize(attributes)
      @attributes = attributes
    end

    def reserve
    end

    def jobs
    end

    def record
    end

  end
end
