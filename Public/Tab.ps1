function Tab {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Tab requires opening and closing brace."),
        [string] $Name
    )
    New-HTMLTab -TabName $Name {
        $Object = Invoke-Command -ScriptBlock $Content
        if ($null -ne $Object) {
            $Object
        }
    }
}