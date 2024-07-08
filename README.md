
# MyPowerShellScripts

Welcome to the MyPowerShellScripts repository! This repository is a collection of various PowerShell scripts that I use for different purposes. Each script is designed to help automate and simplify tasks, making my workflow more efficient.

## Repository Structure

The repository is organized with individual scripts saved as `.ps1` files. Each script is documented to explain its purpose, usage, and any necessary parameters.

## Available Scripts

### SolutionProjectSetup.ps1

**Description:**
The `SolutionProjectSetup.ps1` script is designed to set up a new solution project in a consistent and automated manner. It creates the necessary directory structure, initializes the project with a template, and sets up initial configuration files.

**Usage:**
To use this script, you will need to run it in a PowerShell environment. Below are the steps to execute the script:

1. **Open PowerShell:** Open PowerShell on your machine. You may need to run it as an administrator depending on the script's requirements.
2. **Navigate to the Script Location:** Change the directory to where the `SolutionProjectSetup.ps1` script is located. For example:
   ```sh
   cd path\to\MyPowerShellScripts
   ```
3. **Run the Script:** Execute the script by typing:
   ```sh
   .\SolutionProjectSetup.ps1
   ```

**Parameters:**
The script may accept parameters to customize the setup process. Here are the possible parameters and their descriptions:

- `-SolutionName`: The name of the solution to be created. (Required)
- `-ProjectName`: The name of the initial project within the solution. (Required)
- `-TemplatePath`: The path to the project template to be used. (Optional)

**Example:**
```sh
.\SolutionProjectSetup.ps1 -SolutionName "MySolution" -ProjectName "MyProject" -TemplatePath "C:\Templates\DefaultTemplate"
```

**Dependencies:**
Ensure that any dependencies or prerequisites required by the script are installed on your machine. This may include specific versions of PowerShell or other software tools.

## Contributing

If you have any scripts that you think would be useful to add to this repository, feel free to submit a pull request. Please ensure that your scripts are well-documented and follow the structure of existing scripts.

## License

This project is licensed under the MIT License. See the [LICENSE](https://opensource.org/license/MIT) file for details.

## Contact

For any questions or suggestions, please open an issue or contact me at [cmreynol@protonmail.com](mailto:cmreynol@protonmail.com).
