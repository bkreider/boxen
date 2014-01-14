define projects::virtual ($user = 'ContinuumIO') {

  boxen::project { $title:
    source        => "git@github.com:${useri}/${title}.git",
  }
}

