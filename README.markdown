                                   _                       
     _ __ _   _ _ __   ___ ___   __| | ___ _ __ _   _ _ __  
    | '__| | | | '_ \ / __/ _ \ / _` |/ _ \ '__| | | | '_ \ 
    | |  | |_| | | | | (_| (_) | (_| |  __/ |  | |_| | | | |
    |_|   \__,_|_| |_|\___\___/ \__,_|\___|_|   \__,_|_| |_|

                           ( the gem )

RunCodeRun Gem
==============

Hook up [RunCodeRun](http://runcoderun.com) builds from your command line.  

Install:

    gem install runcoderun
    
Usage:

    cd [your-runcoderun-enabled-project]
    runcoderun [command] [options]
      or
    rcr [command] [options]

Right now we just support open.  This opens up your project homepage on RunCodeRun in your default browser.  It is smart enough to make a best guess at the correct owner and project name from your git config.

Try it out:
    
    $ git clone git://github.com/floehopper/mocha.git
    $ cd mocha
    $ rcr open            # opens http://runcoderun.com/floehopper/mocha in your default browser
    $ runcoderun open     # if you like to type more

## TODOs

lots and lots - patches welcome!

* project status
* build status
* rebuild
* grabbing latest build output

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for your change.
* Push and verify the build runs on RunCodeRun.  
  Check out the mainline build [here](http://runcoderun.com/rsanheim/runcoderun-gem)
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but
   bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2009 Rob Sanheim. See LICENSE for details.
