<?php

class IndexController{
	public static function index(){
		$string = "Hello world !";

		Flight::render('templates/index.tpl', array(
			'string' => $string
		));
	}
}