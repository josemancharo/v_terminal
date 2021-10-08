module types

pub struct Zilch {}

pub type Primitive = int | string | bool | f32 | Zilch

pub fn primitive_to_string(val Primitive) string {
	match val {
		Zilch {
			return "Zilch"
		}
		int {
			return "$val"
		}
		f32 {
			return "$val"
		}
		string {
			return val
		}
		bool {
			return "$val"
		}
	}
}