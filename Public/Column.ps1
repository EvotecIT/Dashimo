function Panel {
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Panel requires opening and closing brace."),
        [string] $Name,
        [ValidateSet('1', '2', '3', '4', '5 ', '6', '7', '8', '9', '10', '11', '12')] $Count = 1,
        [switch] $Invisible
    )
    Begin {}
    Process {
        New-HTMLPanel -Count $Count -Invisible:$Invisible {
            $Object = Invoke-Command -ScriptBlock $Content
            if ($null -ne $Object) {
                $Object
            }
        }
    }
    End {}
}