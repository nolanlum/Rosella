INIT {
    pir::load_bytecode("rosella/core.pbc");
    pir::load_bytecode("rosella/test.pbc");
}

Rosella::Test::test(ErrorTest);

class ErrorTest {
    method test_foo() {
        Assert::equal(0,1);
    }
}
