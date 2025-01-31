documentation_complete: true

title: 'DRAFT - DISA STIG for Oracle Linux 7'

description: |-
    This is a *draft* profile for STIG for Oracle Linux 7.

selections:
    - var_screensaver_lock_delay=5_seconds
    - var_accounts_fail_delay=4
    - var_password_pam_minlen=15
    - var_password_pam_ocredit=1
    - var_password_pam_lcredit=1
    - var_password_pam_ucredit=1
    - var_password_pam_unix_remember=5
    - var_password_pam_maxclassrepeat=4
    - var_password_pam_difok=8
    - var_password_pam_dcredit=1
    - var_password_pam_minclass=4
    - var_accounts_minimum_age_login_defs=1
    - var_password_pam_maxrepeat=3
    - var_accounts_maximum_age_login_defs=60
    - var_account_disable_post_pw_expiration=0
    - var_auditd_action_mail_acct=root
    - var_auditd_space_left_action=email
    - var_password_pam_retry=3
    - var_accounts_max_concurrent_login_sessions=10
    - inactivity_timeout_value=15_minutes
    - sshd_idle_timeout_value=10_minutes
    - sshd_required=yes
    - account_disable_post_pw_expiration
    - accounts_logon_fail_delay
    - accounts_max_concurrent_login_sessions
    - accounts_maximum_age_login_defs
    - accounts_minimum_age_login_defs
    - accounts_no_uid_except_zero
    - accounts_password_pam_dcredit
    - accounts_password_pam_difok
    - accounts_password_pam_lcredit
    - accounts_password_pam_maxclassrepeat
    - accounts_password_pam_maxrepeat
    - accounts_password_pam_minclass
    - accounts_password_pam_minlen
    - accounts_password_pam_ocredit
    - accounts_password_pam_retry
    - accounts_password_pam_ucredit
    - accounts_password_pam_unix_remember
    - accounts_passwords_pam_faillock_deny
    - accounts_passwords_pam_faillock_unlock_time
    - accounts_umask_etc_login_defs
    - aide_periodic_cron_checking
    - auditd_data_retention_action_mail_acct
    - auditd_data_retention_space_left_action
    - audit_rules_dac_modification_chmod
    - audit_rules_dac_modification_chown
    - audit_rules_dac_modification_fchmod
    - audit_rules_dac_modification_fchmodat
    - audit_rules_dac_modification_fchown
    - audit_rules_dac_modification_fchownat
    - audit_rules_dac_modification_fremovexattr
    - audit_rules_dac_modification_fsetxattr
    - audit_rules_dac_modification_lchown
    - audit_rules_dac_modification_lremovexattr
    - audit_rules_dac_modification_lsetxattr
    - audit_rules_dac_modification_removexattr
    - audit_rules_dac_modification_setxattr
    - audit_rules_file_deletion_events_rename
    - audit_rules_file_deletion_events_renameat
    - audit_rules_file_deletion_events_rmdir
    - audit_rules_file_deletion_events_unlink
    - audit_rules_file_deletion_events_unlinkat
    - audit_rules_kernel_module_loading_delete
    - audit_rules_kernel_module_loading_finit
    - audit_rules_kernel_module_loading_init
    - audit_rules_kernel_module_loading_insmod
    - audit_rules_kernel_module_loading_modprobe
    - audit_rules_kernel_module_loading_rmmod
    - audit_rules_login_events_faillock
    - audit_rules_login_events_lastlog
    - audit_rules_login_events_tallylog
    - audit_rules_media_export
    - audit_rules_privileged_commands
    - audit_rules_privileged_commands_chage
    - audit_rules_privileged_commands_chsh
    - audit_rules_privileged_commands_crontab
    - audit_rules_privileged_commands_gpasswd
    - audit_rules_privileged_commands_newgrp
    - audit_rules_privileged_commands_pam_timestamp_check
    - audit_rules_privileged_commands_passwd
    - audit_rules_privileged_commands_postdrop
    - audit_rules_privileged_commands_postqueue
    - audit_rules_privileged_commands_ssh_keysign
    - audit_rules_privileged_commands_su
    - audit_rules_privileged_commands_sudo
    - audit_rules_privileged_commands_sudoedit
    - audit_rules_privileged_commands_umount
    - audit_rules_privileged_commands_unix_chkpwd
    - audit_rules_privileged_commands_userhelper
    - audit_rules_sysadmin_actions
    - audit_rules_unsuccessful_file_modification_creat
    - audit_rules_unsuccessful_file_modification_ftruncate
    - audit_rules_unsuccessful_file_modification_open
    - audit_rules_unsuccessful_file_modification_openat
    - audit_rules_unsuccessful_file_modification_open_by_handle_at
    - audit_rules_unsuccessful_file_modification_truncate
    - audit_rules_usergroup_modification_group
    - audit_rules_usergroup_modification_gshadow
    - audit_rules_usergroup_modification_opasswd
    - audit_rules_usergroup_modification_passwd
    - audit_rules_usergroup_modification_shadow
    - dconf_db_up_to_date
    - dconf_gnome_screensaver_idle_activation_enabled
    - dconf_gnome_screensaver_idle_activation_locked
    - dconf_gnome_screensaver_idle_delay
    - dconf_gnome_screensaver_lock_delay
    - dconf_gnome_screensaver_lock_enabled
    - dconf_gnome_screensaver_lock_locked
    - dconf_gnome_screensaver_user_locks
    - disable_host_auth
    - display_login_attempts
    - ensure_gpgcheck_globally_activated
    - file_permissions_sshd_private_key
    - file_permissions_sshd_pub_key
    - gid_passwd_group_same
    - no_empty_passwords
    - package_aide_installed
    - package_openssh-server_installed
    - package_ypserv_removed
    - partition_for_home
    - partition_for_tmp
    - partition_for_var
    - partition_for_var_log_audit
    - rpm_verify_hashes
    - rpm_verify_permissions
    - rsyslog_remote_loghost
    - security_patches_up_to_date
    - service_auditd_enabled
    - service_autofs_disabled
    - set_password_hashing_algorithm_libuserconf
    - set_password_hashing_algorithm_logindefs
    - set_password_hashing_algorithm_systemauth
    - smartcard_auth
    - sshd_allow_only_protocol2
    - sshd_disable_compression
    - sshd_disable_empty_passwords
    - sshd_disable_gssapi_auth
    - sshd_disable_kerb_auth
    - sshd_disable_rhosts
    - sshd_disable_rhosts_rsa
    - sshd_disable_root_login
    - sshd_disable_user_known_hosts
    - sshd_do_not_permit_user_env
    - sshd_enable_strictmodes
    - sshd_enable_warning_banner
    - sshd_enable_x11_forwarding
    - sshd_print_last_log
    - sshd_set_idle_timeout
    - sshd_set_keepalive
    - sshd_use_approved_ciphers
    - sshd_use_approved_macs
    - sshd_use_priv_separation
    - sudo_remove_no_authenticate
    - sudo_remove_nopasswd
    - sysctl_kernel_randomize_va_space
