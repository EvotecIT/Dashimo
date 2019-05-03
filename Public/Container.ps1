function Container {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Container requires opening and closing brace.")
    )
    New-HTMLContainer -HTML $Content
}