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