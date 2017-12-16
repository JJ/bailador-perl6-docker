use Bailador;

get '/' => sub {
    content_type('application/json');
    return to-json { :status<OK> };
}

baile();
