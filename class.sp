class User {
    method create( :$home-dir ) on {
        # ${...} does a shell command
        Alpine ${ adduser -D  ("-h$_" if $home-dir) $self }
        GNU    ${ useradd ("-d$_" if $home-dir) -N $self  }
    }

    method delete?  on {
        RHEL ${ userdel $self *>X }
        Any  ${ deluser $self *>X }
    }

    method exists?  ${ id -u $self *>X }
}


my $user = User<llfourn>;

$user.create();

say "$user exists: { $user.exists.gist }";

$user.delete();

say "$user exists: { $user.exists.gist }";
