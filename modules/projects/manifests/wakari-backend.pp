class projects::wakari-backend {


  boxen::project { 'wakari-backend':
    dotenv        => false,
    elasticsearch => false,
    mysql         => false,
    nginx         => false,
    redis         => false,
    source        => 'git@github.com:ContinuumIO/wakari-backend.git'
  }
}

