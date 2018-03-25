# Feral Setup

> Ansible playbook for setting up Feral server.

### Usage:

```sh
ansible-playbook feral-setup.yml --extra-vars "feral_server=[server] feral_username=[username]" --tags "tag1[,tag2...]"
```

### Available tags

| Tag  					  | Description		           |
| --------------- | ------------------------ |
| setup  				  | Initial setup            |
| restart-script  | Get Feral restart script |
| rclone          | Install rclone           |
| speedtest-cli   | Install speedtest-cli		 |

