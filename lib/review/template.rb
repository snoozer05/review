require 'erb'
module ReVIEW
  class Template
    def self.load(filename)
      self.new(filename)
    end

    def initialize(filename = nil, mode = nil)
      if filename
        content = File.read(filename)
        @erb = ERB.new(content, mode)
      end
    end

    def result(bind_data = nil)
      @erb.result(bind_data)
    end
  end
end
