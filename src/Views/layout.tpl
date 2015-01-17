<!DOCTYPE html>
<html>
    {block name='head'}
    <head>

        {config_load file='smarty.conf' section='page'}
        <title>{block name='title'}{#title#}{/block}</title>
       
       	{config_load file='smarty.conf' section='meta'}
        <meta name="type" content="Website"/>
        <meta name="title" content="{block name='metaTitle'}{#metaTitle#}{/block}"/>
        <meta name="description" content="{block name='metaDescription'}{#metaDescription#}{/block}"/>
    
        {block name='js'}

        {/block}  
        
        {block name='css'}
        
        {/block}

    </head>
    {/block}
    
    <body class="raleway gridlock">
        <header>{block name='header'}{/block}</header>
	    <section>{block name='content' nocache}{/block}</section>
        <footer>{block name='footer'}{/block}</footer>
    </body>
</html>