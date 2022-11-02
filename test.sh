#!/usr/bin/env sh

set -e

ruby test/test.rb && echo "Running ruby test.rb successful."
chmod +x ./bin/port_ruby_to_crystal
./bin/port_ruby_to_crystal --test
crystal run test/test.cr && echo "Running crystal run test.cr successful."
