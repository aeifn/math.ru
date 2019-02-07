{include file="header.tpl"}
{literal}
<script type="text/javascript" language="JavaScript">
<!--
var ie4, nn4, nn6
    ie4 = nn4 = nn6

	if (document.all)
		{ie4 = 1}
	if (document.layers)
		{nn4 = 1}
	if (document.getElementById&&!ie4)
		{nn6 = 1}	
		
function getinfoU(ie,nn,button)
{
buttonname = "solutionbutton" + button
if (ie4)
	{
	if (document.all.item(ie).style.display == '') 
	  {
	  document.all.item(ie).style.display = 'none'
	  document.all.item(buttonname).value = 'Показать решение'
	  document.all.item(buttonname).title = 'Показать решение'

	  }
	  else
	  {
	  document.all.item(ie).style.display = ''
	  document.all.item(buttonname).value = 'Скрыть решение'
	  document.all.item(buttonname).title = 'Скрыть решение'
	  }
	}
if (nn6)
	{
	if (document.getElementById(ie).style.display == '') 
	  {
	  document.getElementById(ie).style.display = 'none'
	  document.all.item(buttonname).value = 'Показать решение'
	  document.all.item(buttonname).title = 'Показать решение'
	  }
	  else
	  {
   	document.getElementById(ie).style.display = ''
	  document.all.item(buttonname).value = 'Скрыть решение'
	  document.all.item(buttonname).title = 'Скрыть решение'
	  }
	}	

}
-->
</script>
{/literal}

<table border="0" cellpadding="10" cellspacing="5" width="100%" valign="top">
{foreach from=$problems item=p}
<tr><td>
<b>Задача {$p.num}</b>
<div align=right><a href="/olympiads/mmo/texproblem.php?id={$p.id}">Скачать TеX-вариант</a></div><br/>
<img src=/olympiads/mmo/png/{$p.id}_p.png>
<br/>
{foreach from=$problem.ppic item=pic}
{$pic.num}
<img src="/olympiads/pic/{$problem.id}p_{$pic.num}.{$pic.type}"/><br/>
{/foreach}
<br/>
<input id="solutionbutton{$p.id}" type="button" class="solutionbutton" value="Показать решение" onclick="getinfoU('solution{$p.id}', 'document.solution{$p.id}', {$p.id})" title="Показать решение" />
</td></tr>
<tr id="solution{$p.id}" style="display:none;"><td>
<div><b>Решение</b><br/>
<img src=/olympiads/mmo/png/{$p.id}_s.png>
</td></tr>
{/foreach}
</table>
{include file="footer.tpl"}