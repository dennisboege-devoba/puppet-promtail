# @summary Creates a service defintion for promtail
#
# Creates a service defintion for promtail
#
# @api private
class promtail::service {
  case $facts['kernel'] {
    'Linux': {
      systemd::unit_file { 'promtail.service':
        content => epp('promtail/promtail.service.epp'),
        notify  => Service['promtail'],
      }

      service { 'promtail':
        ensure  => $promtail::service_ensure,
        enable  => $promtail::service_enable,
        require => Systemd::Unit_file['promtail.service'],
      }
    }
    default: { fail("${facts['kernel']} is not supported") }
  }
}
