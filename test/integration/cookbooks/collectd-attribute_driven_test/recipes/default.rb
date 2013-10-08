plugins = {
  "syslog" => {
    "config" => {
      "LogLevel" => "info"
    }
  },
  "logfile" => {
    "config" => {
      "LogLevel" => "info",
      "File" => "/var/log/collectd.log",
      "Timestamp" => true
    }
  },
  "processes" => {
    "config" => {
      "Process" => ["logrotate", "cron"]
    }
  },
  "load" => {},
  "swap" => {},
  "users" => {},
  "memory" => {},
  "entropy" => {}
}

node.override[:collectd][:plugins] = plugins

