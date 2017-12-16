use Bailador;

get '/' => sub {
    return to-json { :status<OK> };
}

baile();
