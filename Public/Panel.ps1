function Panel {
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Panel requires opening and closing brace."),
        [string] $Name,
        [switch] $Invisible,
        [int] $Height
    )
    New-HTMLPanel -Invisible:$Invisible -Height $Height {
        $Object = Invoke-Command -ScriptBlock $Content
        if ($null -ne $Object) {
            $Object
        }
    }
}