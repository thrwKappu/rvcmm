# Config

Adding a new app is as easy as this:
```toml
[Some-App]
apkmirror-dlurl = "https://www.apkmirror.com/apk/inc/app" # download url for the app.
```

or:
```toml
[Some-App]
uptodown-dlurl = "https://app.en.uptodown.com/android" # uptodown url.
```

## If you'd like to get to know more about other options:

There exists an example below with all defaults and all the keys explicitly set.  
Almost all keys are optional and are assigned their default values if not set explicitly.  

```toml
[Some-App]
app-name = "SomeApp"                                      # if set, app name becomes SomeApp instead of Some-App. default is same as table name.
                                                          # this affects the release name and stuff like that
enabled = true                                            # whether to build the app. default: true
build-mode = "both"                                       # 'both', 'apk' or 'module'. default: apk
allow-alpha-version = false                               # allow downloading alpha versions from apkmirror. default: false
excluded-patches = "some-patch"                           # whitespace seperated list of patches to exclude. default: "" (empty)
included-patches = "patch-name"                           # whitespace seperated list of patches to include. default: "" (empty)
version = "auto"                                          # 'auto', 'latest' or a custom one e.g. '17.40.41'. default: auto
exclusive-patches = false                                 # exclude all patches by default. default: false
microg-patch = "microg-support"                           # name of the microg-patch if exists for the app. default: "" (empty)
apkmirror-dlurl = "https://www.apkmirror.com/apk/inc/app" # download url. if not set, uptodown dl url is used.
uptodown-dlurl = "https://spotify.en.uptodown.com/android"# uptodown url. if not set, apkmirror dl url is used. apkmirror is prioritized
module-prop-name = "ytrv-magisk"                          # explicit magisk module prop name. not explicitly needed to be set.
arch = "arm64-v8a"                                        # 'arm64-v8a', 'arm-v7a' or 'all'. 
                                                          # this option is sometimes needed to be able to download the apks from apkmirror and does not affect anything else. default: all
```

-------------------

removed apps
```toml
[[Twitter]
build-mode = "apk"
excluded-patches = "hide-views-stats"
version = "auto"
apkmirror-dlurl = "https://www.apkmirror.com/apk/twitter-inc/twitter/"

[Reddit]
build-mode = "apk"
version = "auto"
apkmirror-dlurl = "https://www.apkmirror.com/apk/redditinc/reddit/"

[Twitch]
build-mode = "apk"
version = "auto"
apkmirror-dlurl = "https://www.apkmirror.com/apk/twitch-interactive-inc/twitch/"
merge-integrations = true

[TikTok]
version = "auto"
apkmirror-dlurl = "https://www.apkmirror.com/apk/tiktok-pte-ltd/tik-tok-including-musical-ly/"
merge-integrations = true

[Spotify]
enabled = false
build-mode = "apk"
version = "auto"
uptodown-dlurl = "https://spotify.en.uptodown.com/android"

[Citra]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/citra-emulator/citra-emulator/"

[Backdrops]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/backdrops/backdrops-wallpapers/"

[WarnWetter]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/deutscher-wetterdienst/warnwetter/"

[Windyapp]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/windy-weather-world-inc/windy-wind-weather-forecast/"

[MyExpenses]
enabled = false
uptodown-dlurl = "https://my-expenses.en.uptodown.com/android"

[NyxMusicPlayer]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/awedea/nyx-music-player/"

[IconPackStudio]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/smart-launcher-team/icon-pack-studio/"

[TickTick]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/appest-inc/ticktick-to-do-list-with-reminder-day-planner/"

[Tasker]
enabled = false
apkmirror-dlurl = "https://www.apkmirror.com/apk/joaomgcd/tasker/"
```