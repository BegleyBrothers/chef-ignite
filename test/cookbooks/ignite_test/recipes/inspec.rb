# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2020 Begley Brothers Inc.
#
# See details in LICENSE.

#########################
# service named 'ignited'
#########################

# Install ignite service.  Installs `ignited` (and requirements) and Docker.
ignite_service 'ignited' do
  action [:create, :start]
end

# Run inspec tests
ignite_inspec 'ignite'

# Test-Kitchen destroys test VM instances.
# We test uninstalls as part of the install.
ignite_service 'ignited' do
  action [:stop, :delete]
end
