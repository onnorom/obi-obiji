class obiji::profiles::base {
  $ctrlscrt = $facts['automatascript']
  case $::osfamily {
    'Windows' : {
      class { 'chocolatey':
      }
      contain chocolatey

      class { 'obijiautomata": servicetype=>'scheduler', ctrlscript=>$ctrlscrt }
    }
    /(RedHat|Debian|CentOS)/ : {
      class { 'obijiautomata": servicetype=>'service', ctrlscript=>$ctrlscrt }
      contain obijiautomata
    }
    'Darwin' : {
      class { 'obijiautomata": servicetype=>'cron', ctrlscript=>$ctrlscrt }
    }
    default: {
      notify { 'obijiautomata': message=>"$::osfamily is unsupported" }
    }
  }
}
