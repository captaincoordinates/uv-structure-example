# uv Structure Example

Example of how to structure a `uv` workspace with inter-package dependencies.

Includes `pyright` configuration to address import resolution issues in vscode.

## Structure

- `primary` package depends on `support-one` package
- `support-two` package depends on `support-one` package

## Run

### vscode

Use the following `launch.json` configuration to execute within vscode.

```JSON
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "entrypoint-main",
            "type": "debugpy",
            "request": "launch",
            "module": "example.primary.entrypoint",
            "console": "integratedTerminal"
        },
        {
            "name": "entrypoint-support-two",
            "type": "debugpy",
            "request": "launch",
            "cwd": "${workspaceFolder}/packages/support-two/src",
            "module": "example.support_two.entrypoint",
            "console": "integratedTerminal"
        }
    ]
}
```
