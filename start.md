---
description: Start Project Rules for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Start Project Instructions

**TOKEN OPTIMIZATION**: Before reading this file, check `.spec/FILE_INDEX.md` to understand the complete file structure and optimize your reading strategy.

## Purpose

Guide the AI on how to begin a project, whether it's a new project or continuing an existing one. This command provides a clean, simple way to start working with the Spec system.

## Overview

The start command should:

- Check if this is a new project or existing project
- Analyze the current state of the project
- Guide the user through the appropriate next steps
- Set up the project structure if needed

## Step 1: Architecture Understanding

### Read Architecture Documentation

- **ACTION**: Read @.spec/ARCHITECTURE.md to understand the system design
- **PURPOSE**: Ensure AI understands static instruction patterns and file locations
- **CONTEXT**: This prevents confusion about file paths and design decisions

## Step 2: AI Assistant Configuration Setup

### Check AI Assistant Directories

- **ACTION**: Check if AI assistant configuration directories and files exist
- **DIRECTORIES/FILES TO CHECK**:
  - `.cursor/rules/` (for Cursor IDE)
  - `.claude/` (for Claude Code)
  - `GEMINI.md` (for Gemini)
- **CONDITION**: If missing, ask user which assistants they want to configure
- **PURPOSE**: Enable AI assistants to access Spec commands

### User Preference Check

- **ACTION**: Ask user which AI coding assistants they plan to use
- **PROMPT**: "Which AI coding assistants do you plan to use for this project? This will create configuration files that enable AI assistants to access Spec commands."
- **OPTIONS**:
  - "Cursor IDE" - Create `.cursor/rules/` files
  - "Claude Code" - Create `.claude/` configuration files
  - "Gemini" - Create `GEMINI.md` configuration file
  - "Multiple assistants" - Create configs for selected assistants
  - "None, skip AI assistant setup" - Skip all AI assistant setup
  - "I'll set it up later" - Skip all AI assistant setup

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

### Create AI Assistant Configuration Files

- **ACTION**: Create configuration files for selected AI assistants
- **LOCATIONS**:
  - `.cursor/rules/` (for Cursor IDE)
  - `.claude/` (for Claude Code)
  - `GEMINI.md` (for Gemini)
- **CONTENT**: Simple pointers to Spec commands
- **FORMAT**: Markdown with YAML frontmatter
- **CONDITION**: Only proceed for assistants user selects

### AI Assistant Configuration Templates

#### Cursor IDE Template (.cursor/rules/)

For each command file in `.spec/commands/`, create a corresponding `.mdc` file:

```markdown
---
alwaysApply: false
---

# [Command Name]

[Brief description of what this command does]

Refer to the instructions located in @.spec/[command-name].md
```

#### Claude Code Template (.claude/)

For each command file in `.spec/commands/`, create a corresponding `.md` file:

```markdown
# [Command Name]

[Brief description of what this command does]

Refer to the instructions located in @.spec/[command-name].md

## Usage
When user wants to [command action], use this command.

## Context
This command provides [brief explanation of what the command does].
```

#### Gemini Template (GEMINI.md)

Create a single comprehensive `GEMINI.md` file in the project root:

```markdown
# Spec System - Gemini Instructions

This file provides Gemini with instructions on how to use the Spec System for project management and development.

## Available Commands

### @start.md - Start Project
**When to use**: When starting a new project or continuing an existing one
**Instructions**: Follow the detailed instructions in `start.md`

### @plan-product.md - Plan Product
**When to use**: When planning a new product or feature
**Instructions**: Follow the detailed instructions in `instructions/plan-product.md`

### @analyze-product.md - Analyze Product
**When to use**: When analyzing an existing product or codebase
**Instructions**: Follow the detailed instructions in `instructions/analyze-product.md`

### @create-spec.md - Create Specification
**When to use**: When creating detailed feature specifications
**Instructions**: Follow the detailed instructions in `instructions/create-spec.md`

### @execute-tasks.md - Execute Tasks
**When to use**: When implementing features or working on development tasks
**Instructions**: Follow the detailed instructions in `instructions/execute-tasks.md`

### @status.md - Check Status
**When to use**: When checking current project status and progress
**Instructions**: Follow the detailed instructions in `status.md`

### @update.md - Update Project
**When to use**: When syncing code with documentation and updating project state
**Instructions**: Follow the detailed instructions in `update.md`

## How to Use Commands
1. Identify the user's intent
2. Select the appropriate command
3. Follow the detailed instructions in the specified file
4. Execute step by step for best results
```

