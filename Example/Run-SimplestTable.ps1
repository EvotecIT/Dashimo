
$Process = Get-Process | Select-Object -First 30

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardSimplestTable.html {
    Table -DataTable $Process -DefaultSortIndex 4 -ScrollCollapse -HideFooter
}