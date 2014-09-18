# ==Class: awscli::deps::redhat
#
# This module manages awscli dependencies for redhat $::osfamily.
#
class awscli::deps::redhat {
  if ! $::operatingsystem in ['Amazon', 'Fedora'] {
    include ::epel
    Package { require => Class['epel'] }
  }
}
