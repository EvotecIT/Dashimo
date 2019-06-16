function Section {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Section requires opening and closing brace."),
        [string] $Name,
        [alias('CanCollapse')][switch] $Collapsable,
        [switch] $Collapsed,
        [switch] $Invisible,
        [RGBColors] $TextColor = [RGBColors]::White,
        [string][ValidateSet('center', 'left', 'right', 'justify')] $TextAlignment = 'center',
        [RGBColors] $TextBackGroundColor = [RGBColors]::DeepSkyBlue,
        [alias('BackgroundShade')][RGBColors]$BackgroundColor = [RGBColors]::None
    )
    New-HTMLSection -HeaderText $Name -CanCollapse:$Collapsable -Invisible:$Invisible `
        -Collapsed:$Collapsed -HeaderTextColor $TextColor -HeaderTextAlignment $TextAlignment -HeaderBackGroundColor $TextBackGroundColor -BackgroundColor $BackgroundColor -Content $Content
}