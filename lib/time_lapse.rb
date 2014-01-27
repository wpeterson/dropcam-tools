require 'time'
require 'fileutils'

class TimeLapse
  attr_accessor :pattern, :frames_per_sec, :outfile

  def initialize(options = {})
    @pattern        = options[:pattern]
    @frames_per_sec = options[:frames_per_sec]
    @outfile        = options[:outfile]
  end

  def full_outfile
    File.expand_path( @outfile )
  end

  def save!
    ffmpeg = "ffmpeg -f image2 -r #{ frames_per_sec }/1 -pattern_type glob -i '#{ pattern }' -vcodec libx264 #{ full_outfile }"

    dir_path = File.dirname(full_outfile)
    FileUtils.mkdir_p( dir_path ) unless File.exist?( dir_path )

    system(ffmpeg)
  end
end
