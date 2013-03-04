# == Class: git_subtree
#
# Install the git-subtree script for versions of git < 1.7.11
#
# === Authors
#
# Joshua Hoblitt <jhoblitt@cpan.org>
#
# === Copyright
#
# Copyright (C) 2012-2013 Joshua Hoblitt
#

class git_subtree {
  $subtree_source =
    'https://raw.github.com/git/git/master/contrib/subtree/git-subtree.sh'
  $subtree_path   = '/usr/libexec/git-core/git-subtree'

  wget::fetch { 'git-subtree':
    source      => $subtree_source,
    destination => $subtree_path,
    timeout     => 30,
  }

  file { $subtree_path:
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    require => Wget::Fetch['git-subtree'],
  }
}
