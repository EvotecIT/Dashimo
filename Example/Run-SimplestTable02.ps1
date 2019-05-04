$Process = Get-Process | Select-Object -First 1

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy01.html -Show {
    Section -Name 'Test1' -TextAlignment left -TextBackGroundColor BlueViolet {
        Table -DataTable $Process
        Table -DataTable $Process
    }
    Section -Name 'Test3' -BackgroundColor DarkOrange {
        Table -DataTable $Process
        Table -DataTable $Process1
    }
    Section -Name 'Test2' -Collapsable {
        Panel {
            Table -DataTable $Process
        }
        Panel {
            Table -DataTable $Process
        }
    }
}