Measure your working time on windows
===========================

Measure your working time on windows since the last login. Written in Ruby and runs under cygwin. [Read my blog entry for workingtime.rb as well.](http://www.jensjaeger.com/2009/10/measure-your-working-time-on-windows/)

Installation
============

	Install cygwin with ruby
	
	In your cygwin bash:
    mkdir -p ~/tools
    cd ~/tools
    git clone git://http://github.com/jensjaeger/workingtime.git "wt"
	echo "alias wt='~/tools/wt/workingtime.rb'" >> ~/.bashrc
	restart your bash
    
Usage
=====

	Just type: "wt" in your cygwin bash.

Known issues
============

The script is based on the windows command systeminfo. Systeminfo returns values in the language of the operating system. So this works only with a german windows. Replace "Systembetriebszeit" with whatever your systeminfo command returns for the uptime.

Credit
======

This script was created by [Jens Jäger](http://www.jensjaeger.com/ueber-jens-jaeger/)

License
=======

[MIT](http://www.opensource.org/licenses/mit-license.php)