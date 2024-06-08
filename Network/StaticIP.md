# Network Settings

1. Open network file

   ```sh
   ls /etc/netplan/
   ```

2. Open config.yml file

   ```sh
   vi /etc/netplan/50-cloud-init.yaml
   ```

3. Change like `50-cloud-init.yaml` file for static ip

4. Apply the settings using the `netplan` command.

   ```sh
   sudo netplan apply
   ```

**Note:** This settings for ubuntu server

### More

[Ubuntu Network Docs](https://ubuntu.com/server/docs/configuring-networks)
