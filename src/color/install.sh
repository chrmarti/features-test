#!/bin/sh

set -e

echo "Activating feature 'color'"
echo "The provided favorite color is: ${FAVORITE}"

tee /usr/local/bin/color > /dev/null \
<< EOF
#!/bin/sh
echo -e -n "my favorite color is ${FAVORITE}"
EOF

chmod +x /usr/local/bin/color