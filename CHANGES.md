# v201912171946-8Pg5 0.4.3
* Removed other icon sets besides fontawesome.
* Upgraded to Quasar 1.5.9
* Moved to semver compatible format, but not adopting religion.

# v201912161344-7Ng4 0.0.4.2
* Added bin/stellar `mountpoint` and `launcher` which check for built code, otherwise builds that, then starts.

# v201912161302-7Ng4 0.0.4.1
* Organized `config/` better with `environments/`
* Changed `interface/` to `face/`

# v201912161201-7Ng4 0.0.4.0
* Many, many versions and changes not noted over the last four days.
* Essentially completed the CTA feature-set.
* Uses `git secret` for `secrets.yml` per https://github.com/sobolevn/git-secret
* Full data validation on the client side, forwarding of CTA data to Slack, copy to host by SendGrid, then acknowledgement by SendGrid to guest.

# v201912120128-2Hg8 0.0.1.0
* Added localization in the process of adding all the forms for CTAs
* Reworked drawers, navigation, and added minified sidebar
* Laid out all the CTA forms, with seamless and DRY validation
* Added in Vuelidate, lodash, then made slight Vue.prototype augmentations
* Created reusable set of CTAs to be used anywhere, once data processing is added next

# v201912110024-1Gg7 0.0.0.10
* bin/generate-ssl.sh drops into config/development/ssl/

# v201912110002-1Gg7 0.0.0.9
* Initial bin/stellar init

# v201912102320-1Gg7 0.0.0.8
* Fix dependencies

# v201912102005-1Gg7 0.0.0.7
* Pass arguments into bin/artillery and don't hardcode bin/bazooka vs. use bin/artillery --bazooka
* Package the bin/stellar executable into the shard
* Prepare empty /relay endpoint

# v201912101927-1Gg7 0.0.0.6
* Fix method of stars/ path injection on Artillery side.
* Still needs to handle recursive dependencies issue possibly, right now uses local path.

# v201912101847-1Gg7 0.0.0.5
* Try to avoid recursive dependencies.

# v201912101843-1Gg7 0.0.0.4
* Actually push to GitHub this time, and fix logs.

# v201912101837-1Gg7 0.0.0.3
* Fix errors in released Shard

# v201912101830-1Gg7 0.0.0.2
* Prepare to release first Shard, overriding Artillery

# v201912071310-ECp4 0.0.0.1
* Add Quasar 1.5.5
* Use Crystal 0.13.1
* Use stellar.artillery.cloud for example.
* Set `build/` for rendered Quasar application in `interface/quasar.conf.js`
* Copied over and customized layouts, components, stores, routes, etc. from `proactive.ngo` interface.