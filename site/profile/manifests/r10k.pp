class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/tesks/control-repo',
  }
  class {'r10k::webhook::config': }
  class {'r10k::webhook':
    user    => 'root',
    group   => 'root',
    chatops => {
      service    => 'github',
      repo_owner => 'tesks',
      repo_name  => 'control-repo',
      secret     => 'your_webhook_secret',
    },
    r10k    => {
      prefix => 'your_r10k_prefix',
    },
  }
}
