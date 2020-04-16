param($ServerName="asazure://aspaaseastus2.asazure.windows.net/azprsvratanalsvc01t")
$loadInfo = [Reflection.Assembly]::LoadWithPartialName("Microsoft.AnalysisServices")
$uid = "WESTON_NT\AABrar"
$uid = "Vinayaka420$"

$server = New-Object Microsoft.AnalysisServices.Server
$server.connect($ServerName)
if ($server.name -eq $null) {
 Write-Output ("Server '{0}' not found" -f $ServerName)
 break
}

foreach ($d in $server.Databases )
{
 #Write-Output ( "Database: {0}; Status: {1}; Size: {2}MB" -f $d.Name, $d.State, ($d.EstimatedSize/1024/1024).ToString("#,##0") )

 #foreach ($cube in $d.Cubes) {
 # Write-Output ( " Cube: {0}" -f $Cube.Name )
  #foreach ($mg in $cube.MeasureGroups) {
   #Write-Output ( "  MG: {0}; Status: {1}; Size: {2}MB" -f $mg.Name.PadRight(25), $mg.State, ($mg.EstimatedSize/1024/1024).tostring("#,##0"))
   #foreach ($part in $mg.Partitions) {
    #Write-Output ( "   Partition: {0}; Status: {1}; Size: {2}MB" -f $part.Name.PadRight(35), $part.State, ($part.EstimatedSize/1024/1024).ToString("#,##0") )
   #} # Partition
  } # Measure group
  foreach ($dim in $d.Dimensions) {
   Write-Output ( "Dimension: {0}" -f $dim.Name)
  } # Dimensions

 #} # Cube

#} # Databases