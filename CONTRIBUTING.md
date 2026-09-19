# Contributing to SmoothTerminal

Thank you for your interest in contributing to SmoothTerminal! Here are some rules and tips to make collaboration easier:

### 1. Suggesting an alias or improvement

- Check that the alias does not already exist in the project.
- Aliases should correspond to real Windows commands (cmd or PowerShell) and have a relevant Linux equivalent.
- Prioritize safety: no dangerous aliases (e.g., deletion without confirmation).
- Add an explanatory comment if the alias is not obvious.

### 2. Alias format

- Use the syntax:
  ```bash
  alias windows_command='linux_command' # comment
  ```
- For complex aliases, prefer a documented bash function.

### 3. Submitting a Pull Request

- Fork the repository, create a branch for your contribution.
- Clearly describe your change in the PR.
- If you add several aliases, group them by theme (navigation, network, etc.).

### 4. Best practices

- Test your aliases on several distributions if possible.
- Respect the project's structure and style.
- Be polite and open to feedback!