### Required AI Assistant Configuration Files

#### Cursor IDE (.cursor/rules/)

Create the following `.mdc` files:

1. **start.mdc** - Project start command
2. **plan-product.mdc** - Product planning command
3. **analyze-product.mdc** - Product analysis command
4. **create-spec.mdc** - Spec creation command
5. **execute-tasks.mdc** - Task execution command
6. **status.mdc** - Status check command
7. **update.mdc** - Project update command
8. **markdown-rules.mdc** - Markdown writing rules (alwaysApply: true)
9. **ai-rules.mdc** - AI operating rules (alwaysApply: true)

#### Claude Code (.claude/)

Create the following `.md` files:

1. **start.md** - Project start command
2. **plan-product.md** - Product planning command
3. **analyze-product.md** - Product analysis command
4. **create-spec.md** - Spec creation command
5. **execute-tasks.md** - Task execution command
6. **status.md** - Status check command
7. **update.md** - Project update command
8. **markdown-rules.md** - Markdown writing rules
9. **ai-rules.md** - AI operating rules

#### Gemini (GEMINI.md)

Create a single comprehensive `GEMINI.md` file in the project root containing:

1. **Overview** - System description and purpose
2. **Available Commands** - All command references with usage instructions
3. **How to Use Commands** - Step-by-step guidance
4. **File Structure Reference** - Directory and file explanations
5. **Important Notes** - Key guidelines and best practices
6. **Quick Reference** - Command lookup table
7. **Error Handling** - Troubleshooting guidance
8. **Best Practices** - Usage recommendations

### Example AI Assistant Configuration Content

#### Cursor IDE Example (start.mdc)

```markdown
---
alwaysApply: false
---

# Start Project

When the user wants to start a new project or continue an existing one, use the Spec system's start command.

Refer to the instructions located in @.spec/start.md

This will guide you through:
- Analyzing the current project state
- Setting up new projects or continuing existing ones
- Providing clear next steps and guidance
```

#### Claude Code Example (start.md)

```markdown
# Start Project

Begin a new project or continue an existing one with comprehensive project analysis and setup

Refer to the instructions located in @.spec/start.md

## Usage
When user wants to start a new project or continue development on an existing project, use this command.

## Context
This command provides comprehensive project analysis, setup guidance, and clear next steps for both new and existing projects.
```

#### Gemini Example (GEMINI.md)

```markdown
# Spec System - Gemini Instructions

This file provides Gemini with instructions on how to use the Spec System for project management and development.

## Available Commands

### @start.md - Start Project
**When to use**: When starting a new project or continuing an existing one
**Purpose**: Comprehensive project analysis and setup guidance
**Instructions**: Follow the detailed instructions in `start.md`

### @plan-product.md - Plan Product
**When to use**: When planning a new product or feature
**Purpose**: Create comprehensive product documentation and planning
**Instructions**: Follow the detailed instructions in `instructions/plan-product.md`

## How to Use Commands
1. Identify the user's intent
2. Select the appropriate command
3. Follow the detailed instructions in the specified file
4. Execute step by step for best results
```

#### plan-product.mdc Example

```markdown
---
alwaysApply: false
---

# Plan Product

Plan a new product and install Agent OS in its codebase.

Refer to the instructions located in @.spec/instructions/plan-product.md

> **Note:** This system uses static, reusable instructions. See @.spec/ARCHITECTURE.md for understanding the file structure and patterns.
```

#### ai-rules.mdc Example

```markdown
---
alwaysApply: true
---

# AI Operating Rules

Follow the AI operating rules and permissions defined in the Spec system

Refer to the instructions located in @.spec/instructions/ai-rules.md
```

### AI Assistant Configuration Creation Process

- **ACTION**: Only for assistants user selects
- **SCAN**: `.spec/commands/` directory for all command files
- **CREATE**: Corresponding configuration files for selected assistants
- **CONTENT**: Use command descriptions and instruction references
- **VALIDATION**: Ensure all command files have corresponding configuration files
- **MARKDOWN**: Follow `@.spec/instructions/markdown-rules.md` for all markdown formatting
- **SKIP**: If user chooses not to use any AI assistants

