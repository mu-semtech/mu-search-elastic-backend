#!/bin/env bash
chmod a+rwx /usr/share/elasticsearch/data
# We don't have su or sudo available but we do have chroot, this just drops to 1000:0 which is what the container had
# before when scanned through docker inspect
exec chroot --userspec=1000:0 / /usr/local/bin/docker-entrypoint.sh
