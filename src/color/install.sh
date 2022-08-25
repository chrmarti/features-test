#!/bin/sh

set -e

echo "Activating feature 'color'"

echo "The provided favorite color is: ${FAVORITE}"

cat > /usr/local/bin/color \
<< EOF
#!/bin/sh
echo "my favorite color is ${FAVORITE} (color 12.34.567)"
EOF

chmod +x /usr/local/bin/color