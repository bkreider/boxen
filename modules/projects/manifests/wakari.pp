class projects::wakari {

  boxen::project { 'wakari':
    dotenv        => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    source        => 'git@github.com:ContinuumIO/wakari.git'
  }
}

