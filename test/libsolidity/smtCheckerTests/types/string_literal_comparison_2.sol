pragma experimental SMTChecker;

contract C {
	function f(bytes32 _x) public pure {
		require(_x != "test");
		bytes32 y = _x;
		bytes32 z = _x;
		assert(z == "test");
		assert(y != "testx");
	}
}
// ----
// Warning 4661: (147-166): Assertion violation happens here
// Warning 4661: (170-190): Assertion violation happens here
