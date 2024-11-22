apt install -y fail2ban git avahi-daemon ufw

ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow 8333/tcp
ufw allow 9735/tcp

# Enable the firewall
yes | ufw enable

#Install BTCPayServer
cd # ensure we are in root home
git clone https://github.com/btcpayserver/btcpayserver-docker
cd btcpayserver-docker


export REVERSEPROXY_DEFAULT_HOST="$BTCPAY_HOST"
export NBITCOIN_NETWORK="mainnet"
export BTCPAYGEN_CRYPTO1="btc"
export BTCPAYGEN_LIGHTNING="clightning"
export BTCPAYGEN_ADDITIONAL_FRAGMENTS="opt-save-storage-xxs;opt-add-configurator;opt-more-memory;"
export BTCPAYGEN_EXCLUDE_FRAGMENTS="opt-add-tor;nginx-https"
export BTCPAY_ENABLE_SSH=true
. ./btcpay-setup.sh -i
