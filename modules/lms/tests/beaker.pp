class{'lms'}
package{['zlib-devel','gcc-c++','libstdc++-devel','zlib','docker']:
  ensure => present,
  before => [Package['beaker'],Package['beaker-rspec']]
}
package{['beaker','beaker-rspec']:
  ensure   => present,
  provider => 'gem',
}

