#!/bin/bash
# Generates config.js from Netlify environment variables at build time.
# Set these vars in: Netlify → Site → Site configuration → Environment variables

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

echo "config.js generated successfully"
