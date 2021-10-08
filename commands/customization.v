
module commands
import types {Primitive, Zilch}
import app_state {AppState}

pub fn shebang (mut state &AppState, params []string) Primitive {
	if params.len > 0 {
		state.shebang = params[0].runes()[0]
	}
	return Zilch{}
}