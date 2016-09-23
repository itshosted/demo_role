#

class demo_role::demo::puppetmaster {

  case $::osfamily {
    'RedHat': {
      include ::demo_profile::demo::puppetmaster
    }
    default: {
      fail("OS ${::operatingsystem}${::operatingsystemrelease} is not supported!")
    }
  }
}
