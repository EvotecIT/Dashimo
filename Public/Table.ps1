function Table {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $false, Position = 0)][ScriptBlock] $ConditionalFormatting,
        [Array] $DataTable,
        [string[]][ValidateSet('copyHtml5', 'excelHtml5', 'csvHtml5', 'pdfHtml5')] $Buttons = @('copyHtml5', 'excelHtml5', 'csvHtml5', 'pdfHtml5'),
        [string[]][ValidateSet('numbers', 'simple', 'simple_numbers', 'full', 'full_numbers', 'first_last_numbers')] $PagingStyle = 'full_numbers',
        [int[]]$PagingOptions = @(15, 25, 50, 100),
        [switch]$DisablePaging,
        [switch]$DisableOrdering,
        [switch]$DisableInfo,
        [switch]$HideFooter,
        [switch]$DisableColumnReorder,
        [switch]$DisableProcessing,
        [switch]$DisableResponsiveTable,
        [switch]$DisableSelect,
        [switch]$DisableStateSave,
        [switch]$DisableSearch,
        [switch]$ScrollCollapse,
        [switch]$OrderMulti,
        [string[]][ValidateSet('display', 'cell-border', 'compact', 'hover', 'nowrap', 'order-column', 'row-border', 'stripe')] $Style = @('display', 'compact'),
        [string]$TextWhenNoData = 'No data available.',
        [int] $ScreenSizePercent = 0,
        [string] $DefaultSortColumn,
        [int] $DefaultSortIndex = -1,
        [ValidateSet('Ascending', 'Descending')][string] $DefaultSortOrder = 'Ascending',
        [alias('Search')][string]$Find
    )
    New-HTMLTable -DataTable $DataTable `
        -HideFooter:$HideFooter `
        -Buttons $Buttons -PagingStyle $PagingStyle -PagingOptions $PagingOptions `
        -DisablePaging:$DisablePaging -DisableOrdering:$DisableOrdering -DisableInfo:$DisableInfo -DisableColumnReorder:$DisableColumnReorder -DisableProcessing:$DisableProcessing `
        -DisableResponsiveTable:$DisableResponsiveTable -DisableSelect:$DisableSelect -DisableStateSave:$DisableStateSave -DisableSearch:$DisableSearch -ScrollCollapse:$ScrollCollapse `
        -Style $Style -TextWhenNoData:$TextWhenNoData -ScreenSizePercent $ScreenSizePercent `
        -ConditionalFormatting $ConditionalFormatting `
        -DefaultSortColumn $DefaultSortColumn -DefaultSortIndex $DefaultSortIndex -DefaultSortOrder $DefaultSortOrder `
        -Find $Find -OrderMulti:$OrderMulti
}