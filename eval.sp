Docker.create('centos').exec:  eval(os => CentOS){ say Pkg<curl>.installed };
Docker.create('debian').exec:  eval(os => Debian){ say Pkg<curl>.installed };
