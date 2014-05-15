require "chrono"

module Agqr
  class Recorder
    class Job

      attr_reader :program, :thread

      def initialize(program)
        @program = Program.new(program)
      end

      def start
        @thread = Tread.new do
          Chrono::Trigger.new(program.schedule) do
            Recorder.record self
          end.run
        end
      end

      def stop
        thread.kill
      end

    end
  end
end
