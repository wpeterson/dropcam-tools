require 'time'

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
    return File.absolute_path( File.join(@directory, @filename) ) if @directory
    @filename
  end

  def save!

    system("curl -L --silent -o '#{ local_file_path }' '#{ api_url }'")
  end
end
