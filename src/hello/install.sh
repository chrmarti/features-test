#!/bin/sh

set -e

echo "Activating feature 'hello'"

GREETING=${GREETING:-undefined}
echo "The provided greeting is: $GREETING"

tee /usr/local/bin/hello > /dev/null \
<< EOF
#!/bin/sh
RED='\033[0;91m'
NC='\033[0m' # No Color
echo "\${RED}${GREETING}, \$(whoami)!\${NC} (hello 1.2.0)"
EOF

chmod +x /usr/local/bin/hello