class AcmeException : System.Exception
{
    [PSObject]$Problem
    [string]$ProblemRaw

    AcmeException($Message,$Data) : base($Message) {
        $this.Problem = $Data
        $this.ProblemRaw = $Data | ConvertTo-Json -Depth 5
    }
}
