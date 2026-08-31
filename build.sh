#!/bin/bash
# Generates config.js from environment variables.
#
# Local dev:  bash build.sh          (loads .env automatically)
# Netlify:    runs automatically      (reads from Netlify env vars)

# Load .env if present (local development)
if [ -f .env ]; then
  export $(grep -v '^#' .env | grep -v '^$' | xargs)
fi

cat > config.js << EOF
var APP_CONFIG = {
  firebase: {
    apiKey:            "$FIREBASE_API_KEY",
    authDomain:        "$FIREBASE_AUTH_DOMAIN",
    projectId:         "$FIREBASE_PROJECT_ID",
    storageBucket:     "$FIREBASE_STORAGE_BUCKET",
    messagingSenderId: "$FIREBASE_MESSAGING_SENDER_ID",
    appId:             "$FIREBASE_APP_ID"
  },
  adminEmail: "$ADMIN_EMAIL",
  vapidKey:   "$VAPID_KEY"
};
EOF

echo "✓ config.js generated"
