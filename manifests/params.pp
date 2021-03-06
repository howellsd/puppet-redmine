# Class: redmine::params
#
# This class defines default parameters used by the main module class redmine
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to redmine class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class redmine::params {

  ### Application related parameters

  $db_type = 'mysql'
  $db_adapter = 'mysql2'
  $db_name = 'redmine'
  $db_user = 'redmine'
  $db_password = 'redmine'
  $db_host = 'localhost'
  $db_charset = 'utf8'
  $db_collate = 'utf8_general_ci'
  $webserver_type = undef
  $vhost_template = ''
  $server_name = $::fqdn
  $ip_addr = '*'
  $serveraliases = undef
  $ruby_version = '1.9.3-p547'
  $passenger_version = '4.0.48'
  $owner = 'redmine'
  $group = 'redmine'
  $install_dir = '/home/redmine'
  $install_deps = true
  $email_delivery = 'sendmail'
  $smtp_domain = 'example.net'
  $smtp_server = 'localhost'
  $plugins = undef
  $template_passenger = 'redmine/passenger.erb'
  $ssl = true
  $ssl_protocol = 'All -SSLv2 -SSLv3'
  $ssl_cipher_suite = 'ALL:!ADH:RC4+RSA:+HIGH:+MEDIUM:-LOW:-SSLv2:-EXP'
  $ssl_cert = "/etc/ssl/certs/${::fqdn}.crt"
  $ssl_cert_key = "/etc/ssl/private/${::fqdn}.key"
  $ssl_ca_cert = '/etc/ssl/certs/startssl.ca.pem'
  $ssl_ca_cert_chain = '/etc/ssl/certs/sub.class1.server.startssl.ca.pem'
  $ssl_cert_src = "puppet:///modules/site/certs/${::fqdn}.crt"
  $ssl_cert_key_src = "puppet:///modules/site/certs/${::fqdn}.key"
  $ssl_ca_cert_src = 'puppet:///modules/site/certs/startssl-ca.pem'
  $ssl_ca_cert_chain_src = 'puppet:///modules/site/certs/startssl-sub.class1.server.ca.pem'

  $install_url_base = 'http://www.redmine.org/releases'

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_dir = $::operatingsystem ? {
    default => "${install_dir}/redmine/config",
  }

  $config_file = $::operatingsystem ? {
    default => "${install_dir}/redmine/config/configuration.yml",
  }

  $db_config_file = $::operatingsystem ? {
    default => "${install_dir}/redmine/config/database.yml",
  }

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = 'redmine/configuration.yml.erb'
  $db_template = 'redmine/database.yml.erb'
  $options = ''
  $version = 'present'
  $absent = false
  $audit_only = false
  $noops = false
}
