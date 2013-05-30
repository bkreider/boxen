class projects::puppet {

    package { puppet-lint:  provider => gem }
    package { rspec-puppet: provider => gem }

  boxen::project { 'puppet':
    dotenv        => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    source        => 'git@github.com:ContinuumIO/puppet.git'
  }
}

