package App;

use Mojo::Base 'Mojolicious', -signatures;

sub startup ($c) {
    $c->routes->get('/')->to('foo#hello');
}

1;