### Complete AI Assistant Configuration Examples

#### analyze-product.mdc

```markdown
---
alwaysApply: false
---

# Analyze Product

Analyze your product's codebase and install Agent OS

Refer to the instructions located in @.spec/instructions/analyze-product.md

> **Note:** This system uses static, reusable instructions. See @.spec/ARCHITECTURE.md for understanding the file structure and patterns.
```

#### create-spec.mdc

```markdown
---
alwaysApply: false
---

# Create Spec

Create a detailed spec for a new feature with technical specifications and task breakdown

Refer to the instructions located in @.spec/instructions/create-spec.md
```

#### execute-tasks.mdc

```markdown
---
alwaysApply: false
---

# Execute Tasks

Execute one or more tasks for a given spec.

Refer to the instructions located in @.spec/instructions/execute-tasks.md

> **Note:** This system uses static, reusable instructions. See @.spec/ARCHITECTURE.md for understanding the file structure and patterns.
```

#### status.mdc

```markdown
---
alwaysApply: false
---

# Project Status

Check current project status and get a comprehensive overview of where we are

Refer to the instructions located in @.spec/status.md
```

#### update.mdc

```markdown
---
alwaysApply: false
---

# Update Project

Sync written code with project checklist and update project status

Refer to the instructions located in @.spec/update.md
```

## Step 3: Project Name Collection

### Determine Project Name

- **ACTION**: If no project name is set, prompt user for project name
- **DEFAULT**: Use current folder name as project name suggestion
- **VALIDATION**: Apply project name formatting rules (kebab-case, max 50 chars)
- **EXAMPLES**:
  - Folder: "My Web App" → Suggestion: "my-web-app"
  - Folder: "project@123" → Suggestion: "project-123"
  - Folder: "very-long-folder-name-that-exceeds-limits" → Suggestion: "very-long-folder-name-that-exceeds-limits"
- **CONFIRMATION**: Ask user to confirm or modify the suggested name
- **STORAGE**: Store confirmed project name for use throughout the system

## Step 4: Project State Analysis

### Check for Existing Project Files

- **ACTION**: Look for project-specific files in the root directory
- **FILES TO CHECK**:
  - `[PROJECT_NAME]-spec/` directory
  - `checklist.md` (project root)
  - `project-memory.md` (project root)
  - `ai-log.md` (project root)
  - `config.yml` (project root)
  - `README.md` (project root)

### Determine Project Status

#### Project Status Detection

IF [PROJECT_NAME]-spec/ directory exists:
    ✅ Existing project detected
    → Proceed to Step 6: Existing Project Analysis
ELSE IF checklist.md exists OR project-memory.md exists OR ai-log.md exists:
    ✅ Existing project detected (partial structure)
    → Proceed to Step 6: Existing Project Analysis
ELSE:
    ❌ New project detected (no project files found)
    → Proceed to Step 5: New Project Setup

## Step 5: New Project Setup

### Initial Assessment

- **ACTION**: Check if `.spec/` directory exists with instruction files
- **VALIDATION**: Ensure all required instruction files are present
- **FILES TO VERIFY**:
  - `.spec/instructions/plan-product.md`
  - `.spec/instructions/create-spec.md`
  - `.spec/instructions/execute-tasks.md`
  - `.spec/instructions/status.md`

### User Input Collection

- **ACTION**: Ask user for project information
- **QUESTIONS**:
  - "What type of project are you building?"
  - "Do you have an existing codebase or starting from scratch?"
  - "What is your project's primary goal?"
  - "What technologies do you plan to use?"

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

### Project Initialization

- **ACTION**: Execute plan-product.md with gathered information
- **PROVIDE**: All context as structured input
- **ALLOW**: plan-product.md to create [PROJECT_NAME]-spec/ structure (project root)

### Git Repository Setup

- **ACTION**: Follow Git management instructions
- **REFERENCE**: Use `@git-management.md` for complete Git setup and management
- **PURPOSE**: Initialize repository and set up version control

### Next Steps Guidance

- **ACTION**: Provide clear next steps to user
- **INCLUDE**:
  - Link to generated documentation
  - Instructions for reviewing and customizing
  - How to proceed with development
  - Git repository status and next steps
  - Reminder to commit changes regularly

