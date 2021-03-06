#
# Cookbook Name:: jhdc-nameserver
# Recipe:: default
#
# Copyright 2015, Jeff Hutchison <jeff@jeffhutchison.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

%w(bind bind-utils).each do |p|
  package p do
    action :upgrade
  end
end

service 'named' do
  action [:enable, :start]
end

template '/etc/resolv.conf' do
  source 'resolv.conf.erb'
  mode '0644'
end
