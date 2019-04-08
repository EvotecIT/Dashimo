function Section {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Section requires opening and closing brace."),
        [string] $Name,
        [switch] $Collapsable,
        [switch] $Collapsed,
        [switch] $Invisible,
        [RGBColors] $Text
    )
    New-HTMLContent -HeaderText $Name -CanCollapse:$Collapsable -Invisible:$Invisible -Collapsed:$Collapsed {
        $Object = Invoke-Command -ScriptBlock $Content
        if ($null -ne $Object) {
            $Object
        }
    }
}