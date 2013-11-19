#!/usr/bin/env bats

@test "updates .bash_profile" {
  result="$(cat /home/vagrant/.bash_profile | grep uru_rt)"
  [ "$result" = 'eval "$(uru_rt admin install)"' ]
}
