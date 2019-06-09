function Table {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $false, Position = 0)][ScriptBlock] $HTML,
        [Parameter(Mandatory = $false, Position = 1)][ScriptBlock] $PreContent,
        [Parameter(Mandatory = $false, Position = 2)][ScriptBlock] $PostContent,
        [Array] $DataTable,
        [string[]][ValidateSet('copyHtml5', 'excelHtml5', 'csvHtml5', 'pdfHtml5')] $Buttons = @('copyHtml5', 'excelHtml5', 'csvHtml5', 'pdfHtml5', 'pageLength'),
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
        [switch]$Filtering,
        [ValidateSet('Top', 'Bottom', 'Both')][string]$FilteringLocation = 'Bottom',
        [string[]][ValidateSet('display', 'cell-border', 'compact', 'hover', 'nowrap', 'order-column', 'row-border', 'stripe')] $Style = @('display', 'compact'),
        [string]$TextWhenNoData = 'No data available.',
        [int] $ScreenSizePercent = 0,
        [string[]] $DefaultSortColumn,
        [int[]] $DefaultSortIndex,
        [ValidateSet('Ascending', 'Descending')][string] $DefaultSortOrder = 'Ascending',
        [string[]]$DateTimeSortingFormat,
        [alias('Search')][string]$Find,
        [switch] $InvokeHTMLTags,
        [switch] $DisableNewLine
    )
    New-HTMLTable -DataTable $DataTable `
        -HideFooter:$HideFooter `
        -Buttons $Buttons -PagingStyle $PagingStyle -PagingOptions $PagingOptions `
        -DisablePaging:$DisablePaging -DisableOrdering:$DisableOrdering -DisableInfo:$DisableInfo -DisableColumnReorder:$DisableColumnReorder -DisableProcessing:$DisableProcessing `
        -DisableResponsiveTable:$DisableResponsiveTable -DisableSelect:$DisableSelect -DisableStateSave:$DisableStateSave -DisableSearch:$DisableSearch -ScrollCollapse:$ScrollCollapse `
        -Style $Style -TextWhenNoData:$TextWhenNoData -ScreenSizePercent $ScreenSizePercent `
        -HTML $HTML -PreContent $PreContent -PostContent $PostContent `
        -DefaultSortColumn $DefaultSortColumn -DefaultSortIndex $DefaultSortIndex -DefaultSortOrder $DefaultSortOrder `
        -DateTimeSortingFormat $DateTimeSortingFormat -Find $Find -OrderMulti:$OrderMulti `
        -Filtering:$Filtering -FilteringLocation $FilteringLocation `
        -InvokeHTMLTags:$InvokeHTMLTags -DisableNewLine:$DisableNewLine
}