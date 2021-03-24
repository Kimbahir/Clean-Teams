# Cleaning up the cache tables in Microsoft Teams for performance
# USE AT YOUR OWN RISK

$root = "$env:APPDATA\Microsoft\Teams"
Get-ChildItem -Path "$root\Application Cache\Cache" -Include *.* -File -Recurse | foreach { $_.Delete()}
Get-ChildItem -Path "$root\Blob_storage" -Include *.* -File -Recurse | foreach { $_.Delete()}
Get-ChildItem -Path "$root\Cache" -Include *.* -File -Recurse | foreach { $_.Delete()}
Get-ChildItem -Path "$root\databases" -Include *.* -File -Recurse | foreach { $_.Delete()}
Get-ChildItem -Path "$root\GPUCache" -Include *.* -File -Recurse | foreach { $_.Delete()}
Get-ChildItem -Path "$root\IndexedDB" -Include *.* -File -Recurse | foreach { $_.Delete()}
Get-ChildItem -Path "$root\Local Storage" -Include *.* -File -Recurse | foreach { $_.Delete()}