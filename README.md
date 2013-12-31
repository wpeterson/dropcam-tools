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
 * 
 
`capture_screenshot`
    capture_screenshot saves a jpg screenshot from a public Dropcam identified by UUID.

      Usage: capture_screenshot [options] [UUID]
        -u, --uuid [UUID]                Camera UUID
        -f, --filename [NAME]            Screenshot File Name
        -d, --directory [DIR]            Screenshot File Directory
        -h, --help                       Show this message
