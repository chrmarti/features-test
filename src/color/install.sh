#!/bin/sh

set -e

echo "Activating feature 'color'"
echo "The provided favorite color is: ${FAVORITE}"

tee /usr/local/bin/color > /dev/null \
<< EOF
#!/bin/sh
echo "my favorite color is ${FAVORITE} (hello 1.0.3)"
EOF

chmod +x /usr/local/bin/color