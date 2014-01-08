require 'time'
require 'fileutils'

class Screenshot
  attr_accessor :camera_uuid, :filename, :directory

  def initialize(options = {})
    @camera_uuid = options[:camera_uuid]
    @filename = options[:filename]
    @directory = options[:directory]
  end

  def api_url
    "https://nexusapi.dropcam.com/get_image?width=800&uuid=#{ @camera_uuid }"
  end

  def local_file_path
    return File.expand_path( File.join(@directory, @filename) ) if @directory
    @filename
  end

  def save!
    file_path = local_file_path
    dir_path = File.dirname(file_path)
    FileUtils.mkdir_p( dir_path ) unless File.exist?( dir_path )

    system("curl -L -f --compressed --silent -o '#{ file_path }' '#{ api_url }'")
  end
end
