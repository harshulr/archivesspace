module ASConstants

  @VERSION

  module Repository

    def self.GLOBAL
      '_archivesspace'
    end

  end


  def self.VERSION
    return @VERSION if @VERSION

    begin
      version = java.lang.ClassLoader.getSystemClassLoader.getResourceAsStream("ARCHIVESSPACE_VERSION")
      if version
        @VERSION = version.to_io.read.strip
      else # some servlet containers have a hard time finding the resource...
        @VERSION = "V1.1.4-dev02"
      end
    rescue
      @VERSION = "NO VERSION"
    end
  end

end
