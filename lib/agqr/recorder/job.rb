require "chrono"

module Agqr
  module Recorder
    class Job

      attr_reader :program, :thread

      def initialize(program)
        @program = Program.new
      end

      def start()
        @thread = Tread.new do
          Chrono::Trigger.new(schedule) do
            # 録画
          end.run
        end
      end

      def stop
        thread.kill
      end

      
    end
  end
end
