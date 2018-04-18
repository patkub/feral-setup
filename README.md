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
| ffmpeg          | Install ffmpeg           |
| speedtest-cli   | Install speedtest-cli		 |

### Bash Script

Installs [h5ai](https://larsjung.de/h5ai/), symlinks rtorrent data, and copies nginx configs.

Copy `feral-setup` directory to `~/` and run:

```bash
cd ~/feral-setup
chmod +x setup.sh
./setup.sh
```
