require 'erb'
module ReVIEW
  class Template
    def self.load(filename, mode = nil)
      self.new(filename, mode)
    end

    def initialize(filename = nil, mode = nil)
      if filename
        content = File.read(filename)
        @erb = ERB.new(content, nil, mode)
      end
    end

    def result(bind_data = nil)
      @erb.result(bind_data)
    end
  end
end
