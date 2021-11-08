### Sat Nov  6 17:18:18 MDT 2021
Inital deployment security gateway is finished:
- Network configuration is completed for security gateway
- Created local DNS records for bare metal hosts.
- Installed Ansible and generated a new SSH keypair
- Played around with setting up Woke-on-LAN for hosts, no success.

Next steps:

[] Install Ubuntu 20.04 on bare metal hosts
[] Configure network settings
[] Copy SSH keys
[] Configure UFW to only allow access from SG.
[] Configure SSHD to only key based authentication.
[] Set up Glances for remote system monitoring

### Sun Nov  7 16:59:44 MST 2021
Didn't accomplish much today. Need to rewire KVM switch.

### Sun Nov  7 21:53:48 MST 2021
Added in Ansible playbook to install Docker on the security gateway
