// Automatically generated test for Class Rosella.Container.LifetimeManager.Permanent
function create_new(var p_args [slurpy], var n_args [slurpy,named])
{
    return new Rosella.Container.LifetimeManager.Permanent(p_args:[flat], n_args:[flat,named]);
}

class Test_Rosella_Container_LifetimeManager_Permanent
{
    function has_instance()
    {
        self.status.verify("Test Rosella.Container.LifetimeManager.Permanent.has_instance()");
        var obj = create_new();

        var result = obj.has_instance();
        self.assert.is_false(result);

        obj.set_instance("foo");
        result = obj.has_instance();
        self.assert.is_true(result);
    }

    function set_instance()
    {
        self.status.verify("Test Rosella.Container.LifetimeManager.Permanent.set_instance()");
        var obj = create_new();

        var arg_0 = null;
        var result = obj.set_instance(arg_0);
    }

    function get_instance()
    {
        self.status.verify("Test Rosella.Container.LifetimeManager.Permanent.get_instance()");
        var obj = create_new();

        var result = obj.get_instance();
        self.assert.is_null(result);
        obj.set_instance("foo");
        result = obj.get_instance();
        self.assert.equal(result, "foo");
    }
}

function main[main]()
{
    var core = load_packfile("rosella/core.pbc");
    var(Rosella.initialize_rosella)("test");
    var(Rosella.load_bytecode_file)("rosella/container.pbc", "load");
    var(Rosella.Test.test)(class Test_Rosella_Container_LifetimeManager_Permanent);
}
