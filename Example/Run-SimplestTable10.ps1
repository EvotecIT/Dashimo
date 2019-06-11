$Process = Get-Process | Select-Object -First 30

Dashboard -Name 'Dashimo Test' -FilePath $PSScriptRoot\Output\DashboardEasy10.html -Show {
    TabOptions -SlimTabs
    Tab -Name 'Test 0' -IconSolid user-alt -IconColor Green {
        Table -DataTable $Process -HideFooter {
            TableButtonExcel
            TableButtonPageLength
            TableConditionalFormatting -Name 'ID' -ComparisonType number -Operator gt -Value 10000 -Color BlueViolet -Row
            TableConditionalFormatting -Name 'Name' -ComparisonType string -Operator eq -Value 'chrome' -Color White -BackgroundColor Crimson -Row
            TableConditionalFormatting -Name 'PriorityClass' -ComparisonType string -Operator eq -Value 'Idle' -Color White -BackgroundColor Green
        }
    }
    Tab -Name 'Test 1' -IconBrands adobe {
        Section -Name 'Test' -Collapsable {
            Table -DataTable $Process -HideFooter {
                TableConditionalFormatting -Name 'ID' -ComparisonType number -Operator gt -Value 10000 -Color BlueViolet -Row
                TableConditionalFormatting -Name 'Name' -ComparisonType string -Operator eq -Value 'chrome' -Color White -BackgroundColor Crimson -Row
                TableConditionalFormatting -Name 'PriorityClass' -ComparisonType string -Operator eq -Value 'Idle' -Color White -BackgroundColor Green
            }
        }
    }
    Tab -Name 'Test 2' -IconRegular clone -TextColor Gold -IconColor MediumPurple {
        Section -Name 'Test' -Collapsable {
            Table -DataTable $Process -HideFooter {
                TableConditionalFormatting -Name 'ID' -ComparisonType number -Operator gt -Value 10000 -Color BlueViolet -Row
                TableConditionalFormatting -Name 'Name' -ComparisonType string -Operator eq -Value 'chrome' -Color White -BackgroundColor Crimson -Row
                TableConditionalFormatting -Name 'PriorityClass' -ComparisonType string -Operator eq -Value 'Idle' -Color White -BackgroundColor Green
            }
        }
    }
}