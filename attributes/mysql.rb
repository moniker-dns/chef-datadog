#
# Cookbook Name:: datadog
# Attributes:: mysql 
#
# Copyright 2013, HPCS 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Place your API Key here, or set it on the role/environment/node
# The Datadog api key to associate your agent's data with your organization.
# Can be found here:
# https://app.datadoghq.com/account/settings

# mysql
default['datadog']['mysql']['server'] = nil        # localhost
default['datadog']['mysql']['user'] = "readonly"
default['datadog']['mysql']['pass'] = "readonly"
default['datadog']['mysql']['tags'] = []
