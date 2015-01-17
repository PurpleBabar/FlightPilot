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
        <style type="text/css">
            html {
              box-sizing: border-box;
            }
            *, *:before, *:after {
              box-sizing: inherit;
            }
            body {
                box-sizing: border-box;
                background-color: #B3B3B3;
            }
            div{
                max-width: 1024px;
                min-width: 400px;
                margin:0 auto;
            }
            p{
                padding: 10px;
            }
            .topRadius{
                -webkit-border-top-left-radius: 20px;
                -webkit-border-top-right-radius: 20px;
                -moz-border-radius-topleft: 20px;
                -moz-border-radius-topright: 20px;
                border-top-left-radius: 20px;
                border-top-right-radius: 20px;
                margin-bottom: 0;
                background-color: #865F93;
                color: #ffffff;
            }
            .bottomRadius{
                border: 1px solid #865F93;
                -webkit-border-bottom-right-radius: 20px;
                -webkit-border-bottom-left-radius: 20px;
                -moz-border-radius-bottomright: 20px;
                -moz-border-radius-bottomleft: 20px;
                border-bottom-right-radius: 20px;
                border-bottom-left-radius: 20px;
                margin-top: 0;
                background-color: #ffffff;
            }
            .one{
                display: block;
            }
            .two{
                display: block;
                font-style: italic;
                padding-left: 25px;
            }
            .trace ul{
                min-height: 20px;
                padding-left: 0;
            }
            li{
                padding: 5px 10px;
                list-style: none;
            }
            .even{
                background-color: #efefef;
            }
            h1{
                text-align: center;
                background-color: #865F93!important;
                color: #ffffff!important;
            }
            h4{
                border-bottom: 1px solid #865F93;
                padding: 10px;
            }
        </style>
        {/block}

    </head>
    {/block}
    
    <body>
        <header>{block name='header'}{/block}</header>
	    <section>{block name='content' nocache}{/block}</section>
        <footer>{block name='footer'}{/block}</footer>
    </body>
</html>