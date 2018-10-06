# GCP Auto-Shutdown

If you have instances on GCP that you don't need over night, you could either mark
the preemtible (with a slight risk of premature shutdown) or use the attached files

On Debian:
* Install at 
* Copy the end-of-day shutdown script to a location of your choice (e.g. /root/at/)
* Copy the rc.local file to /etc/ and make it executable
* Enable and start the rc-local service in systemd

[Christian Frank](http://www.chfrank.net/)
