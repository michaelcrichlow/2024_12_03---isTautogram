package test

import "core:fmt"
import "core:strings"
import "core:sys/windows"
import "core:time"
print :: fmt.println

main :: proc() {
	windows.SetConsoleOutputCP(windows.CODEPAGE.UTF8)
	start: time.Time = time.now()

	// code goes here
	print(isTautogram("Tautogram Test tin the tulips"))
	print(isTautogram("She sells sea shells by the sea shore"))
	print(
		isTautogram("Big black bugs bleed blue black blood but baby black bugs bleed blue blood"),
	)

	elapsed: time.Duration = time.since(start)
	print("Odin took:", elapsed)

	free_all(context.temp_allocator)

	// OUTPUT:
	// true
	// false
	// true
	// Odin took: 344.6µs
}

isTautogram :: proc(s: string) -> bool {
	_s := strings.to_lower(s, context.temp_allocator)
	_s_list := strings.split(_s, " ", context.temp_allocator)
	comparison := _s_list[0][0]

	for val in _s_list {
		if val[0] != comparison do return false
	}

	return true
}
