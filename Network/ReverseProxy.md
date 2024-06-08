# Reverse Proxy

1. Open Cloudflare One Dash

   [Cloudflare One Dash](https://one.dash.cloudflare.com/)

2. Go to tunnels page

   `Networks > Tunnels`

3. Click `Create a tunnel` button for create tunnel

4. Select `Cloudflared`

5. Write your tunnel name

6. Select `Docker` and copy and paste the command into a terminal window to connect your tunnel to Cloudflare. (you need install docker for this step)

7. Add public hostname

| Subdomain            | Domain             | Path                 | Type                 | URL                          |
| :------------------- | :----------------- | :------------------- | :------------------- | :--------------------------- |
| Write your subdomain | Select your domain | `Not need this area` | Select protocol type | write your local ip and port |

**Note:** Enable No TLS Verify for HTTPS protocol

`Additional application settings > TLS > No TLS Verify> `

### More:

- [Cloudflare Tunnel Docs](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/) <br/>
- [Open/Closed Source Tunneling Services](https://github.com/anderspitman/awesome-tunneling)
