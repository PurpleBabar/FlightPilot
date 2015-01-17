<?php

// Loading
require_once __DIR__ . '/../vendor/autoload.php';

// Including all config *.php files
foreach (glob(__DIR__.'/../app'.'/config/*.php') as $filename){
	require $filename;
}
// Including all Controllers
foreach (glob(__DIR__.'/../src'.'/Controller/*.php') as $filename){
	require $filename;
}

// Including values from config.yml
$data = Spyc::YAMLLoad(__DIR__ . '/../app/config/config.yml');

// Flight
array_walk_recursive($data['flight'], function($value,$key){
	Flight::set($key, eval('return '. $value . ';'));
});

// Registering Smarty as template engine
Flight::register('view', 'Smarty', array(), function($smarty){
    $smarty->template_dir = Flight::get('flight.views.path').'/';
    $smarty->compile_dir = __DIR__.'/../app/cache/smarty_compile/';
    $smarty->config_dir = __DIR__.'/../app/config/smarty/';
    $smarty->cache_dir = __DIR__.'/../app/cache/smarty_cache/';
});

Flight::map('render', function($template, $data){
    Flight::view()->assign($data);
    Flight::view()->display($template);
});

//personnalizing errors
Flight::map('notFound', function(){
    if(file_exists(Flight::get('flight.views.path').'/Errors/404.tpl')) {
        Flight::render('Errors/404.tpl', array(
        ));
    }else{
        Flight::_notFound();
    }
});

Flight::map('error', function(\Exception $e){
    if(file_exists(Flight::get('flight.views.path').'/Errors/500.tpl')) {
        Flight::render('Errors/500.tpl', array(
            'message' => $e->getMessage(),
            'code' => $e->getCode(),
            'line' => $e->getLine(),
            'file' => $e->getFile(),
            'traceString' => $e->getTraceAsString(),
            'trace' => $e->getTrace()
        ));
    }else{
        Flight::_error($e);
    }
});
Flight::start();