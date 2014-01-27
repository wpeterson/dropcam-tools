dropcam-tools
=============

This is a set of Ruby classes and command line tools for working with Dropcam webcams.

WARNING
-------
These tools use the internal, un-supported APIs so there is no guarentee they will continue to work.  USE AT YOUR OWN RISK.  Please don't bother anyone, especially at Dropcam if they stop working.  However, feel free to lobby for a set of public, supported APIs.


Tools
-----
The following command line tools are available:

 * `capture_screenshot` - given a Dropcam UUID, save a screenshot to a file
 * `combine_timelapse` - combine screenshot images together into time-lapse movie
 
`capture_screenshot`
    capture_screenshot saves a jpg screenshot from a public Dropcam identified by UUID.

      Usage: capture_screenshot [options] [UUID]
        -u, --uuid [UUID]                Camera UUID
        -f, --filename [NAME]            Screenshot File Name
        -d, --directory [DIR]            Screenshot File Directory
        -x, --[no-]date-dirs             User 'year/date' directories
        -h, --help                       Show this message

`combine_timelapse`
    combine_timelapse combines a series of images into a timelapse video, via ffmpeg

      Usage: combine_timelapse [*.jpg]
        -p, --pattern [PATTERN]          Filename Glob Pattern (ie: *.jpg)
        -n, --frames [FRAMES]            Timelapse Frames per Second (fps)
        -o, --outfile [FILE]             Output video file
        -h, --help                       Show this message
