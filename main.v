module main

import os
import term
import util
import app_state { AppState }
import types

fn main() {
	mut initial_state := get_default_app_state()
	mut state := &initial_state
	state.shebang = `Ξ`

	for {
		state.location = os.getwd()
		input := os.input(print_prompt(state))

		if input == "exit" {
			break
		}
		else {
			result := util.evaluate_command(mut state, input.split(' ')[0], input.split(' ')[1..])
			println(types.primitive_to_string(result))
		}
	}
}

fn print_prompt(state &AppState) string {
	location := state.location.replace(os.home_dir(), "~")
	return "\nVS ${term.blue(location)} ${term.green("$state.shebang")} "
}