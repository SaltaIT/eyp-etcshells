define etcshells::addshell($shellname=$name) {

  concat::fragment{ "${shellname} etc shells":
    target  => '/etc/shells',
    content => "${shellname}\n",
    order   => '99',
  }

}