### CRITICAL: Spec Completion Before Code Writing

***CRITICAL ENFORCEMENT: NO PROJECT-CENTRIC CODE WRITING UNTIL ALL SPEC TASKS COMPLETE***

- **MANDATORY**: Complete ALL spec-related tasks before writing any project code
- **REQUIRED TASKS**:
  - Project planning and mission definition
  - Tech stack analysis and documentation
  - Product roadmap creation
  - Feature specification development
  - Task breakdown and prioritization
- **VERIFICATION**: Ensure all spec files are complete and validated
- **BLOCKING**: Do not proceed to code implementation until all specs are finalized
- **ENFORCEMENT**: This rule applies to ALL project phases and cannot be bypassed

## Step 6: Existing Project Analysis

### Project Memory Check

- **ACTION**: Read [PROJECT_NAME]-spec/project-memory.md (project root)
- **ANALYZE**: Current project state, recent activities, next steps
- **DISPLAY**: Welcome back summary with current status

### Checklist Review

- **ACTION**: Review checklist.md (project root)
- **ANALYZE**: Completed tasks, in-progress items, blocked items
- **IDENTIFY**: Next priority tasks

### Code Analysis

- **ACTION**: Analyze current codebase against project documentation
- **COMPARE**: Written code vs. planned features
- **IDENTIFY**: Gaps, inconsistencies, or outdated documentation

### Status Report

- **ACTION**: Provide comprehensive status report
- **INCLUDE**:
  - Current project phase
  - Recent accomplishments
  - Next priority tasks
  - Any issues or blockers

## Step 6: Action Planning

### For New Projects

- **RECOMMEND**: Review generated documentation
- **SUGGEST**: Customize mission, tech stack, roadmap
- **GUIDE**: Start with first development task

### For Existing Projects

- **RECOMMEND**: Continue with next priority task
- **SUGGEST**: Update documentation if needed
- **GUIDE**: Address any identified issues

## Step 5: User Guidance

### Clear Instructions

- **PROVIDE**: Specific next steps
- **EXPLAIN**: What each step accomplishes
- **OFFER**: Help with any questions or issues

### Command Options

- **SUGGEST**: Appropriate commands for next actions
- **EXAMPLES**:
  - "Use @.spec/commands/status.md to check current status"
  - "Use @.spec/commands/create-spec.md to create new features"
  - "Use @.spec/commands/execute-tasks.md to work on planned tasks"

## Integration Points

### Memory Integration

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with start activity
- **INCLUDE**: Start session timestamp, project state, next steps
- **TRACK**: Session start in project timeline

### Checklist Integration

- **ACTION**: Update checklist.md (project root) with start activity
- **TIMESTAMP**: Add start session to "Recent Activity Log"
- **STATUS**: Mark any relevant tasks as "in progress"

### AI Logging Integration

- **ACTION**: Log all start activities to [PROJECT_NAME]-spec/ai-log.md (project root)
- **INCLUDE**: Project analysis, file creation, user guidance
- **TRACK**: Start session start and completion

### AI Rules Compliance

- **ACTION**: Follow @.spec/instructions/ai-rules.md guidelines
- **PERMISSIONS**: Check file system permissions before operations
- **USER INTERACTION**: Prompt for input when needed
- **ERROR HANDLING**: Handle errors gracefully with user guidance

### Configuration Integration

- **ACTION**: Load configuration from [PROJECT_NAME]-spec/config.yml (project root)
- **SETTINGS**: Apply user preferences and system settings
- **VALIDATION**: Ensure configuration is valid and complete

## Success Criteria

### New Project

- [ ] AI assistant usage preference confirmed (setup completed or skipped)
- [ ] Project structure created in [PROJECT_NAME]-spec/ (project root)
- [ ] User provided with clear next steps
- [ ] Documentation generated and accessible
- [ ] Project memory initialized

### Existing Project Success Criteria

- [ ] AI assistant usage preference confirmed (setup completed or skipped)
- [ ] Current status clearly communicated
- [ ] Next steps identified and prioritized
- [ ] Any issues or blockers addressed
- [ ] User confident to proceed

## Error Handling

### Missing .spec Directory

