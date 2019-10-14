#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################

# Generates App List
ls -la /opt/coreapps/apps/ | sed -e 's/.yml//g' |
    awk '{print $9}' | tail -n +4 >/var/psautomate/app.list

ls -la /opt/mycontainers/ | sed -e 's/.yml//g' |
    awk '{print $9}' | tail -n +4 >>/var/psautomate/app.list
# Enter Items Here to Prevent them From Showing Up on AppList
sed -i -e "/traefik/d" /var/psautomate/app.list
sed -i -e "/image*/d" /var/psautomate/app.list
sed -i -e "/_appsgen.sh/d" /var/psautomate/app.list
sed -i -e "/_c*/d" /var/psautomate/app.list
sed -i -e "/_a*/d" /var/psautomate/app.list
sed -i -e "/_t*/d" /var/psautomate/app.list
sed -i -e "/templates/d" /var/psautomate/app.list
sed -i -e "/retry/d" /var/psautomate/app.list
sed -i "/^test\b/Id" /var/psautomate/app.list
sed -i -e "/nzbthrottle/d" /var/psautomate/app.list
sed -i -e "/watchtower/d" /var/psautomate/app.list
sed -i "/^_templates.yml\b/Id" /var/psautomate/app.list
sed -i -e "/oauth/d" /var/psautomate/app.list
sed -i -e "/dockergc/d" /var/psautomate/app.list
sed -i -e "/psaui/d" /var/psautomate/app.list
