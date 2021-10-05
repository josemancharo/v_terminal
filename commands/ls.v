module commands
import os 

pub fn ls(){
	for item in os.ls(".") or {[]} {
		println(item)
	}
}