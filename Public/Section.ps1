function Section {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Section requires opening and closing brace."),
        [string] $Name,
        [int] $Height,
        [switch] $Collapsable,
        [switch] $Invisible
    )
    New-HTMLContent -HeaderText $Name -Height $Height -CanCollapse:$Collapsable -Invisible:$Invisible {
        $Object = Invoke-Command -ScriptBlock $Content
        if ($null -ne $Object) {
            $Object
        }
    }
}