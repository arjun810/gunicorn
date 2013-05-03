# Author:: Arjun Singh
# Cookbook Name:: gunicorn
# Resource:: config
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

actions :create, :delete

attribute :path, :kind_of => String, :name_attribute => true
attribute :template, :kind_of => String, :default => 'nginx_proxy.conf.erb'
attribute :cookbook, :kind_of => String, :default => 'gunicorn'

attribute :owner, :regex => Chef::Config[:user_valid_regex]
attribute :group, :regex => Chef::Config[:group_valid_regex]

attribtue :server_name, :kind_of => String, :default => 'localhost'
attribute :access_log,  :kind_of => String
attribute :error_log,   :kind_of => String
attribute :static_root, :kind_of => String