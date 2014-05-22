require "agqr/recorder/job"
require "agqr/recorder/version"

module Agqr
  class Recorder

    attr_accessor :jobs
    attr_reader :attributes

    def initialize(attributes)
      @attributes = attributes
      @jobs = []
    end

    def load_programs
      programs.each do |program|
        reserve(program)
      end
      exec
    end

    def reserve(program)
      job = Job.new(self)
      job.build(program)
      jobs << job
      job.start
    end

    def record(job)
      cmd = "#{rtmpdump} -r #{agqr_stream_url} --live -B #{job.program.length} -o #{save_path}/#{job.program.title}_#{Time.now.strftime('%Y%m%d').gsub(' ', '')}.flv"
      system cmd
    end

    def rtmpdump
      attributes["rtmpdump"]
    end

    def programs
      attributes["programs"]
    end

    def save_path
      attributes["save_path"]
    end

    def agqr_stream_url
      attributes["agqr_stream_url"]
    end

    private

    def exec
      loop do
      end
    end

  end
end