- **ERROR**: .spec/ directory not found
- **ACTION**: Inform user that Spec system is not installed
- **GUIDANCE**: Provide instructions for installing Spec

### Corrupted Project Files

- **ERROR**: Project files exist but are corrupted
- **ACTION**: Attempt to recover or recreate files
- **BACKUP**: Create backups before modifications

### Permission Issues

- **ERROR**: Cannot read/write project files
- **ACTION**: Check file permissions
- **GUIDANCE**: Provide instructions for fixing permissions

### AI Assistant Configuration Creation Issues

- **ERROR**: Cannot create AI assistant configuration directories or files
- **ACTION**: Check directory permissions and disk space
- **GUIDANCE**: Provide manual creation instructions if automated setup fails
- **FALLBACK**: Continue with project setup, note AI assistant configs need manual creation

## Example Output

### New Project Example

```markdown
# Project Start - New Project

## Analysis Complete
IF .spec/ directory exists AND contains required files:
  ✅ Spec system found and validated
ELSE:
  ❌ Spec system not found

IF AI assistant setup completed OR user chose to skip:
  ✅ AI assistant setup: [Completed/Skipped based on user preference]
ELSE:
  ❌ AI assistant setup: Not configured

IF [PROJECT_NAME]-spec/ directory exists:
  ✅ Project structure found
ELSE:
  ❌ No existing project files detected

## Next Steps
1. **Project Planning**: I'll help you create project documentation
2. **Structure Setup**: Generate [PROJECT_NAME]-spec/ directory
3. **Documentation**: Create mission, tech stack, roadmap

## Questions
- What type of project are you building?
- Do you have an existing codebase?
- What is your primary goal?

Ready to proceed with project planning?
```

### Existing Project Example

```markdown
# Project Start - Existing Project

## Welcome Back!
IF [PROJECT_NAME]-spec/ directory exists:
  ✅ Project files found: [PROJECT_NAME]-spec/
ELSE:
  ❌ Project structure missing

IF AI assistant setup completed OR user chose to skip:
  ✅ AI assistant setup: [Completed/Skipped based on user preference]
ELSE:
  ❌ AI assistant setup: Not configured

IF project phase is determined:
  ✅ Current phase: Phase 2 - Core Development
ELSE:
  ❌ Project phase: Unknown

IF last activity timestamp found:
  ✅ Last activity: 3 days ago
ELSE:
  ❌ Last activity: Unknown

## Current Status
- **Completed**: 15/25 planned features
- **In Progress**: User authentication system
- **Next Priority**: API documentation

## Recent Activity
- User auth backend completed
- Frontend login form in progress
- Database schema updated

## Next Steps
1. Continue with user authentication frontend
2. Update API documentation
3. Begin payment integration planning

Ready to continue development?
```

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] AI assistant usage preference handled appropriately
    [ ] Project type correctly identified (new vs existing)
    [ ] Project structure validated
    [ ] User context gathered appropriately
    [ ] Clear next steps provided
    [ ] Success criteria defined for both scenarios
    [ ] Error handling procedures established
    [ ] Example outputs provided
    [ ] AI logging integration complete
    [ ] AI rules compliance verified
    [ ] Configuration integration complete
    [ ] CRITICAL: Spec completion enforcement implemented
    [ ] CRITICAL: No project-centric code writing until all specs complete
    [ ] CRITICAL: All spec-related tasks must be finished before code implementation
```

***IMPORTANT! IMPORTANT! IMPORTANT! Under no circumstance can we skip steps and it's IMPORTANT! to Verify Before we move to next Step***

***CRITICAL ENFORCEMENT: ALL SPEC-RELATED TASKS MUST BE COMPLETED AND VERIFIED BEFORE ANY PROJECT-CENTRIC CODE IS WRITTEN***

## 🚨 EARLY CODE WRITING SPECIFIC WARNINGS

### DO NOT JUMP TO CODE WRITING

**COMMON MISTAKE**: Starting to write project code before completing specifications.

**CORRECT BEHAVIOR**:

1. Complete ALL spec writing first
2. Verify all documentation is finished
3. Only then proceed to code implementation

**WRONG BEHAVIOR**:

- Writing code while specs are incomplete
- Skipping documentation to start coding
- Ignoring the spec completion requirement

**REMEMBER**: Spec System enforces "Spec First, Code Second" - this is non-negotiable.
