module Agqr
  class Program

    attr_reader :title, :schedule, :length

    def initialize(program)
      @title = program["title"]
      @schedule = program["schedule"]
      @length = program["length"]
    end

  end
end
