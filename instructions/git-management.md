---
description: Git Management Instructions for Spec System
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Git Management Instructions

**TOKEN OPTIMIZATION**: Before reading this file, check `.spec/FILE_INDEX.md` to understand the complete file structure and optimize your reading strategy.

## Purpose

Provide comprehensive Git management instructions for Spec System projects, ensuring proper version control practices throughout the development lifecycle.

## Overview

Git management in Spec System projects should:

- Initialize repositories properly
- Maintain clean commit history
- Integrate with Spec workflow phases
- Provide fallback options for complex operations

## Step 1: Repository Initialization

### Check Git Status

- **ACTION**: Check if Git repository already exists
- **COMMAND**: `git status`
- **CONDITIONS**:
  - IF "fatal: not a git repository" → Initialize new repository
  - IF repository exists → Check status and proceed

### Initialize New Repository

- **ACTION**: Initialize Git repository if not present

- **COMMANDS**:

  ```bash
  git init
  git add .
  git commit -m "Initial project setup with Spec System"
  ```

### Remote Repository Setup

- **ACTION**: Prompt user for remote repository configuration
- **PROMPT**: "Do you want to link this project to a remote repository? If so, please provide the URL (e.g., `https://github.com/your-username/your-repo.git`). If not, type 'no'."

- **IF URL PROVIDED**:

  ```bash
  git remote add origin <URL>
  git branch -M main
  git push -u origin main
  ```

- **IF NO URL PROVIDED**:
  - Continue with local repository
  - Note: Remote can be added later

### Fallback Instructions

- **IF GIT OPERATIONS FAIL**:
  - Provide manual instructions to user
  - Suggest common troubleshooting steps
  - Offer to continue without Git if needed

## Step 2: Commit Strategy

### Spec-Driven Commits

- **PATTERN**: Commit after each major Spec phase completion
- **EXAMPLES**:
  - "Phase 0: Project setup and documentation"
  - "Phase 1: Product planning and mission definition"
  - "Phase 2: Tech stack analysis and documentation"
  - "Feature spec: User authentication system"
  - "Task completion: Backend API implementation"

### Commit Message Format

- **STRUCTURE**: `[Phase/Task]: Brief description`
- **EXAMPLES**:

  ```text
  [Phase 0]: Initial project setup with Spec System
  [Plan]: Product mission and roadmap creation
  [Spec]: User authentication feature specification
  [Task]: Implement login API endpoint
  [Update]: Sync documentation with code changes
  ```

### Pre-Commit Checklist

Before committing, verify:
***IMPORTANT! IF success use [✓] ELSE use [x]***

- [ ] All Spec documentation is complete for this phase
- [ ] Code follows project standards
- [ ] Tests pass (if applicable)
- [ ] Documentation is updated
- [ ] No sensitive information is included

## Step 3: Branch Management

### Main Branch Strategy

- **DEFAULT**: Use `main` as primary branch
- **PROTECTION**: Keep main branch stable and production-ready

### Feature Branches

- **CREATION**: Create feature branches for major development work
- **NAMING**: `feature/[feature-name]` or `spec/[spec-name]`
- **EXAMPLES**:
  - `feature/user-authentication`
  - `spec/payment-integration`
  - `task/api-endpoints`

### 🚨 AI-Assisted Development Branch Strategy

#### **AI-Specific Branch Naming**

- **PATTERN**: `ai/phase-task-description`
- **EXAMPLES**:
  - `ai/planning-user-authentication`
  - `ai/spec-payment-integration`
  - `ai/development-api-endpoints`
  - `ai/testing-user-flow`

#### **Scope Isolation Protocol**

- **ONE BRANCH PER TASK**: Each AI task gets its own branch
- **SCOPE BOUNDARIES**: Strict file modification limits
- **BRANCH CREATION**: `git checkout -b ai/[task-name]` before starting work
- **BRANCH CLEANUP**: Delete branches after successful merge

#### **Smart Pull Before Commit Strategy**

