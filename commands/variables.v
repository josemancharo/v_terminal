module commands
import types {Primitive, Zilch}
import app_state {AppState, Scope}

pub fn val (mut state &AppState, params []string) Primitive {

	if params.len > 1 {
		if state.current_scope == .global{
			state.global_values[params[0]] = params[1]
		}
		else {
			state.current_scope_values[params[0]] = params[1]
		}
		return params[1]
	}
	else if params.len > 0 {
		if state.current_scope == .global{
			return state.global_values[params[0]] or { Zilch{} }
		}
		else {
			state.current_scope_values[params[0]] = params[1]
		}
	}
	return Zilch{}
}
