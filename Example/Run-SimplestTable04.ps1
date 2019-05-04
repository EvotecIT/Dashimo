$Process = Get-Process | Select-Object -First 15 | Select name, Priorityclass, fileversion, handles, cpu

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy03.html -Show {
    Section -Name 'Test2' -Collapsable {
        Container {
            Panel {
                Table -DataTable $Process -PreContent { New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center} -Buttons @() -DisableSearch -DisablePaging -HideFooter
            }
            Panel {
                Table -DataTable $Process -PreContent { New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center} -Buttons @() -DisableSearch -DisablePaging -HideFooter
            }
        }
    }

}


$Process = Get-Process | Select-Object -First 15 | Select name, Priorityclass, fileversion, handles, cpu

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy04.html -Show {
    Panel {
        Section {
            Table -DataTable $Process -PreContent { New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center} -Buttons @()
        }
        Section {
            Table -DataTable $Process -PreContent { New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center} -Buttons @()
        }
    }

}

$Process = Get-Process | Select-Object -First 15 | Select name, Priorityclass, fileversion, handles, cpu

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy05.html -Show {

    Section -Name 'Test 4' {
        Table -DataTable $Process -PreContent {
            New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center
        } -PostContent {
            Table -DataTable $Process -PreContent {
                New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center
            }
        }
    }
}

$Process = Get-Process | Select-Object -First 15 | Select name, Priorityclass, fileversion, handles, cpu

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy06.html -Show {
    Panel {
        Panel {
            Table -DataTable $Process -PreContent { New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center}
        }
        Panel {
            Table -DataTable $Process -PreContent { New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment center}
        }
    }

}

$Process = Get-Process | Select-Object -First 15 | Select name, Priorityclass, fileversion, handles, cpu

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy03.html -Show {
    Section -Name 'Test2' -Collapsable -Collapsed -TextAlignment left -TextColor Black -TextBackGroundColor Yellow {
        Table -DataTable $Process -buttons @() -DisableSearch -HideFooter -DisablePaging -PreContent {
            New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment left
        } -PostContent {
            Table -DataTable $Process -buttons @() -DisableSearch -HideFooter -DisablePaging -PreContent { New-HTMLText -Text 'TestPostContent' -Color DodgerBlue -Alignment Left
            }
        }
    }

}