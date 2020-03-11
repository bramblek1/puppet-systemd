# Reload the systemctl daemon
#
# @api public
define systemd::systemctl::daemon_reload {
  exec { "systemctl-daemon-reload for ${title}":
    command     => 'systemctl daemon-reload',
    refreshonly => true,
    path        => $facts['path'],
  }
}
