# 1. Create a new directory for your solution
$solutionDir = "C:\Projects\MyFunctionSolution"
New-Item -ItemType Directory -Path $solutionDir
Set-Location -Path $solutionDir

# 2. Create a new solution
dotnet new sln -n MyFunctionSolution

# 3. Create the Function App project
func init MyFunctionApp --dotnet

# 4. Create a class library project for shared code
dotnet new classlib -n MySharedLibrary

# 5. Add projects to the solution
dotnet sln add MyFunctionApp/MyFunctionApp.csproj
dotnet sln add MySharedLibrary/MySharedLibrary.csproj

# 6. Add a reference from the Function App to the shared library
dotnet add MyFunctionApp/MyFunctionApp.csproj reference MySharedLibrary/MySharedLibrary.csproj

# 7. Create a new function in the Function App
Set-Location -Path "$solutionDir\MyFunctionApp"
func new --name MyHttpTrigger --template "HTTP trigger"
Set-Location -Path $solutionDir

# 8. Build the solution to ensure everything is set up correctly
dotnet build

Write-Output "Solution structure is set up and built successfully."
