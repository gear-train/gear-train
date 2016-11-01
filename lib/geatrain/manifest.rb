module Geartrain
  class Manifest
    def initialize(path)
      @path = path
    end

    def load_file
      if File.exist?(@path)
        return if @mtime == File.mtime(@path)
        @mtime = File.mtime(@path)
        @data = JSON.parse(File.read(@path))
      else
        @data = {}
      end
    end

    def path_for_asset(path)
      load_file

      @data[path] ? @data[path]['url'] : path
    end
  end
end
