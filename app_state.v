module app_state

pub struct AppState {
	pub mut:
		location string
		last_value string
		shebang rune
}

