import os
import term
import evaluator
import app_state { AppState }

fn main() {
	mut state := &AppState{}
	state.shebang = `Ξ`

	for {
		state.location = os.getwd()
		input := os.input(print_prompt(state))

		if input == "exit" {
			break
		}
		else {
			evaluator.evaluate_command(mut state, input.split(' ')[0], input.split(' ')[1..])
		}
	}
}

fn print_prompt(state &AppState) string {
	location := match state.location {
		os.home_dir() {
			"~"
		}
		else {
			state.location
		}
	}
	return "\nVS ${term.blue(location)} ${term.green("$state.shebang")} "
}