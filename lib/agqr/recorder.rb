require "agqr/recorder/job"
require "agqr/recorder/version"

module Agqr
  module Recorder

    class << self

      def setup
      end

      def reserve(program)
        Agqr::Recorder::Job.new(program).start
      end

      def jobs
      end

      def record
      end

    end

  end
end
