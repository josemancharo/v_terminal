module commands
import os
import app_state {Command, AppState}
import types { Primitive, Zilch }


pub fn cd (mut state &AppState, params []string) Primitive {
	if params.len > 0 {
		arg := os.expand_tilde_to_home(params[0])
		if os.is_abs_path(arg) {
			os.chdir(arg) or {println("Error changing directory to ${arg}")}
		}
		else {
			path := os.real_path("./$arg")
			os.chdir(path) or {println("Error changing directory to $path")}
		}
	}
	return Primitive(Zilch{})
}

pub fn ls (mut state &AppState, params []string) Primitive {
	ls := os.ls(state.location) or {[]}
	return ls.join('\n')
}