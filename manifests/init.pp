#
class etcshells($shells=$etcshells::params::default_shells)
  inherits etcshells::params {

  validate_array($shells)

  #
  concat { '/etc/shells':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  concat::fragment{ 'base etc shells':
    target  => '/etc/shells',
    content => template("${module_name}/etcshells.erb"),
    order   => '00',
  }


}
