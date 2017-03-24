#
# Cookbook:: my_audit
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

node.default['audit']['inspec_version'] = 'latest'

#Defines the collector or collectors. Can take single item or items[]
#This specific config will push data directly to an existing Compliance server
node.default['audit']['collector'] = 'chef-compliance' 
node.default['audit']['server'] = '[SERVER URL]/api'
node.default['audit']['owner'] = '[ORG NAME]'
node.default['audit']['refresh_token'] = '[REFRESH TOOKEN]'
node.default['audit']['insecure'] = false
node.default['audit']['profiles'] = [
    {
      "name": "linux",
      "compliance": "base/linux"
    }
  ]

include_recipe 'audit::default'