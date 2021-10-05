module commands

import app_state
import types

pub struct Command {
	pub:
		print fn () ?string
		evaluate fn (state &app_state.AppState, command string, params []string) ?types.Primitive
}