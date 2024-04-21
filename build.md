## Apps:  
* **YouTube** (all): v19.11.43  
* **Music** (arm64-v8a): v6.48.51  
* **Music** (arm-v7a): v6.48.51  
---

## Build Details:  
### CLI: j-hc/revanced-cli-4.6.0-all.jar
### Integrations: ReVanced/revanced-integrations-1.8.0.apk

#### [1.8.0](https://github.com/ReVanced/revanced-integrations/compare/v1.7.0...v1.8.0) (2024-04-21)


### Bug Fixes

* **YouTube - Disable suggested video end screen:** Require app restart ([38ae5aa](https://github.com/ReVanced/revanced-integrations/commit/38ae5aac845745824218a08053db519a3325d7a9))
* **YouTube - GmsCore support:** Prompt to disable battery optimizations, if not done already ([#601](https://github.com/ReVanced/revanced-integrations/issues/601)) ([c5c9de5](https://github.com/ReVanced/revanced-integrations/commit/c5c9de500d8f1268799e55c31c446bfe8336f79a))
* **YouTube - Hide ads:** rename `Hide paid content` to `Hide paid promotion label` ([#616](https://github.com/ReVanced/revanced-integrations/issues/616)) ([13dc172](https://github.com/ReVanced/revanced-integrations/commit/13dc17288d13d024a3fbe318ee0fb23a0d46af85))
* **YouTube - Hide keyword content:** Correctly hide content in the subscription tab ([c3bfa77](https://github.com/ReVanced/revanced-integrations/commit/c3bfa77d62b15dedfed8f697583f2f0805f0c2c1))
* **YouTube - Hide layout components:** Do not hide playlist shelf in library ([c5d38a7](https://github.com/ReVanced/revanced-integrations/commit/c5d38a7e0791ebb8fe59397fff959cc94e0a7aed))
* **YouTube - Hide layout components:** Hide horizontal tile shelves ([ba30869](https://github.com/ReVanced/revanced-integrations/commit/ba308690cf83067d3ddd54622eebcbd14bc15ac8))
* **YouTube - Hide load more button:** Include patch with `Hide layout components`, and hide button only in search feed  ([#600](https://github.com/ReVanced/revanced-integrations/issues/600)) ([c420891](https://github.com/ReVanced/revanced-integrations/commit/c420891e3ef134f30af79cf2f30da3fa2fe5a455))
* **YouTube - Hide Shorts components:** Correctly hide Shorts if navigation tab is changed using device back button ([#611](https://github.com/ReVanced/revanced-integrations/issues/611)) ([ffc3437](https://github.com/ReVanced/revanced-integrations/commit/ffc3437843c24af255d2a0dda9930d2843cac4b6))
* **YouTube - Hide Shorts components:** Do not show Shorts suggestions in video player, if all hide Shorts options are enabled ([#613](https://github.com/ReVanced/revanced-integrations/issues/613)) ([c132670](https://github.com/ReVanced/revanced-integrations/commit/c132670400e6bdf17c46b8d04d579fb49c3d2749))
* **YouTube - Hide Shorts components:** Hide paid promotion label ([3ce100c](https://github.com/ReVanced/revanced-integrations/commit/3ce100ced57d7099c2209d9a955484f1e7d418e0))
* **YouTube - Hide Shorts components:** Hide subscribe button in channel bar ([9938bbf](https://github.com/ReVanced/revanced-integrations/commit/9938bbf0de9592db015ae0cfea83e855e12f0c7e))
* **YouTube - Hide Shorts components:** Hide suggested actions in incognito mode ([bba421d](https://github.com/ReVanced/revanced-integrations/commit/bba421ddb63597bf918ecccacfd4a33493016b9f))
* **YouTube - Navigation bar hook:** Handle if search is active but hidden behind a maximized player ([cbccb46](https://github.com/ReVanced/revanced-integrations/commit/cbccb46e639003adbed941f9b88c41b4c9998729))
* **YouTube - Player flyout menu:** Add hide Lock screen menu ([#609](https://github.com/ReVanced/revanced-integrations/issues/609)) ([b2fe105](https://github.com/ReVanced/revanced-integrations/commit/b2fe105199d4a5958676cbc8f9c701541e8ff24a))
* **YouTube - Return YouTube Dislike:** Do not clip compact text when not using English ([eeaeb49](https://github.com/ReVanced/revanced-integrations/commit/eeaeb49f2a562d2690dae184153c303a5b1c4368))
* **YouTube - Return YouTube Dislike:** Do not show error toast if API success response contains new lines ([#612](https://github.com/ReVanced/revanced-integrations/issues/612)) ([9108205](https://github.com/ReVanced/revanced-integrations/commit/9108205445c533550db454731d4f9460a3241a03))
* **YouTube - Settings:** Do not show a toast if migrating old unknown settings ([f2e15a2](https://github.com/ReVanced/revanced-integrations/commit/f2e15a2e1ff59ae7780cfbd366e5165f4e2b191d))
* **YouTube - Spoof device dimensions:** Warn about potential performance issues ([#617](https://github.com/ReVanced/revanced-integrations/issues/617)) ([786ac9d](https://github.com/ReVanced/revanced-integrations/commit/786ac9d2b71886964454fcb748e656d1beed1964))


### Features

* **YouTube - Hide layout components:** Add option to hide horizontal shelves ([#598](https://github.com/ReVanced/revanced-integrations/issues/598)) ([fedace0](https://github.com/ReVanced/revanced-integrations/commit/fedace02fd5c443ef37dcf77253438b041f4c3f9))
* **YouTube - Hide layout components:** Hide playables ([d6cd550](https://github.com/ReVanced/revanced-integrations/commit/d6cd550880596de5cd2eb4a0d1325a73326d4af9))
* **YouTube - Hide Shorts components:** Hide `Shop`, `Location` and `Save sound to playlist` buttons ([#614](https://github.com/ReVanced/revanced-integrations/issues/614)) ([acfa3c9](https://github.com/ReVanced/revanced-integrations/commit/acfa3c98868b6d84572ee682ad806a0282ac6dad))
* **YouTube - Hide Shorts components:** Hide tagged products, hide search suggestions ([#615](https://github.com/ReVanced/revanced-integrations/issues/615)) ([0586fb7](https://github.com/ReVanced/revanced-integrations/commit/0586fb70e347c25742e03102441cfb37315b5937))
* **YouTube - Swipe controls:** Save and restore brightness and add auto-brightness toggle ([#610](https://github.com/ReVanced/revanced-integrations/issues/610)) ([1c8e2b2](https://github.com/ReVanced/revanced-integrations/commit/1c8e2b29410048a352cb6aad3dd02773459f91a0))
* **YouTube:** Add 'About' preference to settings menu ([#608](https://github.com/ReVanced/revanced-integrations/issues/608)) ([b8f260e](https://github.com/ReVanced/revanced-integrations/commit/b8f260ebd3e7c2dc50a57cd060b76f2e0fc4a89c))





### Patches: ReVanced/revanced-patches-4.7.0.jar

#### [4.7.0](https://github.com/ReVanced/revanced-patches/compare/v4.6.0...v4.7.0) (2024-04-21)
### Bug Fixes
* **Tumblr - Fix old versions:** Improve reliability by removing remnances of Tumblr Live  ([#2988](https://github.com/ReVanced/revanced-patches/issues/2988)) ([897b4db](https://github.com/ReVanced/revanced-patches/commit/897b4dbce984270ae1fd7de5bd30bd05153e45f2))
* **YouTube - GmsCore support:** Prompt to disable battery optimizations, if not done already ([#2958](https://github.com/ReVanced/revanced-patches/issues/2958)) ([82acb84](https://github.com/ReVanced/revanced-patches/commit/82acb84b5f6ff0722a2eb080b53da9dd3622502f))
* **YouTube - Hide ads:** rename `Hide paid content` to `Hide paid promotion label` ([#3026](https://github.com/ReVanced/revanced-patches/issues/3026)) ([17e4ac9](https://github.com/ReVanced/revanced-patches/commit/17e4ac978a2f109fd62469a3163b636cd63c55ae))
* **YouTube - Hide load more button:** Include patch with `Hide layout components`, and hide button only in search feed  ([#2959](https://github.com/ReVanced/revanced-patches/issues/2959)) ([b007e8e](https://github.com/ReVanced/revanced-patches/commit/b007e8e06a3afad79b40bec1c6a14604f059049c))
* **YouTube - Hide Shorts components:** Correctly hide Shorts if navigation tab is changed using device back button ([#3007](https://github.com/ReVanced/revanced-patches/issues/3007)) ([e5848e9](https://github.com/ReVanced/revanced-patches/commit/e5848e99c4cc838595164ef673a77fe60d28086b))
* **YouTube - Player flyout menu:** Add hide Lock screen menu ([#2985](https://github.com/ReVanced/revanced-patches/issues/2985)) ([308de4a](https://github.com/ReVanced/revanced-patches/commit/308de4a63ca99b8d30d6b3242f98d6f0e2aefb37))
* **YouTube - Spoof device dimensions:** Warn about potential performance issues ([#3039](https://github.com/ReVanced/revanced-patches/issues/3039)) ([9d6f305](https://github.com/ReVanced/revanced-patches/commit/9d6f305b7c923e62b89581d221fedbe1e3f81835))
* **YouTube Music - Remove upgrade button:** Fix compatibility with latest versions ([#3045](https://github.com/ReVanced/revanced-patches/issues/3045)) ([80de996](https://github.com/ReVanced/revanced-patches/commit/80de99666555694670529bbfe2e0be7a14d66555))
### Features
* Add `Hex` patch ([#3034](https://github.com/ReVanced/revanced-patches/issues/3034)) ([3c95aac](https://github.com/ReVanced/revanced-patches/commit/3c95aac838693b354d3a7b0e3dc57c6da5adfa9e))
* **Amazon:** Add `Always allow deep-linking` patch ([#3000](https://github.com/ReVanced/revanced-patches/issues/3000)) ([a92b7fb](https://github.com/ReVanced/revanced-patches/commit/a92b7fb43c8b1b45577360cdc6d883fe2815c2f2))
* **Strava - Unlock subscription:** Remove compatible version constraint ([80a5599](https://github.com/ReVanced/revanced-patches/commit/80a55991683d7b22626224fa2935a5bf9bfcbfee))
* **Twitter:** Add `Sanitize sharing links` patch ([#3003](https://github.com/ReVanced/revanced-patches/issues/3003)) ([186b887](https://github.com/ReVanced/revanced-patches/commit/186b8874157eef1b882b05d491ba1d4ca2809535))
* **YouTube - Hide layout components:** Add option to hide horizontal shelves ([#2951](https://github.com/ReVanced/revanced-patches/issues/2951)) ([9ae0650](https://github.com/ReVanced/revanced-patches/commit/9ae0650c0005d882299996aa442410bab4261395))
* **YouTube - Hide layout components:** Hide playables ([8423515](https://github.com/ReVanced/revanced-patches/commit/842351548baa33737db09be1cbca9f87c1951341))
* **YouTube - Hide Shorts components:** Hide `Shop`, `Location` and `Save sound to playlist` buttons ([#3018](https://github.com/ReVanced/revanced-patches/issues/3018)) ([5210ac4](https://github.com/ReVanced/revanced-patches/commit/5210ac431c191987264865bf8e789ea9f3fdd360))
* **YouTube - Hide Shorts components:** Hide tagged products, hide search suggestions ([#3019](https://github.com/ReVanced/revanced-patches/issues/3019)) ([e0d2fe5](https://github.com/ReVanced/revanced-patches/commit/e0d2fe5bd2e681b9a5252a8e4ad582cc019b1606))
* **YouTube - Swipe controls:** Save and restore brightness and add auto-brightness toggle ([#2996](https://github.com/ReVanced/revanced-patches/issues/2996)) ([f6c3bc4](https://github.com/ReVanced/revanced-patches/commit/f6c3bc43190d33e06f49b74fc056d26da1bb014a))
* **YouTube:** Add 'About' preference to settings menu ([#2981](https://github.com/ReVanced/revanced-patches/issues/2981)) ([5abf894](https://github.com/ReVanced/revanced-patches/commit/5abf89444a3e6a211ec03c242eb9a7847542b08c))
* **YouTube:** Match overlay icons style to YouTube ([#3023](https://github.com/ReVanced/revanced-patches/issues/3023)) ([6849393](https://github.com/ReVanced/revanced-patches/commit/684939314be3d0d43482f229b2adb033e7aa492a))
* **YouTube:** Support version `19.09.38`, `19.10.39` and `19.11.43` ([#2971](https://github.com/ReVanced/revanced-patches/issues/2971)) ([730f3e3](https://github.com/ReVanced/revanced-patches/commit/730f3e3a7e058b60f9a8130980ecb0a747fa0a8a))
* **YT Music - Hide 'Get Music Premium' label:** Remove occurences of label in settings ([#3046](https://github.com/ReVanced/revanced-patches/issues/3046)) ([10e170a](https://github.com/ReVanced/revanced-patches/commit/10e170a7302fdb585efee663ca13c814aea46c54))

---  

[rvcmm](https://github.com/thrwKappu/rvcmm/), based on [revanced-magisk-module](https://github.com/j-hc/revanced-magisk-module)  
