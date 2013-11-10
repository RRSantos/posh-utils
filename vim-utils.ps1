$warnColor = "yellow";
$nl = [Environment]::NewLine;
function edit ()
{
  $message = "$nl Vim is already running. $nl Opening with '--remote switch' $nl"; 
  $param = $args;
  $exe = "C:\Program Files (x86)\Vim\vim73\gvim.exe";
  if (get-process | ?{$_.path -eq $exe})
  {
	Write-host $message -foregroundcolor $warnColor;
	$param = "--remote", $args;
  }
  &$exe $param;
  
}

