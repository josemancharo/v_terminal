module commands
import os

pub fn cd(command string, params []string){
	if params.len > 0 {
		arg := params[0]
		if os.is_abs_path(arg) {
			os.chdir(arg) or {println("Error changing directory to ${arg}")}
		}
		else if arg == "~" {
			os.chdir(os.home_dir()) or {println("Error changing directory to ${os.home_dir()}")}
		}
		else {
			path := os.real_path("./$arg")
			os.chdir(path) or {println("Error changing directory to $path")}
		}
		
	}
}