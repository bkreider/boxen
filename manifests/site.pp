require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $luser,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::luser}"
  ]
}

File {
  group => 'staff',
  owner => $luser
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => Class['git']
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include dnsmasq
  include git
  include hub

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # default ruby versions
  include ruby::1_8_7
  include ruby::1_9_2
  include ruby::1_9_3

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }


   # continuum apps
   include continuum::environment
   
   # just pull down repo
   include projects::virtual

   projects::virtual{ 'ops': }
   projects::virtual{ 'internal': }
   projects::virtual{ 'puppet': }

   projects::virtual{ 'bokeh': }

   projects::virtual{ 'PDT': }

   projects::virtual{ 'wakari': }
   projects::virtual{ 'wakari-backend': }

   projects::virtual{ 'tty.js': }
   projects::virtual{ 'elFinder': }
   projects::virtual{ 'wakari-authentication-proxy': }
   projects::virtual{ 'wakari-deploy': }
   projects::virtual{ 'wakari-file-xfer-app': }
   projects::virtual{ 'wakari-frontend': }
   projects::virtual{ 'wakari-operations-center': }
   projects::virtual{ 'wakari-recipes': }
   projects::virtual{ 'wakari-workbench': }

   # Personalized settings -- should be moved to modules/people
   include osx::recovery_message { 'If this Mac is found, please call 617-233-8722': }
   include osx::dock::2d
   include osx::dock::autohide
   include osx::dock::clear_dock
   include osx::finder::unhide_library
   class { 'osx::dock::position': position => 'right'}
   class { 'osx::dock::icon_size': size => 18}

}
