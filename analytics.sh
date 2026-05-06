dnf install -y python3.12 python3.12-pip python3.12-devel gcc
useradd -r -s /bin/false appuser

mkdir -p /app
cp analytics-service.service /etc/systemd/system/analystics-service.service

curl -L -o /tmp/analytics-service.tar.gz https://raw.githubusercontent.com/raghudevopsb88/wealth-project/main/artifacts/analytics-service.tar.gz
cd /app
tar xzf /tmp/analytics-service.tar.gz

cd /app
pip3.12 install --no-cache-dir .
chown -R appuser:appuser /app
chmod o-rwx /app -R

