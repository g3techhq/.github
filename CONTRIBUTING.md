# Contributing

Thank you for helping improve a G3 Tech project.

## Before you start

- Use an existing issue for substantial work, or open one to confirm the intended behavior and scope.
- Keep security reports private by following the repository's security policy.
- Never commit credentials, production data, signing material, or personal information.

## Local workflow

Projects use a `justfile` as the human-facing command interface. The underlying Rust and Node package commands remain available for tools that need them.

1. Install the toolchain versions declared by the repository.
2. Install JavaScript dependencies with `npm ci` when a `package-lock.json` is present.
3. Run `lefthook install` once after cloning.
4. Use `just format` before committing.
5. Use `just pre-push` before opening or updating a pull request.
6. Use `just ci` to reproduce the complete continuous-integration gate.

## Commits and pull requests

- Write Conventional Commit messages such as `feat: add keyboard navigation` or `fix(router): preserve back history`.
- Keep commits focused and explain behavior changes, migration needs, and risks in the pull request.
- Add or update tests for changed behavior.
- Preserve public API compatibility unless the change is intentionally breaking and documented.
- Make sure generated files and lockfiles are updated when their sources change.

Pull requests require passing automated checks and review before merge. Do not weaken a quality or security check merely to make a change pass; document and narrowly scope any justified exception.
