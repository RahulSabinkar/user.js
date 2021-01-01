/* The code below is from RahulSabinkar's user-overrides.js file. If you're reading this,
 * I have no clue how you got here, but this code isn't anything special. I just made this
 * so I won't have to change my user-override.js again and again.

/* 0801: disable location bar using search
 * Searching using Location Bar. If you use privacy respective search engines, then
 * you have no reason to disable this. But if you use Google, or maybe you're a boomer
 * who uses bing or yahoo, then please just comment this out.*/
 user_pref("keyword.enabled", true);

 /* 0901: disable saving passwords
 * [NOTE] This does not clear any passwords already saved
 * [SETTING] Privacy & Security>Logins and Passwords>Ask to save logins and passwords for websites
 * I use a password manager, so I won't need this. ***/
 user_pref("signon.rememberSignons", false);

/* 2803: set what items to clear on shutdown (if 2802 is true)
 * When you close your browser, things like cookies, history, login sessions will be
 * lost and deleted. This is good for privacy but since I use temporary containers to get
 * of this anyway, and use normal containers for Google sites, Shopping, GitHub, I will
 * need this for the containers to effectively fulfill it's purpose.*/
 user_pref("privacy.clearOnShutdown.cookies", false);
 user_pref("privacy.clearOnShutdown.history", false); // Browsing & Download History
 user_pref("privacy.clearOnShutdown.sessions", false); // Active Logins

/* 2508: disable hardware acceleration to reduce graphics fingerprinting [SETUP-HARDEN]
 * This feature is disabled, but if you want some performance improvement for video
 * streaming or if you are a power user who uses many tabs, then you can uncomment this
 * to gain that at the expense of some privacy.*/
 //user_pref("gfx.direct2d.disabled", true); // [WINDOWS]
 //user_pref("layers.acceleration.disabled", true);

/* 4504: disable RFP letterboxing. When this is true, you basically get a box inside the
 * browser which visually looks bad to me. I know this is in place to resist fingerprinting
 * regarding my monitor's screen resolution, but I don't take fingerprinting that seriously.
 * You can comment this out if you want. */
 user_pref("privacy.resistFingerprinting.letterboxing.dimensions", "1386x766");

// 4617: enforce prefers-color-scheme as light [FF67+]
// Remember to open customization, and select dark theme there too.
// If you actually prefer light theme, then I don't know what's wrong with you but we can't be friends :(
   // 0=light, 1=dark : This overrides your OS value
user_pref("ui.systemUsesDarkTheme", 1); // [HIDDEN PREF]

// ghacks user.js has all the right privacy respecting preferences and I believe it's best
// to keep the user-overrides.js file to a minimum
