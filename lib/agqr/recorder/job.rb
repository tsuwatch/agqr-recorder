require "chrono"
require "agqr/program"

module Agqr
  class Recorder
    class Job

      attr_reader :recorder, :program, :thread

      def initialize(recorder)
        @recorder = recorder
      end

      def build(program)
        @program = Program.new(program)
      end

      def start
        @thread = Thread.new do
          Chrono::Trigger.new(program.schedule) do
            recorder.record self
          end.run
        end
      end

      def stop
        thread.kill
      end

    end
  end
end
