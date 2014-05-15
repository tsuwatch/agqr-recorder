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

    def reserve(program)
      jobs << Agqr::Recorder::Job.new(program)
    end

    def record(job)
      sysytem "#{rtmpdump} -r #{agqr_stream_url} --live -B #{job.program.length} -o #{save_path}/#{job.program.title}_#{Time.now.strftime('%Y%m%d')).gsub(' ', '')}"
    end

    def rtmpdump
      attributes["rtmpdump"]
    end

    def save_path
      attributes["save_path"]
    end

  end
end
