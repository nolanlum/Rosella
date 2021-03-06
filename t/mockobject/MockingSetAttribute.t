INIT {
    my $rosella := pir::load_bytecode__PS("rosella/core.pbc");
    Rosella::initialize_rosella("test", "mockobject");
}

class MyClass { }

Rosella::Test::test(Mocking::SetAttribute::Test);
class Mocking::SetAttribute::Test {
    method test_one_set_pass() {
        $!assert.expect_pass(sub() {
            my $f := Rosella::construct(Rosella::MockObject::Factory);
            my $c := $f.create_typed(MyClass);
            $c.expect_set("test").once().with_args(2);
            my $m := $c.mock();
            pir::setattribute__vPSP($m, "test", 2);
            $c.verify();
        });
    }
}
