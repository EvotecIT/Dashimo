
$Process = Get-Process | Select-Object -First 30

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\Dashboard1.html {
    Section -Name 'Test' -Height 500 {
        Table -DataTable $Process
    }
}