use Test2::V0;
use Test::Mojo;

subtest 'App with external service' => sub {
    ok( my $t = Test::Mojo->new('App', { api => '/' }),
        'should create a test instance',
    );

    my $mock = Mojolicious->new();
    $mock->routes->get( '/' => { text => 'Hello World!' } );

    $t->app->ua->server->app($mock);
    $t->get_ok('/')->status_is(200)->content_is('Hello World!');
};

done_testing();