- **MANDATORY**: Always pull from main before committing
- **COMMAND**: `git pull origin main` before every commit
- **NATURAL SYNC POINTS**:
  - Task completion
  - End of day (6 PM local time)
  - Start of new day
  - Major milestones
  - User requests
- **PURPOSE**: Prevent late conflict discovery with natural workflow

#### **Sync Before Push Protocol**

- **PRE-PUSH CHECK**: Always pull and resolve conflicts before pushing to main
- **CONFLICT RESOLUTION**: Systematic approach to merge conflicts
- **USER CONFIRMATION**: Require user approval for complex merges
- **ROLLBACK STRATEGY**: Easy rollback if conflicts cannot be resolved

### Branch Workflow

1. **Create feature branch**: `git checkout -b feature/[name]`
2. **Develop and commit**: Follow Spec workflow
3. **Update documentation**: Ensure Spec files reflect changes
4. **Merge to main**: `git checkout main && git merge feature/[name]`
5. **Clean up**: `git branch -d feature/[name]`

### 🚨 AI-Assisted Development Workflow

#### **Pre-Task Setup**

1. **Pull from main**: `git pull origin main`
2. **Create AI branch**: `git checkout -b ai/[task-name]`
3. **Verify scope**: Confirm files to be modified
4. **User confirmation**: Get approval for scope

#### **During Development**

1. **Smart sync**: Pull from main at natural breakpoints
2. **Scope validation**: Only modify files in scope
3. **User confirmation**: Require approval for scope changes
4. **Commit at milestones**: Commit when tasks complete or at end of day

#### **Pre-Merge Protocol**

1. **Final pull**: `git pull origin main`
2. **Conflict resolution**: Resolve any conflicts
3. **User review**: Get approval for changes
4. **Test integration**: Verify changes work with main

#### **Merge and Cleanup**

1. **Switch to main**: `git checkout main`
2. **Merge AI branch**: `git merge ai/[task-name]`
3. **Push to remote**: `git push origin main`
4. **Delete AI branch**: `git branch -d ai/[task-name]`

## Step 4: Integration with Spec Workflow

### Phase-Based Commits

- **PHASE 0**: Project setup and documentation
- **PHASE 1**: Product planning and mission
- **PHASE 2**: Tech stack and architecture
- **PHASE 3**: Feature specifications
- **PHASE 4**: Development and implementation
- **PHASE 5**: Testing and documentation

### Spec File Tracking

- **INCLUDE IN COMMITS**:
  - All `.spec/` files (framework files)
  - `[PROJECT_NAME]-spec/` files (project-specific)
  - `checklist.md`, `project-memory.md`, `ai-log.md`
  - Generated documentation and specs

- **EXCLUDE FROM COMMITS**:
  - Sensitive configuration files
  - Temporary files
  - Build artifacts
  - Node modules and dependencies

## Step 5: Regular Maintenance

### Status Checks

- **ACTION**: Regular `git status` checks
- **FREQUENCY**: Before and after major operations
- **PURPOSE**: Ensure clean working directory

### Log Review

- **ACTION**: Review commit history
- **COMMAND**: `git log --oneline`
- **PURPOSE**: Verify commit quality and completeness

### Backup Strategy

- **REMOTE BACKUP**: Push to remote repository regularly
- **LOCAL BACKUP**: Consider local backup strategies
- **DOCUMENTATION**: Keep backup procedures documented

## Step 6: Error Handling

### Common Issues

#### Permission Errors

- **SYMPTOM**: "Permission denied" errors
- **SOLUTION**: Check file permissions and Git configuration
- **FALLBACK**: Provide manual instructions

### 🚨 AI-Specific Error Prevention

#### **Scope Control and Conflict Prevention**

- **FILE MODIFICATION LIMITS**: Only touch files explicitly in scope
- **SCOPE VALIDATION**: Check file modifications against task scope
- **USER CONFIRMATION**: Require approval for scope expansion
- **REGULAR SYNC**: Pull from main every 30 minutes during development

