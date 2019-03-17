function Section {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Section requires opening and closing brace."),
        [string] $Name
    )
    Begin {}
    Process {
        New-HTMLContent -HeaderText $Name {
            $Object = Invoke-Command -ScriptBlock $Content
            if ($null -ne $Object) {
                $Object
            }
        }
    }
    End {}
}