int main(string[] args) {
	import std.stdio : readln, writeln, write;
	write("Part 1 or 2: ");
	string part = readln()[0 .. $ - 1];
	if (part != "1" && part != "2")
		return -1;

	while (true) {
		auto input = readln()[0 .. $ - 1];
		size_t increase = part == "1" ? 1 : (input.length / 2);
		size_t val;
		foreach (idx, ch; input)
			if (ch == input[(idx + increase) % input.length])
				val += ch - '0';

		val.writeln(" is the answer");
	}
}
