{include file="teacher/header.tpl"}
<tr>
	<td id=menucol valign=top>
{include file="menu.tpl" _path="/teacher/"}
<br/>
{if !$_user_loggedin}
{include file="login.tpl"}
{/if}
	</td>
	<td id=content valign=top align=center><div>
<!--
<a href="odaryon.php">Материалы семинара &laquo;Проблемы преподавания математики 
одарённым детям&raquo;.</a>
<br>
-->
<a href="terver.php">Материалы семинара &laquo;Методические особенности 
преподавания теории вероятностей и статистики в школе.&raquo;</a>
	</td>
</tr>
{include file="footer.tpl"}