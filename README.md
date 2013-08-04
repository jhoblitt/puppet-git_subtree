Puppet git_subtree Module
=========================

[![Build Status](https://travis-ci.org/jhoblitt/puppet-git_subtree.png)](https://travis-ci.org/jhoblitt/puppet-git_subtree)

Description
-----------

Install the git-subtree script for versions of `git < 1.7.11`.  Later versions
of `git` include this functionality.  Since subtree support is implemented as a
shell script, it's trivial to install a copy of this script from recent
releases on older `git` installations.  This is known to work with at least
`git >= 1.7`.

At the time of this writing, EPEL/6 is shipping git 1.7.1 and EPEL/5 is
shipping git 1.7.4.1 .

Examples
--------

    include git_subtree

    class{ 'git_subtree': }

Support
-------

Please log tickets and issues at [github](https://github.com/jhoblitt/puppet-git_subtree/issues)

Copyright
---------

Copyright (C) 2012-2013 Joshua Hoblitt <jhoblitt@cpan.org>

