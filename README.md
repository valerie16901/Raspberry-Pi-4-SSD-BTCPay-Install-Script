# Raspberry-Pi-4-SSD-BTCPay-Install-Script
A Script to install BTCPay on a SSD, no SD Card needed

## Instructions:

Loging to via ssh to your raspberry pi OS installation:

`ssh btcpay@btcpay.local`

Switch to root:

`sudo su -`

**REQUIRED**, Export your domain:

`export BTCPAY_ADDITIONAL_HOSTS="btcpay.YourDomain.com"`

Download and run the install script:

```
wget -O btcpayserver-install.sh https://raw.githubusercontent.com/valerie16901/Raspberry-Pi-4-SSD-BTCPay-Install-Script/main/install.sh
chmod +x install.sh
. install.sh
```
