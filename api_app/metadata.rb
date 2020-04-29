name 'api_app'
maintainer 'Malik Perang'
maintainer_email 'malikperang@gmail.com'
license 'All Rights Reserved'
description 'Deploy Hello World NodeJS App'
version '0.1.0'
chef_version '>= 12.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/api-app/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/api-app'

%w{ debian ubuntu }.each do |os|
  supports os
end

depends 'nodejs'