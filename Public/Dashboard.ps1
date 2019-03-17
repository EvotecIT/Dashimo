function Dashboard {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)][ValidateNotNull()][ScriptBlock] $Content = $(Throw "Dashboard requires opening and closing brace."),
        [string] $Name,
        [string] $FilePath
    )
    Begin {}
    Process {    
        $DynamicHTML = New-HTML -TitleText $Name -UseCssLinks:$true -UseJavaScriptLinks:$true {   
            $Object = Invoke-Command -ScriptBlock $Content
            $Object
        }

    }
    End {
        [string] $DynamicHTMLPath = Save-HTML -HTML $DynamicHTML -FilePath $FilePath
    }
}