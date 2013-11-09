rb-download
===========

Fork of rb-download from http://redbutton.sourceforge.net/


==Building==

Run make. You will need gcc and libz. It should "just work".

==Use==

This fork simple downloads the carousel and exits after 3 mins of no new modules.

You will need a channels.conf file, or the program will not function.

Example channels.conf file line (dvb-t)
[code]ABC1:226500000:INVERSION_AUTO:BANDWIDTH_7_MHZ:FEC_3_4:FEC_1_2:QAM_64:TRANSMISSION_MODE_8K:GUARD_INTERVAL_1_16:HIERARCHY_NONE:512:650:737[/code]
The last field (737) is the service id to give rb download, it should tune and download the data. If you use the 'any' option, it should work with the first it finds.

e.g. [code]mkdir downloaded
rb-download -b downloaded 737[/code]

Use rb-download -h to see the full list of options (warning, some may not work).