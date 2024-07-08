# MyPowerShellScripts

Welcome to the MyPowerShellScripts repository! This repository is a collection of various PowerShell scripts that I use for different purposes. Each script is designed to help automate and simplify tasks, making my workflow more efficient.

## Repository Structure

The repository is organized with individual scripts saved as `.ps1` files. Each script is documented to explain its purpose, usage, and any necessary parameters.

## Available Scripts

### AzureFunctionSolutionSetup.ps1

This PowerShell script automates the process of setting up an Azure Function project within a solution structure. It creates a new solution, initializes a Function App project, adds it to the solution, creates a new HTTP-triggered function, and builds the solution.

#### Prerequisites

- PowerShell
- .NET Core SDK
- Azure Functions Core Tools

#### Usage

```powershell
.\AzureFunctionSolutionSetup.ps1 -BaseDirectory <path> -SolutionName <name> -ProjectName <name> [-Runtime <runtime>]
```

#### Parameters

- `-BaseDirectory` (Mandatory): The base directory where the solution will be created.
- `-SolutionName` (Mandatory): The name of the solution.
- `-ProjectName` (Mandatory): The name of the Function App project.
- `-Runtime` (Optional): The runtime for the Function App. Default is "dotnet".
  - Valid options: "dotnet", "java", "node", "powershell", "python", "custom"

#### What the Script Does

1. Creates a new directory for the solution.
2. Creates a new .NET solution.
3. Initializes a new Function App project.
4. Adds the Function App project to the solution.
5. Creates a new HTTP-triggered function in the Function App.
6. Builds the solution.

#### Example

```powershell
.\AzureFunctionSolutionSetup.ps1 -BaseDirectory "C:\Projects" -SolutionName "MyAzureSolution" -ProjectName "MyFunctionApp" -Runtime "dotnet"
```

This command will create a new solution named "MyAzureSolution" with a Function App project named "MyFunctionApp" in the "C:\Projects" directory, using the .NET runtime.

#### Note

Make sure you have the necessary permissions to create directories and files in the specified base directory.

#### Output

Upon successful execution, the script will output:

```
Solution structure is set up and built successfully.
```

#### Troubleshooting

If you encounter any issues:

1. Ensure all prerequisites are installed and up to date.
2. Check that you have the necessary permissions in the specified directory.
3. Verify that the provided runtime is one of the allowed options.

For more information on Azure Functions, visit the [official documentation](https://docs.microsoft.com/en-us/azure/azure-functions/).

## Contributing

If you have any scripts that you think would be useful to add to this repository, feel free to submit a pull request. Please ensure that your scripts are well-documented and follow the structure of existing scripts.

## License

This project is licensed under the MIT License. See the [LICENSE](https://opensource.org/license/MIT) file for details.

## Contact

For any questions or suggestions, please open an issue or contact me at [cmreynol@protonmail.com](mailto:cmreynol@protonmail.com).