# Attributes:: default
#
# Copyright 2014, Bao Nguyen
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

# adding ldap as additional sources besides the default
nsswitch_source(:passwd) { param "ldap"}
nsswitch_source(:group) { param "ldap"}
nsswitch_source(:hosts) { param "ldap"}
nsswitch_source(:networks) { param "ldap"}

# calling the default
include_recipe "nsswitch"