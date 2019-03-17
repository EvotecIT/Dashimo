function Table {
    [CmdletBinding()]
    param(
        [Array] $DataTable,
        [switch] $HideFooter
    )
    New-HTMLTable -DataTable $DataTable -HideFooter:$HideFooter
}