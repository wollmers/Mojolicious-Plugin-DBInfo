package MyApp;
use Mojo::Base 'Mojolicious';

sub startup {
  my $app = shift;

  $app->plugin('Mojolicious::Plugin::DBInfo');
  
  my $routes = $app->routes;
  $routes->any('/' => sub { shift->render(text => 'Hello World.') } );
  #$routes->any('/dbinfo' => sub { shift->render } );
}

1;
