## Apps:  
* **YouTube** (all): v19.09.37  
* **Music** (arm64-v8a): v6.45.54  
---

## Build Details:  
### CLI: j-hc/revanced-cli-4.5.0-all.jar
### Integrations: ReVanced/revanced-integrations-1.5.0.apk

#### [1.5.0](https://github.com/ReVanced/revanced-integrations/compare/v1.4.0...v1.5.0) (2024-03-27)
### Bug Fixes
* Check index of pattern in string instead of the other way around ([96a1e46](https://github.com/ReVanced/revanced-integrations/commit/96a1e4680d23be7154bb83290b1887fcd1a22f53))
* Handle custom preferences ([#586](https://github.com/ReVanced/revanced-integrations/issues/586)) ([ad477e4](https://github.com/ReVanced/revanced-integrations/commit/ad477e4859ef69beda297f7a2a6c29a918077628))
* Revert AGP dependency update ([ab07a56](https://github.com/ReVanced/revanced-integrations/commit/ab07a563b9ef890dc8a673eeb4268ce1c9f15a69))
* **TikTok:** Hook application context earlier to prevent crash ([#588](https://github.com/ReVanced/revanced-integrations/issues/588)) ([9ac2d63](https://github.com/ReVanced/revanced-integrations/commit/9ac2d634897d961eba1b704f2722ea757bb83e0a))
* **YouTube - Announcements:** Only compare ID to not show same announcement after a fix-up ([#579](https://github.com/ReVanced/revanced-integrations/issues/579)) ([5d14f53](https://github.com/ReVanced/revanced-integrations/commit/5d14f53acd0b1eabd6951543edd7d7c662b6c502))
* **YouTube - Client spoof:**  Allow playback for links with timestamp ([#582](https://github.com/ReVanced/revanced-integrations/issues/582)) ([eee3f35](https://github.com/ReVanced/revanced-integrations/commit/eee3f352c59141f47f6bda6c6cd350f1a16f1450))
* **YouTube - Disable suggested video end screen:** Disable by default to fix autoplay issues ([#578](https://github.com/ReVanced/revanced-integrations/issues/578)) ([b9c1eec](https://github.com/ReVanced/revanced-integrations/commit/b9c1eec69fab64f213dd77d1f932e3244d81ab2d))
* **YouTube - Downloads:** Use new task context ([#583](https://github.com/ReVanced/revanced-integrations/issues/583)) ([468dfac](https://github.com/ReVanced/revanced-integrations/commit/468dfac0544e282658675a8be65b4e43aa351068))
* **YouTube - HDR auto brightness:** Remove non functional and obsolete patch ([#585](https://github.com/ReVanced/revanced-integrations/issues/585)) ([b060732](https://github.com/ReVanced/revanced-integrations/commit/b060732e861b011cac8737ed597385a3315f6057))
* **YouTube - Hide ads:** Prevent app crash if hiding fullscreen ads is not possible ([#590](https://github.com/ReVanced/revanced-integrations/issues/590)) ([4ec955f](https://github.com/ReVanced/revanced-integrations/commit/4ec955fd0133643826e47be7089fbfa07fd9a089))
* **YouTube - Hide layout components:** Correctly hide Join button ([b945e2f](https://github.com/ReVanced/revanced-integrations/commit/b945e2f44b1a62326e6d45345c1467668d803f53))
* **YouTube - Hide seekbar:** Use original seekbar color if Theme patch is not included ([#580](https://github.com/ReVanced/revanced-integrations/issues/580)) ([8d48a90](https://github.com/ReVanced/revanced-integrations/commit/8d48a90a8b8bc7ce9e22580b7a66c4c12fd6d54f))
* **YouTube - Hide Shorts components:** Correctly hide join button ([b7a8995](https://github.com/ReVanced/revanced-integrations/commit/b7a8995f798e386ee1d9ab5bbd857c1736cc5a29))
* **YouTube:** Fix video playback by switching to ReVanced GmsCore vendor ([#589](https://github.com/ReVanced/revanced-integrations/issues/589)) ([6e947e2](https://github.com/ReVanced/revanced-integrations/commit/6e947e24c2ac36e1bddcd25412870a36aa6c85c8))
### Features
* **YouTube - Downloads:** Use external downloader when selecting 'Download' in home feed flyout menu ([#587](https://github.com/ReVanced/revanced-integrations/issues/587)) ([254da31](https://github.com/ReVanced/revanced-integrations/commit/254da31d16c39781f46e1cdea1e9ba22e2fce6d1))
* **YouTube - External downloader:** Add ability to use in-app download button ([771a0de](https://github.com/ReVanced/revanced-integrations/commit/771a0de3bc9bec3ec5a8e4f8b02edfa9df7b1997))
* **YouTube - Hide layout components:** Filter home/search results by keywords ([#584](https://github.com/ReVanced/revanced-integrations/issues/584)) ([0cbad98](https://github.com/ReVanced/revanced-integrations/commit/0cbad9820577c476f1f29b6ac77611b38afbb950))
* **YouTube - Hide Shorts components:** Hide like and dislike buttons ([2a08e5a](https://github.com/ReVanced/revanced-integrations/commit/2a08e5a98e9e9a00bb306313ff487d67c042a92e))
* **YouTube - Hide Shorts components:** Hide sound metadata label ([46d8ef6](https://github.com/ReVanced/revanced-integrations/commit/46d8ef6f88bd4c912a45357541291af38b5fc81f))
* **YouTube - Hide Shorts components:** Hide title and full video link label ([59165de](https://github.com/ReVanced/revanced-integrations/commit/59165de801a5481fa4055dcf1797fe84dce235c0))
* **YouTube - Hide Shorts components:** Selectively hide Shorts for home / subscription / search ([#592](https://github.com/ReVanced/revanced-integrations/issues/592)) ([1ee99aa](https://github.com/ReVanced/revanced-integrations/commit/1ee99aa6f0b4af15eeca25c7e21e8a0f5e9d189a))


### Patches: ReVanced/revanced-patches-4.4.0.jar

#### [4.4.0](https://github.com/ReVanced/revanced-patches/compare/v4.3.0...v4.4.0) (2024-03-27)


### Bug Fixes

* **TikTok:** Hook application context earlier to prevent crash ([#2893](https://github.com/ReVanced/revanced-patches/issues/2893)) ([395ccda](https://github.com/ReVanced/revanced-patches/commit/395ccda7b9218c522c7ca0f99f75a12036d3e3f3))
* **YouTube - Client spoof:** Spoof all user agents ([44a8a13](https://github.com/ReVanced/revanced-patches/commit/44a8a1399897caaff3ff45db8549ddedb2f01b68))
* **YouTube - Hide ads:** Prevent app crash if hiding fullscreen ads is not possible ([#2910](https://github.com/ReVanced/revanced-patches/issues/2910)) ([9f50470](https://github.com/ReVanced/revanced-patches/commit/9f50470bf6582fe2f20a903a97bf66c41f296fb2))
* **YouTube Music:** Fix compatibility with latest versions ([#2924](https://github.com/ReVanced/revanced-patches/issues/2924)) ([8378c84](https://github.com/ReVanced/revanced-patches/commit/8378c8481634a63a5568480475757e64b7ec466e))
* **YouTube:** Fix video playback by switching to ReVanced GmsCore vendor ([#2907](https://github.com/ReVanced/revanced-patches/issues/2907)) ([33ea122](https://github.com/ReVanced/revanced-patches/commit/33ea12228c2ae5dcadf3e7c7016d4bf6006d899a))


### Features

* **Instagram - Hide timeline ads:** Make compatible with latest versions ([a212f29](https://github.com/ReVanced/revanced-patches/commit/a212f29bd33bb5e10f024e058d26e20ee926190b))
* **Mi Fitness:** Add `Force English locale` and `Fix login` patch ([#2734](https://github.com/ReVanced/revanced-patches/issues/2734)) ([7a25791](https://github.com/ReVanced/revanced-patches/commit/7a25791d53530b1236896b2c3d6275ee7556e8b7))
* **Sync for Lemmy:** Add `Disable ads` patch ([#2872](https://github.com/ReVanced/revanced-patches/issues/2872)) ([0785819](https://github.com/ReVanced/revanced-patches/commit/0785819dd5ad487c778b5baf09004cdab3687184))
* **YouTube - Downloads:** Use external downloader when selecting 'Download' in home feed flyout menu ([#2881](https://github.com/ReVanced/revanced-patches/issues/2881)) ([10afc8c](https://github.com/ReVanced/revanced-patches/commit/10afc8cc71ff29fea4937fb12fd3d1edf9c581f5))
* **YouTube - Downloads:** Add ability to use in-app download button ([d900011](https://github.com/ReVanced/revanced-patches/commit/d9000113a905c14f8409aa75008f1ef6a1aecd0c))
* **YouTube - Hide layout components:** Filter home/search results by keywords ([#2853](https://github.com/ReVanced/revanced-patches/issues/2853)) ([5916204](https://github.com/ReVanced/revanced-patches/commit/59162042b0a68edf7f94a3c21f838dada3c3f9c3))
* **YouTube - Hide Shorts components:** Hide like and dislike buttons ([2df0892](https://github.com/ReVanced/revanced-patches/commit/2df0892682406e67283c4aeaacebf8f222029833))
* **YouTube - Hide Shorts components:** Hide sound metadata label ([ea7d1e0](https://github.com/ReVanced/revanced-patches/commit/ea7d1e0d08cc245117ffe8ad0df3c31c5e87f739))
* **YouTube - Hide Shorts components:** Hide title and full video link label ([e7b64e1](https://github.com/ReVanced/revanced-patches/commit/e7b64e154e7fb8edd0037f5e171f4aa3ed9017f8))
* **YouTube - Hide Shorts components:** Selectively hide Shorts for home / subscription / search ([#2925](https://github.com/ReVanced/revanced-patches/issues/2925)) ([497c067](https://github.com/ReVanced/revanced-patches/commit/497c067e80e560eb125f5fc30eef9763929b4ee4))
* **YouTube :** Remove `HDR auto brightness` patch ([#2863](https://github.com/ReVanced/revanced-patches/issues/2863)) ([b4c7bf4](https://github.com/ReVanced/revanced-patches/commit/b4c7bf48084184e5f031f7f5139a9a29341d8ebf))
* **YouTube Vanced:** Remove `Hide ads` patch ([87887e4](https://github.com/ReVanced/revanced-patches/commit/87887e4163dd9e242209f4d0fefb415f9bc7ca75))
* **YouTube:** Support version `19.05`, `19.06`, `19.07`, `19.08` and `19.09` ([#2862](https://github.com/ReVanced/revanced-patches/issues/2862)) ([f044dde](https://github.com/ReVanced/revanced-patches/commit/f044dde054861ff16846a6be6287f86fa3afb3d8))




---  

[rvcmm](https://github.com/thrwKappu/rvcmm/), based on [revanced-magisk-module](https://github.com/j-hc/revanced-magisk-module)  
