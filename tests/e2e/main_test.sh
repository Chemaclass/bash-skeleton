#!/bin/bash

function set_up() {
  _CURRENT_DIR="$(dirname "${BASH_SOURCE[0]}")"
  source "$_CURRENT_DIR/../../src/main.sh"
}

function test_main_without_args() {
  assert_match_snapshot "$(main::action)"
}

function test_main_with_args() {
  assert_match_snapshot "$(main::action arg1 --option="value2")"
}
