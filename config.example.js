// ============================================================
//  config.example.js  —  TEMPLATE. Commit this file.
//  To set up: copy this file to config.js and fill in your values.
//
//  $ cp config.example.js config.js
// ============================================================

var APP_CONFIG = {

  // Firebase project credentials
  // Get these from: Firebase Console → Project Settings → Your apps → SDK setup
  firebase: {
    apiKey:            "REPLACE_WITH_YOUR_API_KEY",
    authDomain:        "REPLACE_WITH_YOUR_PROJECT.firebaseapp.com",
    projectId:         "REPLACE_WITH_YOUR_PROJECT_ID",
    storageBucket:     "REPLACE_WITH_YOUR_PROJECT.appspot.com",
    messagingSenderId: "REPLACE_WITH_YOUR_MESSAGING_SENDER_ID",
    appId:             "REPLACE_WITH_YOUR_APP_ID"
  },

  // The Google account email that has admin access
  adminEmail: "your-email@gmail.com",

  // VAPID public key for browser push notifications
  // Get this from: Firebase Console → Project Settings → Cloud Messaging → Web Push certificates
  vapidKey: "REPLACE_WITH_YOUR_VAPID_KEY"

};
