param (
    [Parameter(Mandatory=$true)]
    [string]$BaseDirectory,

    [Parameter(Mandatory=$true)]
    [string]$SolutionName,

    [Parameter(Mandatory=$true)]
    [string]$ProjectName,

    [Parameter(Mandatory=$false)]
    [ValidateSet("dotnet", "java", "node", "powershell", "python", "custom")]
    [string]$Runtime = "dotnet"
)

# 1. Create a new directory for your solution
$solutionDir = Join-Path -Path $BaseDirectory -ChildPath $SolutionName
New-Item -ItemType Directory -Path $solutionDir -Force
Set-Location -Path $solutionDir

# 2. Create a new solution
dotnet new sln -n $SolutionName

# 3. Create the Function App project
func init $ProjectName --$Runtime

# 4. Add projects to the solution
dotnet sln add "$ProjectName/$ProjectName.csproj"

# 5. Create a new function in the Function App
Set-Location -Path "$solutionDir\$ProjectName"
$FunctionName = "${ProjectName}Functions"
func new --name $FunctionName --template "HTTP trigger"
Set-Location -Path $solutionDir

# 6. Build the solution to ensure everything is set up correctly
dotnet build

Write-Output "Solution structure is set up and built successfully."
