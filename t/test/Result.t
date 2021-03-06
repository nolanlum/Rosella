INIT {
    my $rosella := pir::load_bytecode__PS("rosella/core.pbc");
    Rosella::initialize_rosella("test", "mockobject");
    # I would rather not use MockObject to test Test, since the former
    # depends on the latter. However, there is no other good way to test
    # Result
}

Rosella::Test::test(Test::Result::Test);

class MyFakeTest {
    method test_one() {}
}

class Test::Result::Test {
    sub get_listener_controller() {
        my $factory := Rosella::construct(Rosella::MockObject::Factory);
        return $factory.create_typed(Rosella::Test::Listener);
    }

    method test_BUILD() {
        my $result := Rosella::construct(Rosella::Test::Result, []);
        $!assert.not_null($result);
        $!assert.equal($result.was_successful(), 1);
    }

    method test_plan_tests() {
        my $c := get_listener_controller();
        $c.expect_method("plan_tests").once().with_args(3);
        my $m := $c.mock();
        my $result := Rosella::construct(Rosella::Test::Result, [$m]);
        $result.plan_tests(3);
        $c.verify();
    }

    method test_start_test() {
        my $clistener := get_listener_controller();
        $clistener.expect_method("start_test").once.with_any_args;
        my $mlistener := $clistener.mock();
        my $testcontext := "dummy";
        my $result := Rosella::construct(Rosella::Test::Result, [$mlistener]);
        my $faketest := MyFakeTest.new();
        $result.start_test($faketest, $testcontext);
        $clistener.verify();
    }

    method test_end_test() {
        my $c := get_listener_controller();
        my $faketest := MyFakeTest.new();
        $c.expect_method("end_test").once.with_any_args;
        my $m := $c.mock();
        my $testcontext := "dummy";
        my $result := Rosella::construct(Rosella::Test::Result, [$m]);
        $result.end_test($faketest, $testcontext);
        $c.verify();
    }

    method test_add_failure_string() {
        $!status.unimplemented("Add a test for this new behavior");
    }

    method test_add_failure_ex() {
        $!status.unimplemented("Add a test for this new behavior");
    }

    method test_add_failure_Failure() {
        $!status.unimplemented("Add a test for this new behavior");
    }

    method test_add_error() {
        #my $c := get_listener_controller();
        #my $faketest := MyFakeTest.new();
        #$c.expect_method("add_error").once.with_any_args;
        #my $m := $c.mock();
        #my $result := Rosella::construct(Rosella::Test::Result, [$m]);
        #$!assert.equal($result.was_successful, 1);
        #$result.add_error($faketest, "context", "oops");
        #$c.verify();
        #$!assert.equal($result.was_successful, 0);
        $!status.unimplemented("This logic path has changed. Update the test");
    }

    method test_add_failure() {
        #my $c := get_listener_controller();
        #my $faketest := MyFakeTest.new();
        #$c.expect_method("add_failure").once.with_any_args;
        #my $m := $c.mock();
        #my $result := Rosella::construct(Rosella::Test::Result, [$m]);
        #$!assert.equal($result.was_successful, 1);
        #$result.add_failure($faketest, "context", "oops");
        #$c.verify();
        #$!assert.equal($result.was_successful, 0);
        $!status.unimplemented("This logic path has changed. Update the test");
    }
}
