function ManageAstroneerVM {
    [cmdletbinding ()]
    param(
        # Action to perform
        [Parameter(Mandatory, Position = 0)]
        [ValidateSet('shutdown', 'startup')]
        [string]
        $action,

        # Static HTTP endpoint URI and key
        [Parameter()]
        [string]
        $LogicAppURI = ''
    )
    $headers    = @{
        "content-type" = 'application/json'
        }

    $body       = ( @{"action" = $action } | ConvertTo-Json )

    Invoke-RestMethod -Uri $LogicAppURI -Method Post -Headers $headers -Body $body
    if ($?)
    {
        Write-Host "VM will $action in a few seconds"
    }
}