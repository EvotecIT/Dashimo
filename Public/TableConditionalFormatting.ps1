function TableConditionalFormatting {
    [CmdletBinding()]
    param(
        [alias('ColumnName')][string] $Name,
        [alias('Type')][ValidateSet('number', 'string')][string] $ComparisonType,
        [ValidateSet('lt', 'le', 'eq', 'ge', 'gt')][string] $Operator,
        [Object] $Value,
        [switch] $Row,
        [nullable[RGBColors]] $Color,
        [nullable[RGBColors]] $BackgroundColor
    )
    return [PSCustomObject] @{ Row = $Row; Type = $ComparisonType ; Name = $Name; Operator = $Operator; Value = $Value; Color = $Color; BackgroundColor = $BackgroundColor }
}