package App::Controller::Foo;

use Mojo::Base 'Mojolicious::Controller', -signatures;

sub hello ($c) {
    $c->render( text => $c->ua->get( $c->app->config->{api} )->result->text );
}

1;
