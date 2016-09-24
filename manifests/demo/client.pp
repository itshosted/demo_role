#

class demo_role::demo::client {

  case $::osfamily {
    'RedHat': {
      include ::demo_profile::demo::client
    }
    default: {
      fail("OS ${::operatingsystem}${::operatingsystemrelease} is not supported!")
    }
  }
}
