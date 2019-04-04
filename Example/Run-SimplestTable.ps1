
$Process = Get-Process | Select-Object -First 30

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardSimplestTable.html -AutoRefresh 15 -Show {
    Table -DataTable $Process -DefaultSortIndex 4 -ScrollCollapse -HideFooter -Buttons @()
}