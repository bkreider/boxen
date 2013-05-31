# modules/continuum/manifests/environment.pp

class continuum::environment {
   include continuum::apps::mac
   #include projects::super-top-secret-project

   include anaconda
}

