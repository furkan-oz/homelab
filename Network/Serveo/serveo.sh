ip_address=""

ssh_connection() {
  ssh -R 3330:"$ip_address":25565 \
      -R 3331:"$ip_address":25565 \
      -R 3332:"$ip_address":25565 \
      -R 3333:"$ip_address":25565 \
      -R 3334:"$ip_address":26900 \
      -R 3335:"$ip_address":26900 \
      -R 3336:"$ip_address":26900 \
      -R 3337:"$ip_address":26900 \
      -R 3338:"$ip_address":26900 \
      -R 3339:"$ip_address":26900 \
      -R 3340:"$ip_address":26900 serveo.net
}

while true; do
  ssh_connection
  SSH_EXIT_CODE=$?

  if [ $SSH_EXIT_CODE -ne 0 ]; then
    echo "$(date): SSH connection failed with exit code $SSH_EXIT_CODE. Retrying in 60 seconds..." >> /var/log/serveo.log
    sleep 60
  else
    break
  fi
done