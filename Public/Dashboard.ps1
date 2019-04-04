function Dashboard {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Dashboard requires opening and closing brace."),
        [string] $Name,
        [string] $FilePath,
        [int] $AutoRefresh, # in seconds
        [alias('Open')][switch] $Show
    )
    New-HTML -TitleText $Name -UseCssLinks:$true -UseJavaScriptLinks:$true -FilePath $FilePath -AutoRefresh $AutoRefresh -ShowHTML:$Show {
        $Object = Invoke-Command -ScriptBlock $Content
        $Object
    }
}