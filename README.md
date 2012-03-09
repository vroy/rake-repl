# Rake REPL

Interactive prompt for Rake.

## Install

    gem install rake-repl

### Recommended

If you have rlwrap installed you'll get the full benefits of readline: history, reverse searches, etc.

Custom prompt/colors support via the colorize gem:

    gem install colorize
    export RAKE_REPL_PROMPT="[red:rake][blue: >>][ ]"

## Usage

Simply replace `rake` with `rake-repl`.

### The REPL

Example run against the test Rakefile included in the project.

    $ rake-repl 
    rake >> list
    coordinates[x,y]
    env:is:reset
    list

    rake >> coordinates[1,2]
    Draw pixel at [1,2]

    rake >> coordinates[1,2] env:is:reset
    Draw pixel at [1,2]
    ENV['STEP']: 0

    rake >> env:is:reset STEP=2
    ENV['STEP']: 2

    rake >> env:is:reset
    ENV['STEP']: 0

    rake >> exit
    Use Ctrl-D (i.e. EOF) to exit

## TODO

* Running -T does not work - for some reason, when the tasks aren't loaded with `rake`, the comments are not loaded properly.

## Credit

* Chris Wanstrath for a nice implementation of a [REPL](https://github.com/defunkt/repl) that I heavily based myself on.

## Author

Vincent Roy :: vince@vroy.ca
