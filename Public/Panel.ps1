function Panel {
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Panel requires opening and closing brace."),
        [string] $Name,
        [alias('BackgroundShade')][RGBColors]$BackgroundColor,
        [switch] $Invisible
    )
    New-HTMLPanel -Invisible:$Invisible -BackgroundColor $BackgroundColor {
        $Object = Invoke-Command -ScriptBlock $Content
        if ($null -ne $Object) {
            $Object
        }
    }
}