# Skript kustutab kasutaja tema ees ja perenime põhjal
Echo "Sisesta eesnimi"
$eesnimi=Read-Host
Echo "Sisesta oma perekonnanimi"
$perenimi=Read-Host
$kasutajanimi=$eesnimi.ToLower() + "." + $perenimi.ToLower()
$ErrorActionPreference = "SilentlyContinue"
Remove-LocalUser "$kasutajanimi"
if(!$?)
{
Echo "Viga! kontot ei ole olemas."
}
else
{
Echo "Konto $kasutajanimi on kustutatud"
}
$ErrorActionPreference = "Stop"