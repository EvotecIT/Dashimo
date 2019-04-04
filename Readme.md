# Dashimo - PowerShell Module

Dashimo is very simple, intuitive PowerShell generated HTML file. That's right. A single, static HTML file that you can send to email or host on a website. Dashimo is based on [PSWriteHTML](https://github.com/EvotecIT/PSWriteHTML) which I've written and is under development. What you can do in **Dashimo** you can do there and more. If you would like to help with development all code related to HTML/JS/CSS is on PSWriteHTML repo.

### Changelog

- 0.0.2 - 4.04.2019 - https://evotec.xyz/dashimo-easy-table-conditional-formatting-and-more/
  - conditional formatting
  - more exposed parameters to Table
  - description of Autorefresh
  - Show parameter for dashboard

- 0.0.1 - 01.04.2019 - https://evotec.xyz/meet-dashimo-powershell-generated-dashboard/ is an overview of what Dashimo is.



### Examples

#### Conditional formatting in action...

```
$Process = Get-Process | Select-Object -First 30

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardSimplestTableConditions.html -Show {
    Table -DataTable $Process -HideFooter {
        TableConditionalFormatting -Name 'ID' -ComparisonType number -Operator gt -Value 10000 -Color BlueViolet -Row
        TableConditionalFormatting -Name 'Name' -ComparisonType string -Operator eq -Value 'chrome' -Color White -BackgroundColor Crimson -Row
        TableConditionalFormatting -Name 'PriorityClass' -ComparisonType string -Operator eq -Value 'Idle' -Color White -BackgroundColor Green
    }
}
```


![Example 1](https://evotec.xyz/wp-content/uploads/2019/04/img_5ca65ee575364.png)

#### Easy example:

```
$Process = Get-Process | Select-Object -First 30

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardSimplestTable.html -AutoRefresh 15 -Show {
    Table -DataTable $Process -DefaultSortIndex 4 -ScrollCollapse -HideFooter -Buttons @()
}
```

![Example 2](https://evotec.xyz/wp-content/uploads/2019/04/img_5ca6630b99a20.png)


#### Complicated, still easy example:
```

$Process = Get-Process | Select-Object -First 30
$Process1 = Get-Process | Select-Object -First 5
$Process2 = Get-Process | Select-Object -First 10
$Process3 = Get-Process | Select-Object -First 10

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\DashboardEasy.html -Show {
    Tab -Name 'First tab' {
        Section -Name 'Test' {
            Table -DataTable $Process
        }
        Section -Name 'Test2' {
            Panel {
                Table -DataTable $Process1
            }
            Panel {
                Table -DataTable $Process1
            }
        }
        Section -Name 'Test3' {
            Table -DataTable $Process -DefaultSortColumn 'Id'
        }
    }
    Tab -Name 'second tab' {
        Panel {
            Table -DataTable $Process2
        }
        Panel {
            Table -DataTable $Process2
        }
        Panel {
            Table -DataTable $Process3 -DefaultSortIndex 4
        }
    }
}
```

![Example 3](https://evotec.xyz/wp-content/uploads/2019/04/img_5ca663f83afa1.png)