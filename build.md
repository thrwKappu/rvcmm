# Apps:  
YouTube: v18.45.43  
Music (arm-v7a): v6.31.55  
Music (arm64-v8a): v6.31.55  
---

# Changelog:  
## CLI: j-hc/revanced-cli-4.3.0-all.jar
## Integrations: ReVanced/revanced-integrations-1.0.0.apk

### [1.0.0](https://github.com/ReVanced/revanced-integrations/compare/v0.125.0...v1.0.0) (2023-12-12)
### Bug Fixes
* **YouTube - Announcements:** Don't show error toast if there is no internet connection ([#537](https://github.com/ReVanced/revanced-integrations/issues/537)) ([0ce92c2](https://github.com/ReVanced/revanced-integrations/commit/0ce92c284d08a1c6bffba976e9cf208e82288ddf))
* **YouTube - Client spoof:** Do not break clips ([f9102fa](https://github.com/ReVanced/revanced-integrations/commit/f9102fa83bdb2b147543882cb8ebb80b5985ad3e))
* **YouTube - Minimized playback:** Fix PIP incorrectly shown for some Shorts playback ([#533](https://github.com/ReVanced/revanced-integrations/issues/533)) ([fb433da](https://github.com/ReVanced/revanced-integrations/commit/fb433da6ad652aee48fc92794de82bb914ab80ca))
* **YouTube - Return YouTube Dislike:** Fix dislikes sometimes not showing for non English language ([5d4c8b0](https://github.com/ReVanced/revanced-integrations/commit/5d4c8b0a1b77e97c7c0c02288927e92f3c9765ce))
* **YouTube - Return YouTube Dislike:** Prevent the first Short opened from freezing the UI ([#532](https://github.com/ReVanced/revanced-integrations/issues/532)) ([0bb8669](https://github.com/ReVanced/revanced-integrations/commit/0bb86694e24a6a41edee62f5ef1bb80fe7bc3f19))
* **YouTube - Return YouTube Dislike:** Wait until fetch is complete before allowing the first Short to start playback ([#538](https://github.com/ReVanced/revanced-integrations/issues/538)) ([1c9c51c](https://github.com/ReVanced/revanced-integrations/commit/1c9c51ca5f7970774d4e0b5aad5ebcd064cac716))
* **YouTube - SponsorBlock:** Allow autoplay when skipping to the end of the video ([3d660e1](https://github.com/ReVanced/revanced-integrations/commit/3d660e1b5eeab9771f96bd2d26a222b835e2485c))
* **YouTube - SponsorBlock:** Prevent autoplay from stopping to work ([f4e2d56](https://github.com/ReVanced/revanced-integrations/commit/f4e2d56b181fee4d693dea1dfe81974237e4eff7))
* **YouTube - Spoof signature:** Wait until storyboard fetch is done ([#535](https://github.com/ReVanced/revanced-integrations/issues/535)) ([92e8619](https://github.com/ReVanced/revanced-integrations/commit/92e8619cd7bbcf82f27e9407e18c30d65214e31c))
### Features
* Allow choosing the vendor of GmsCore via patch options ([#529](https://github.com/ReVanced/revanced-integrations/issues/529)) ([fba7181](https://github.com/ReVanced/revanced-integrations/commit/fba7181e70d695d7fb13c530754dc1db99b87216))
* **Tiktok:** Bump compatibility to `32.5.3` ([#536](https://github.com/ReVanced/revanced-integrations/issues/536)) ([10a1e16](https://github.com/ReVanced/revanced-integrations/commit/10a1e168d062adc3c979de17738d8cf1b8f25d63))
* **YouTube - Alternative Thumbnails:** Add option to use DeArrow ([#534](https://github.com/ReVanced/revanced-integrations/issues/534)) ([c4ee6ca](https://github.com/ReVanced/revanced-integrations/commit/c4ee6ca4dde13ab8ce6f9cf94f1910455f9d9ecc))
* **YouTube:** Add `Change start page` patch ([792dc0c](https://github.com/ReVanced/revanced-integrations/commit/792dc0c52210dc9b1560290b0cc2afad572c584c))
### BREAKING CHANGES
* The class `MicroGSupport` has been renamed to `GmsCoreSupport`

---

## Patches: ReVanced/revanced-patches-3.1.0.jar

### [3.1.0](https://github.com/ReVanced/revanced-patches/compare/v3.0.1...v3.1.0) (2023-12-12)


### Bug Fixes

* **Boost for Reddit - Spoof client:** Fix account login by removing user agent patch ([42a5de9](https://github.com/ReVanced/revanced-patches/commit/42a5de98becee7fc027c3e7143e071a3447f7077))
* **Sync for Reddit - Spoof client:** Fix account login by removing user agent patch ([d90786e](https://github.com/ReVanced/revanced-patches/commit/d90786e26d9c0e581284aab0d9d6d5097da2bfda))


### Features

* **IconPackStudio - Unlock pro:** Constrain to last working version ([#3410](https://github.com/ReVanced/revanced-patches/issues/3410)) ([fb6ee8a](https://github.com/ReVanced/revanced-patches/commit/fb6ee8a8976b64477171f70229e161188c39efcd))




---  


[rvcmm](https://github.com/thrwKappu/rvcmm/), based on [revanced-magisk-module](https://github.com/j-hc/revanced-magisk-module)  
