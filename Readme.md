<p align="center">
  <a href="https://www.powershellgallery.com/packages/Dashimo"><img src="https://img.shields.io/powershellgallery/v/Dashimo.svg"></a>
  <a href="https://www.powershellgallery.com/packages/Dashimo"><img src="https://img.shields.io/powershellgallery/vpre/Dashimo.svg?label=powershell%20gallery%20preview&colorB=yellow"></a>
  <a href="https://github.com/EvotecIT/Dashimo"><img src="https://img.shields.io/github/license/EvotecIT/Dashimo.svg"></a>
</p>

<p align="center">
  <a href="https://www.powershellgallery.com/packages/Dashimo"><img src="https://img.shields.io/powershellgallery/p/Dashimo.svg"></a>
  <a href="https://github.com/EvotecIT/Dashimo"><img src="https://img.shields.io/github/languages/top/evotecit/Dashimo.svg"></a>
  <a href="https://github.com/EvotecIT/Dashimo"><img src="https://img.shields.io/github/languages/code-size/evotecit/Dashimo.svg"></a>
  <a href="https://github.com/EvotecIT/Dashimo"><img src="https://img.shields.io/powershellgallery/dt/Dashimo.svg"></a>
</p>

<p align="center">
  <a href="https://twitter.com/PrzemyslawKlys"><img src="https://img.shields.io/twitter/follow/PrzemyslawKlys.svg?label=Twitter%20%40PrzemyslawKlys&style=social"></a>
  <a href="https://evotec.xyz/hub"><img src="https://img.shields.io/badge/Blog-evotec.xyz-2A6496.svg"></a>
  <a href="https://www.linkedin.com/in/pklys"><img src="https://img.shields.io/badge/LinkedIn-pklys-0077B5.svg?logo=LinkedIn"></a>
</p>


# Dashimo - PowerShell Module

Dashimo is very simple, intuitive PowerShell generated HTML file. That's right. A single, static HTML file that you can send to email or host on a website. Dashimo is based on [PSWriteHTML](https://github.com/EvotecIT/PSWriteHTML) which I've written and is under development. What you can do in **Dashimo** you can do there and more. If you would like to help with development all code related to **HTML/JS/CSS** is on **PSWriteHTML** repo.

### How to Install

While you can take sources and use it from here, **Dashimo** actually is composed of multiple other of my modules. To get it up and running you will neeed **PSWriteHTML**. **PSWriteHTML** will need **PSSharedGoods**, and **PSSharedGoods** will need **Connectimo** and **PSWriteColor**. You can get all that from sources but if you **just want** to use my modules you should use `Install-Module` command. It's available in PowerShell 5.1. As an added bonus when I publish modules to **PowerShellGallery** I remove any junk, minimize modules to a single file which makes them faster to load and use. I really encourage you to use module from PowerShellGallery and treat **GitHub** as highely development version.

Simply use:

```powershell
Install-Module Dashimo
```

And to update

```powershell
Update-Module Dashimo
```

That's it. Whenever there's new version you simply run the command and you can enjoy it. Remember, that you may need to close, reopen PowerShell session if you have already used module before updating it.

**The important thing** is if something works for you on production, keep using it till you test the new version on a test computer. I do changes that may not be big, but big enough that auto-update will break your code. For example, small rename to a parameter and your code stops working! Be responsible!

### Changelog

- 0.0.15 - 2019.07.01
  - [x] New-HTMLTableConditionalFormatting
    - [ ] Fix for Powershell Core, where conditional formatting wouldn't show up

- 0.0.14 - 2019.06.30
  - [x] TableHeader - removing need for AddRow switch
    - [ ] If used with only Title it will assume AddRow
    - [ ] If used with Names it will assume merging
    - [ ] If used with Names without Title it will assume styling
    - [ ] Left AddRow for compatibility reasons, may remove it in future

- 0.0.13 - 2019.06.29 - https://evotec.xyz/all-your-html-tables-are-belong-to-us/
  - [x] Table features
    - [x] FixedHeader/FixedFooter options
    - [x] Scrolling
      - ScrollX,
      - ScrollY, ScrollSizeY
      - FreezeColumnsLeft, FreezeColumnsRight
    - [x] ResponivePriorityOrder, ResponsivePriorityOrderIndex
  - [x] TableHeader - **new command**
    - [x] Mergin header, styling header, adding header row

- 0.0.12 - 20.06.2019
  - Fix for DefaultSortColumn
  - Fix for DefaultSortOrder when set to descending

- 0.0.11 - 17.06.2019 - http://evotec.xyz/dashimo-pswritehtml-charting-icons-and-few-other-changes
  - Support for Bar Charts / Line charts
  - Support for Icons in Tabs
  - Support for Tabs options
  - Lots of small fixes
  - Couple of new features

- 0.0.10 - 28.05.2019
  - Date Time formatting for Table (added by **Ferdi Weiner (ferwe)**)

- 0.0.9 - 12.05.2019
  - Don't remember, had to be important

- 0.0.8 - 3.05.2019
  - More fixes
  - More parameters
  - added features (ability for Pre/post content for Table)
  - added features (added container - for pre/post content alternative)

- 0.0.2 - 4.04.2019 - https://evotec.xyz/dashimo-easy-table-conditional-formatting-and-more/
  - conditional formatting
  - more exposed parameters to Table
  - description of Autorefresh
  - Show parameter for dashboard

- 0.0.1 - 01.04.2019 - https://evotec.xyz/meet-dashimo-powershell-generated-dashboard/ is an overview of what Dashimo is.


### Credits

[Matthew Quickenden](https://www.linkedin.com/in/matthewquickenden/) ([@lucidqdreams](https://github.com/lucidqdreams)) - author of  ReportHTML - without him this wouldn't be possible.

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