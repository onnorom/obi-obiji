class obiji::roles::charlesriver {
    class { 'obiji::profiles::base': }
    class { 'obiji::profiles::charlesriver': require => Class['obiji::profiles::base'] }
}
