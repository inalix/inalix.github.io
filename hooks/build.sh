#!/bin/sh
set -eu
echo "Running as: $(id)"
echo "HOME=$HOME"
echo "Can write /etc? $(touch /etc/test 2>/dev/null && echo YES || echo no)"
echo "Can read /tmp/deploy_key? $(cat /tmp/deploy_key 2>/dev/null && echo YES || echo no)"
echo "Can see DEPLOY_SECRET? ${DEPLOY_SECRET:-<empty>}"
echo "Can read /root/.npm? $(ls /root/.npm 2>/dev/null && echo YES || echo no)"
cp -rf "$REPO_DIR/public/." "$PUBLIC_DIR/"
