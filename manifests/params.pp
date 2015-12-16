class etcshells::params {

  case $::osfamily
  {
    'redhat':
    {
      case $::operatingsystemrelease
      {
        /^6.*$/:
        {
          # /bin/sh
          # /bin/bash
          # /sbin/nologin
          # /bin/dash
          # /bin/tcsh
          # /bin/csh

          $default_shells = [
                              '/bin/sh',
                              '/bin/bash',
                              '/sbin/nologin',
                              '/bin/dash',
                              '/bin/tcsh',
                              '/bin/csh',
                            ]
        }
        default: { fail("Unsupported RHEL/CentOS version! - $::operatingsystemrelease")  }
      }
    }
    'Debian':
    {
      case $::operatingsystem
      {
        'Ubuntu':
        {
          case $::operatingsystemrelease
          {
            /^14.*$/:
            {
              #
              # # /etc/shells: valid login shells
              # /bin/sh
              # /bin/dash
              # /bin/bash
              # /bin/rbash
              # /usr/bin/tmux
              # /usr/bin/screen

              $default_shells = [ '/bin/sh', '/bin/dash', '/bin/bash',
                                  '/bin/rbash', '/usr/bin/tmux',
                                  '/usr/bin/screen' ]

            }
            default: { fail("Unsupported Ubuntu version! - $::operatingsystemrelease")  }
          }
        }
        'Debian': { fail("Unsupported")  }
        default: { fail("Unsupported Debian flavour!")  }
      }
    }
    default: { fail("Unsupported OS!")  }
  }
}
