module util
import app_state { AppState, Command, default_command }
import types {Primitive, Zilch}

pub fn evaluate_command(mut state &AppState, command string, params []string) Primitive {
	if command in state.commands {
		return state.commands[command](mut state, params)
	}
	else {
		return default_command(mut state, command + params.join(' ')) 
	}
}