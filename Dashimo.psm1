#Get public and private function definition files.
$Public = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue -Recurse )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue -Recurse )

#Dot source the files
Foreach ($Import in @($Public + $Private)) {
    Try {
        . $Import.fullname
    } Catch {
        Write-Error -Message "Failed to Import function $($Import.fullname): $_"
    }
}
Export-ModuleMember -Function '*'