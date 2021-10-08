module commands
import os
import types {Primitive}
import app_state {AppState}

pub fn mkdir (mut state &AppState, params []string) Primitive {
	for param in params {
		os.mkdir("$state.location/$param") or {}
	}
	return params.len
}

