module app_state
import os
import types {Primitive, Zilch}


pub type Command = fn (mut state &AppState, params []string) Primitive

pub fn default_command (mut state &AppState, raw_command string) Primitive {
	process := os.execute(raw_command)
	return Primitive(process.output)
}
