#
# This recipe tests the :unstable channel.
# This channel is only accessible from Chef's internal
# network and contains untested builds of Chef products.
#
# Make sure you set below environment variables for
# tests to work correctly.
#

ENV["ARTIFACTORY_USERNAME"] = 'serdar@chef.io'
ENV["ARTIFACTORY_PASSWORD"] = 'WRitink1510gs!'

chef_ingredient 'chef' do
  action :upgrade
  channel :unstable
  version :latest
end
