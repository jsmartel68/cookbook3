#!/bin/sh
puppet apply /config/github/puppetmain/manifests/site.pp --modulepath=/config/github/puppetmain/modules/ $*
