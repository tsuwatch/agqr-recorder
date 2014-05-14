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
          Chrono::Trigger.new(schedule) do
            Recorder.record
          end.run
        end
      end

      def stop
        thread.kill
      end

      def schedule
        program.schedule
      end

      def length
        program.length
      end

    end
  end
end
