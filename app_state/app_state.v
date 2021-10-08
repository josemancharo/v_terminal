module app_state
import types {Primitive }

pub type ValueStack = map[string]Primitive 

pub enum Scope {
	global
	function
	table
	list
	query
}

pub struct AppState {
	pub mut:
		location string
		global_values ValueStack
		current_scope_values ValueStack
		last_value string
		shebang rune
		current_scope Scope = Scope.global
		commands map[string]Command
}