$removed = "removed";
$created = "created";
$successColor = "green";
$nl = [Environment]::NewLine;

function mdg($path)
{
	&"mkdir" $path;
	&"cd" $path;
	Write-host $nl "$path" $created $nl -foregroundcolor $successColor
}

function cdl($path)
{
	&"cd" $path;
	&"ls";
}

function rml($path)
{
	&"rm" $path;
	&"ls";
	Write-host $nl "$path" $removed $nl -foregroundcolor $successColor 
}
