#!/bin/bash

function set_up() {
  _CURRENT_DIR="$(dirname "${BASH_SOURCE[0]}")"
  source "$_CURRENT_DIR/../../src/main.sh"
}

function test_main_without_args() {
  actual=$(main::action)

  assert_same "Main Action" "$actual"
}

function test_main_with_args() {
  actual=$(main::action arg1 --option="value2")

  assert_same "Main Action
arg1
--option=value2" "$actual"
}