#### **Conflict Prevention Strategies**

- **EARLY DETECTION**: Regular pulls prevent late conflict discovery
- **SCOPE ISOLATION**: AI branches prevent cross-contamination
- **USER INVOLVEMENT**: Regular check-ins prevent scope drift
- **ROLLBACK READY**: Always maintain ability to rollback changes

#### **Team Collaboration Protocols**

- **AI-HUMAN HANDOFF**: Clear protocols for AI to human transitions
- **COMMUNICATION**: Clear status updates and scope changes
- **CONFLICT RESOLUTION**: Systematic approach to merge conflicts
- **BACKUP STRATEGY**: Regular pushes prevent work loss

#### Remote Connection Issues

- **SYMPTOM**: Cannot push to remote
- **SOLUTION**: Verify remote URL and authentication
- **FALLBACK**: Continue with local repository

#### Merge Conflicts

- **SYMPTOM**: Merge conflicts during branch operations
- **SOLUTION**: Guide user through conflict resolution
- **FALLBACK**: Suggest manual merge or reset

### Recovery Procedures

- **RESET TO LAST GOOD STATE**: `git reset --hard HEAD~1`
- **CLEAN WORKING DIRECTORY**: `git clean -fd`
- **RECONSTRUCT FROM SPECS**: Use Spec documentation to rebuild

## Integration Points

### Memory Integration

- **ACTION**: Update `[PROJECT_NAME]-spec/project-memory.md` with Git activities
- **INCLUDE**: Repository setup, commit history, branch strategy
- **TRACK**: Git operations in project timeline

### Checklist Integration

- **ACTION**: Update `checklist.md` with Git-related tasks
- **STATUS**: Mark Git setup as complete
- **TRACK**: Ongoing Git maintenance tasks

### AI Logging Integration

- **ACTION**: Log all Git operations to `[PROJECT_NAME]-spec/ai-log.md`
- **INCLUDE**: Commands executed, errors encountered, resolutions
- **TRACK**: Git session start and completion

## Success Criteria

### Repository Setup

***IMPORTANT! IF success use [✓] ELSE use [x]***

- [ ] Git repository initialized
- [ ] Initial commit completed
- [ ] Remote repository configured (if requested)
- [ ] Branch strategy established
- [ ] User understands Git workflow

### Ongoing Management

***IMPORTANT! IF success use [✓] ELSE use [x]***

- [ ] Regular commits following Spec phases
- [ ] Clean commit history maintained
- [ ] Documentation updated with changes
- [ ] No sensitive information in repository
- [ ] Backup strategy implemented

## Example Output

### Successful Repository Setup

```markdown
# Git Repository Setup Complete

✅ Git repository initialized
✅ Initial commit created: "Initial project setup with Spec System"
✅ Remote repository configured: https://github.com/user/project.git
✅ Branch strategy: main branch with feature branches
✅ Next steps: Continue with Spec workflow phases

## Git Workflow Reminders:
- Commit after each Spec phase completion
- Use descriptive commit messages: [Phase/Task]: Description
- Create feature branches for major development work
- Push to remote regularly for backup
```

### Manual Setup Instructions

```markdown
# Manual Git Setup Required

The automated Git setup encountered issues. Please run these commands manually:

```bash
git init
git add .
git commit -m "Initial project setup with Spec System"
git remote add origin <your-repository-url>
git push -u origin main
```

Contact support if you encounter any issues.

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
[ ] Git repository initialization procedures defined
[ ] Remote repository setup process established
[ ] Commit strategy and message format defined
[ ] Branch management workflow documented
[ ] Integration with Spec workflow implemented
[ ] Error handling procedures established
[ ] Recovery procedures documented
[ ] Success criteria clearly defined
[ ] Example outputs provided
[ ] AI logging integration complete
[ ] Memory integration procedures defined
[ ] Checklist integration procedures defined
```
