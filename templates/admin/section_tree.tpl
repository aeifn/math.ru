{include file="header.tpl"}
{foreach from=$section_path item=s}
<a href="/admin/section_tree.php?id={$s.id}">{$s.name}</a>/
{/foreach}
{if $id!=1}<div align=right><input type=button onclick="document.location='/admin/section.php?id={$id}'" value="Изменить"></div>{/if}
<hr size=1 noshade>
<b>Подразделы</b>
<div align=right><input type=button onclick="document.location='/admin/section.php?pid={$id}'" value="Добавить раздел"></div>
<!--
{foreach from=$section item=s}
{""|indent:$s.level-1:"&nbsp;&nbsp;&nbsp;&nbsp;"}<a href="/admin/section_tree.php?sid={$s.id}">{$s.name}</a><br>
{/foreach}
-->
<table width=100% valign=top cellpadding=10><tr>
{foreach from=$section item=row}
<td valign=top><table border=0 cellspacing=3 cellpadding=0>
{foreach from=$row item=s}
<tr><td><a href=/admin/section_tree.php?id={$s.id} {literal}style="{font-family:monospaced;}"{/literal}>{$s.name|replace:" ":"&nbsp;"}</a></td></tr>
{/foreach}
</table></td>
{/foreach}
</tr></table>
<hr size=1 noshade>
<b>Задачи</b>
<div align=right><input type=button onclick="document.location='/admin/problem.php?sid={$id}'" value="Добавить задачу"></div>
{include file=pages_info.tpl}
{include file="pages.tpl"}<br>
{section loop=$problem name=i}
<b>Задача #{$problem[i].id}</b><br>
{$problem[i].tex_problem}<br>
<div align=right><a href="/admin/problem.php?id={$problem[i].id}">Редактировать</a></div>
<hr size=1 noshade>
{/section}
<br>{include file="pages.tpl"}

