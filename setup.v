module main
import commands{ cd, ls, mkdir }
import app_state {AppState, Command}
import os

pub fn register_commands() map[string]Command {
	mut cmds := {
		"ls": Command(ls)
		"cd": Command(cd)
		"mkdir": Command(mkdir)
		"shebang": Command(commands.shebang)
		"val": Command(commands.val)
	}
	
	return cmds 
}

pub fn get_default_app_state() AppState {
	state := AppState{
		commands: register_commands()
		location: os.getwd()
	}
	return state
}