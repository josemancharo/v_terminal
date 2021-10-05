module evaluator
import app_state { AppState }
import commands

pub fn evaluate_command(mut state &AppState, command string, params []string) {
	match command {
		"ls" {
			commands.ls()
		}
		"cd" {
			commands.cd(command, params)
		}
		"shebang" {
			if params.len > 0 {
				state.shebang = params[0].runes()[0]
			}
		}
		else {

		}
	}
}