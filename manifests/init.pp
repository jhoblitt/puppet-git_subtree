class git-subtree {
  $subtree_source = 'https://raw.github.com/git/git/master/contrib/subtree/git-subtree.sh'
  $subtree_path   = "/usr/libexec/git-core/$title"

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
