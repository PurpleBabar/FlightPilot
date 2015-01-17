{extends 'Errors/layout.tpl'}
{block name='header'}
<div><h1 class="topRadius bottomRadius"> Error 500 </h1></div>
{/block}
{block name='content'}
<div class="main">
	<h4 class="topRadius">Something happened !</h4>
	<p class="bottomRadius"> <b>Error {$code} :</b> {$message} in {$file} <b>on line {$line}</b></p>
</div>

{* {$traceString} *}
<div class="trace">
	<h4 class="topRadius">Trace</h4>
	<ul class="bottomRadius">
		{foreach $trace as $tr}
			{if $tr@index is even}
			<li class="even">
				<span class="one">in {$tr.file} on line {$tr.line}</span>
				<span class="two"><b>Class</b> : {$tr.class} <b>Function</b> : {$tr.function}</span>
			</li>
			{else}
			<li>
				<span class="one">in {$tr.file} on line {$tr.line}</span>
				<span class="two"><b>Class</b> : {$tr.class} <b>Function</b> : {$tr.function}</span>
			</li>
			{/if}
		{/foreach}
	</ul>
</div>
{/block}