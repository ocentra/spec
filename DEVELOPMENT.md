# Spec System Development Guide

This document explains how to develop and contribute to the Spec System.

## Repository Structure

The Spec System is developed as a git repository inside the `.spec/` directory. This structure allows:

- **Clean user experience**: Users get a clean `.spec/` directory without git history
- **Isolated development**: Our development workflow is separate from user projects
- **Simple setup**: Users can easily install via `setup.sh`

## Development Workflow

### Initial Setup (First Time)

```bash
# Inside the .spec/ directory
cd .spec
git init
git add .
git commit -m "Initial Spec System"
git remote add origin https://github.com/ocentra/spec.git
git push -u origin main
```

### Daily Development

```bash
# Navigate to .spec/ directory
cd .spec

# Pull latest changes
git pull origin main

# Make your changes
# Edit files as needed

# Commit and push
git add .
git commit -m "Description of changes"
git push origin main
```

### Testing Changes

1. **Local Testing**: Test your changes in a separate project
2. **User Testing**: Have users test the updated system
3. **Integration Testing**: Ensure all commands work together

## File Organization

### Core Files (Always Present)

- `start.md` - Project initialization
- `status.md` - Status checking
- `update.md` - Project updates
- `FILE_INDEX.md` - Token optimization guide

### Instruction Files

- `instructions/` - Detailed instruction files
- `standards/` - Development standards
- `commands/` - Command entry points

### Development Files

- `setup.sh` - User installation script
- `.gitignore` - Prevents committing user files
- `DEVELOPMENT.md` - This file
- `README.md` - User documentation

## Important Rules

### 1. Never Commit User-Specific Files

The `.gitignore` prevents committing:

- `[PROJECT_NAME]-spec/` directories
- `checklist.md`, `project-memory.md`, `ai-log.md`
- AI assistant configurations (`.cursor/`, `.claude/`, `.gemini/`)

### 2. Keep Instructions Static

- Instruction files should be read-only during project execution
- Users can fork and customize, but core files remain unchanged
- All file references use `@.spec/` paths

### 3. Maintain Backward Compatibility

- Changes should not break existing user projects
- Test thoroughly before pushing
- Consider versioning for major changes

## Testing Your Changes

### 1. Create Test Project

```bash
mkdir test-project
cd test-project
curl -sSL https://raw.githubusercontent.com/ocentra/spec/main/setup.sh | bash
```

### 2. Test Commands

```bash
# Test each command
@start
@status
@update
@plan-product
@create-spec
@execute-tasks
```

### 3. Verify File Structure

Ensure all files are in the correct locations and references work.

## Contributing

### 1. Fork the Repository

- Fork `https://github.com/ocentra/spec.git`
- Clone your fork

### 2. Make Changes

- Follow the development workflow above
- Test thoroughly
- Update documentation if needed

### 3. Submit Pull Request

- Create a pull request with clear description
- Include testing notes
- Reference any related issues

## Release Process

### 1. Version Update

- Update version in relevant files
- Update changelog if maintained

### 2. Testing

- Test with multiple projects
- Verify all commands work
- Check documentation accuracy

### 3. Release

- Tag the release
- Update main branch
- Announce to users

## Troubleshooting

### Common Issues

#### Git Conflicts

```bash
# If you have conflicts
git status
git add .
git commit -m "Resolve conflicts"
git push
```

#### Setup Script Issues

- Ensure `setup.sh` is executable
- Check GitHub repository URL
- Verify file permissions

#### User File Conflicts

- Check `.gitignore` is working
- Remove any accidentally committed user files
- Reset if necessary

## Support

For development questions:

- Check this file first
- Review `ARCHITECTURE.md` for system design
- Open issues on GitHub for bugs
- Use discussions for questions

---

**Remember**: The goal is to provide users with a clean, reliable system. Always test thoroughly and maintain backward compatibility.
