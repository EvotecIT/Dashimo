$Process = Get-Process | Select-Object -First 1

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy03.html -Show {
    Section -Name 'Test1' -TextAlignment left -TextBackGroundColor BlueViolet {
        Table -DataTable $Process
        Table -DataTable $Process -PreContent {
            New-HTMLText -Text 'TestPreContent' -Color Coral -Alignment center
        } -PostContent {
            # Notice how I'm adding table below another table in a very specific scenario
            New-HTMLText -Text 'TestPostContent' -Color Coral -Alignment center
            Table -DataTable $Process
        }
    }
    Section -Name 'Test3' -BackgroundColor DarkOrange {
        Table -DataTable $Process
        Container {
            # a different way to add post and pre content
            Table -DataTable $Process1
            New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center
            Table -DataTable $Process
        }
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