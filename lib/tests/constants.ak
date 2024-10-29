//// Create `modules/constants`

use aiken/collection/list
use modules/constants

test int() {
  // Define `const posix_time` in `module/constants`
  constants.posix_time == 1928374650000
}

test bytearray() {
  // Define `const campaign_name` in `module/constants`
  constants.campaign_name == "My Campaign"
}

test bool() {
  // Define the constants in `module/constants`
  constants.yes || constants.no
}

test tuple() {
  // Define the constant!
  and {
    constants.owner.1st == #"00000000000000000000000000000000000000000000000000000056",
    constants.owner.2nd == 2_000_000,
    constants.owner.3rd,
  }
}

test list() {
  // Define `const settings`
  when constants.settings is {
    [_, [_, _, ..] as sub_settings, ..] ->
      list.all(sub_settings, fn(setting) { setting })
    _ -> False
  }
  // 1. What is the minimal form of `const settings`?
  // 2. What is the minimal pattern to match it?
  // eg. [] can be pattern-matched with []
  //     [a] can be pattern-matched with [_] or [_, ..]
  //     [a, b] can be pattern-matched with [_, _] or [_, _, ..] or even [_, ..]
}
