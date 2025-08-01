---
description: Project Status and Memory System for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Project Status and Memory System

**TOKEN OPTIMIZATION**: Before reading this file, check `.spec/FILE_INDEX.md` to understand the complete file structure and optimize your reading strategy.

## Overview

Provides comprehensive project status, memory, and checkpoint functionality to help users understand where they are in the project lifecycle and what's been accomplished.

## Process Flow

### Step 1: Project Detection and User Prompt

#### Primary Detection Logic

- **ACTION**: Check for .spec/ directory structure
- **ACTION**: Check for [PROJECT_NAME]-spec/ directory in project root
- **ACTION**: Check for AI assistant configuration directories
- **IDENTIFY**: Current project phase
- **DETERMINE**: Whether Spec is properly installed and initialized

#### User Interaction for No Project Structure

- **IF NO PROJECT STRUCTURE FOUND**:
  - **DISPLAY**: "No project structure found. Would you like to start a new project?"
  - **PROVIDE OPTIONS**:
    - "Yes, start new project" → Execute @.spec/start.md
    - "No, I'll do it later" → Exit status process
  - **WAIT FOR USER RESPONSE**: Before proceeding with any analysis
  - **IF USER SAYS YES**: Execute @.spec/start.md and exit status process
  - **IF USER SAYS NO**: Exit status process without further analysis

#### Only Proceed If Project Structure Exists

- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 2 (Status Summary Generation)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 3 (Memory Checkpoint Creation)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 4 (Checklist Management)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 5 (Quick Actions Menu)

### Step 2: Status Summary Generation (Only if project structure exists)

#### Detects

- Is this a Spec-enabled project?
- What phase of development are we in?
- What files exist in .spec/ directory?
- Does [PROJECT_NAME]-spec/ exist in project root?
- Are AI assistant configurations present (.cursor/, .claude/, .gemini/)?

#### Detection Logic

##### Spec Project Check

IF .spec/ directory exists:
    ✅ This is a Spec-enabled project
ELSE:
    ❌ This is a new project or not Spec-enabled

##### Project Structure Check

IF [PROJECT_NAME]-spec/ directory exists:
    ✅ Project has been initialized with Spec
ELSE:
    ❌ Project needs initialization

##### AI Assistant Configuration Check

IF .cursor/ directory exists:
    ✅ Cursor IDE configuration present
ELSE:
    ❌ Cursor IDE configuration missing

IF .claude/ directory exists:
    ✅ Claude Code configuration present
ELSE:
    ❌ Claude Code configuration missing

IF .gemini/ directory exists:
    ✅ Gemini configuration present
ELSE:
    ❌ Gemini configuration missing

##### Phase Detection

IF .spec/product/ exists AND .spec/specs/ does NOT exist:
    ✅ Planning Phase detected
ELSE IF .spec/specs/ exists with spec folders:
    ✅ Development Phase detected
ELSE IF .spec/specs/ exists with recent spec folders:
    ✅ Active Development Phase detected
ELSE:
    ❌ Phase cannot be determined

#### Instructions for Project Detection

- **ACTION**: Check for .spec/ directory structure
- **ACTION**: Check for [PROJECT_NAME]-spec/ directory in project root
- **ACTION**: Check for AI assistant configuration directories
- **IDENTIFY**: Current project phase
- **DETERMINE**: Whether Spec is properly installed and initialized
- **IF NO PROJECT STRUCTURE**: Prompt user to start new project using @.spec/start.md
- **IF NO PROJECT STRUCTURE**: Display "No project structure found. Would you like to start a new project?" with Yes/No options
- **IF USER SAYS YES**: Execute @.spec/start.md
- **IF USER SAYS NO**: Exit status process

### Step 2: StatusSummary Generation (Only if project structure exists)

#### Generates

Comprehensive status report with:

##### Project Overview

- Project name and type
- Current phase
- Last activity date
- Spec installation status

##### Product Documentation Status

- Mission document status
- Tech stack documentation
- Roadmap progress
- Decision log entries

##### Development Status

- Active specs (if any)
- Completed specs
- Current tasks
- Blocked items

##### Next Steps

- Recommended next actions
- Pending decisions
- Upcoming milestones

#### Status Report Template

```markdown
# Project Status Report

## 📋 Project Overview
IF project name is determined:
  - **Project**: [PROJECT_NAME]
ELSE:
  - **Project**: Unknown

IF project phase is determined:
  - **Phase**: [PLANNING/DEVELOPMENT/MAINTENANCE]
ELSE:
  - **Phase**: Unknown

IF last activity timestamp found:
  - **Last Activity**: [DATE]
ELSE:
  - **Last Activity**: Unknown

IF .spec/ directory exists:
  - **Spec Status**: ✅ INSTALLED
ELSE:
  - **Spec Status**: ❌ NOT_INSTALLED

## 📚 Product Documentation
IF mission.md exists:
  - **Mission**: ✅ COMPLETE
ELSE:
  - **Mission**: ❌ MISSING

IF tech-stack.md exists:
  - **Tech Stack**: ✅ COMPLETE
ELSE:
  - **Tech Stack**: ❌ MISSING

IF roadmap.md exists:
  - **Roadmap**: ✅ COMPLETE
ELSE:
  - **Roadmap**: ❌ MISSING

IF decisions.md exists:
  - **Decisions**: [COUNT] entries
ELSE:
  - **Decisions**: 0 entries

## 🚀 Development Progress
IF .spec/specs/ directory exists:
  - **Active Specs**: [COUNT] ([LIST_IF_ANY])
ELSE:
  - **Active Specs**: 0

IF completed specs found:
  - **Completed Specs**: [COUNT]
ELSE:
  - **Completed Specs**: 0

IF checklist.md exists:
  - **Current Tasks**: [COUNT] active, [COUNT] blocked
ELSE:
  - **Current Tasks**: 0 active, 0 blocked

IF roadmap.md exists:
  - **Roadmap Progress**: [X] of [Y] phases complete
ELSE:
  - **Roadmap Progress**: 0 of 0 phases complete

## ⏭️ Next Steps
1. [RECOMMENDED_NEXT_ACTION]
2. [SECONDARY_ACTION]
3. [OPTIONAL_ACTION]

## 🔍 Quick Actions
- `@.spec/commands/plan-product.md` - Plan new product
- `@.spec/commands/create-spec.md` - Create new feature spec
- `@.spec/commands/execute-tasks.md` - Continue development
- `@.spec/commands/analyze-product.md` - Analyze existing product
```

#### Instructions for Status Generation

- **ACTION**: Generate comprehensive status report
- **INCLUDE**: All relevant project information
- **FORMAT**: Clear, scannable structure
- **PROVIDE**: Actionable next steps

### Step 3: Memory Checkpoint Creation (Only if project structure exists)

#### Creates Memory File

File: project-memory.md (project root)

### Step 4: Checklist Management (Only if project structure exists)

#### Creates Checklist File

File: checklist.md (project root)

#### Checklist Integration

- **ACTION**: Create or update checklist.md using @.spec/instructions/checklist-management.md template
- **SYNC**: With current project state
- **VISIBILITY**: Ensure checklist is prominently displayed
- **TEMPLATE**: Use the checklist template from checklist-management.md if file doesn't exist
- **LOCATION**: Create in project root, not in .spec/ directory

#### Memory Content

##### Project Timeline

- Key dates and milestones
- Major decisions made
- Specs created and completed

##### Current Context

- Active development areas
- Blocked items and reasons
- Team preferences and patterns

##### Technical Decisions

- Architecture choices
- Technology selections
- Implementation patterns

#### Memory Template

```markdown
# Project Memory

## 📅 Timeline
- **[DATE]**: Project initialized with Spec
- **[DATE]**: [MAJOR_MILESTONE]
- **[DATE]**: [DECISION_MADE]

## 🎯 Current Context
- **Active Development**: [CURRENT_FOCUS]
- **Blocked Items**: [BLOCKED_ITEMS_WITH_REASONS]
- **Team Preferences**: [CODING_STANDARDS, TOOLS, ETC.]

## 🏗️ Technical Decisions
- **Architecture**: [CHOICES_MADE]
- **Technologies**: [SELECTED_STACK]
- **Patterns**: [IMPLEMENTATION_APPROACHES]

## 📝 Recent Activity
- **[DATE]**: [ACTIVITY_DESCRIPTION]
- **[DATE]**: [ACTIVITY_DESCRIPTION]

## 🔄 Next Session Context
- **Resume From**: [WHERE_TO_START]
- **Priority Items**: [WHAT_TO_FOCUS_ON]
- **Questions**: [WHAT_TO_CLARIFY]
```

#### Instructions for Memory Creation

- **ACTION**: Create or update project-memory.md
- **CAPTURE**: Key decisions and context
- **MAINTAIN**: Timeline of activities
- **PREPARE**: Context for next session

### Step 5: Quick Actions Menu (Only if project structure exists)

#### Provides

Immediate action options based on current status

#### Action Categories

##### New Project Actions

- Plan new product
- Analyze existing product
- Install Spec

##### Development Actions

- Create new spec
- Continue current tasks
- Review progress

##### Maintenance Actions

- Update documentation
- Review decisions
- Clean up completed items

#### Quick Actions Template

```markdown
## 🚀 Quick Actions

### For New Projects
- `@.spec/commands/plan-product.md` - Plan new product
- `@.spec/commands/analyze-product.md` - Analyze existing product

### For Active Development
- `@.spec/commands/create-spec.md` - Create new feature spec
- `@.spec/commands/execute-tasks.md` - Continue current tasks

### For Project Maintenance
- `@.spec/commands/status.md` - Check status again
- Review and update documentation
- Clean up completed specs
```

#### Instructions for Quick Actions

- **ACTION**: Provide relevant action options
- **CONTEXTUALIZE**: Based on current project state
- **SIMPLIFY**: Easy-to-follow commands

### Step 6: Session Continuity (Only if project structure exists)

#### Handles

Returning to project after time away

#### Continuity Features

##### Welcome Back Message

```markdown
Welcome back! Here's where we left off:

[STATUS_SUMMARY]

**Last Activity**: [DATE] - [ACTIVITY]
**Current Focus**: [CURRENT_TASK_OR_PHASE]
**Next Steps**: [RECOMMENDED_ACTIONS]
```

##### Context Restoration

- Load relevant documentation
- Highlight current tasks
- Remind of recent decisions

#### Instructions for Session Continuity

- **ACTION**: Provide welcome back context
- **RESTORE**: Previous session state
- **GUIDE**: Clear next steps

## Error Handling

### Missing Project Structure

If .spec/ doesn't exist:

```markdown
This project doesn't appear to have Spec installed.

**Options:**
1. `@.spec/commands/plan-product.md` - Plan new product and install Spec
2. `@.spec/commands/analyze-product.md` - Analyze existing product and install Spec
```

### No Project Initialization

If .spec/ exists but [PROJECT_NAME]-spec/ doesn't exist:

```markdown
Spec is installed but project hasn't been initialized yet.

**No project structure found. Would you like to start a new project?**

**Options:**
1. **Yes, start new project** - Initialize project structure and documentation
2. **No, I'll do it later** - Exit status process

Would you like to start a new project? (Yes/No)
```

### Missing AI Assistant Configurations

If project structure exists but no AI assistant configs:

```markdown
Project is initialized but AI assistant configurations are missing.

**Options:**
1. `@.spec/commands/start.md` - Re-run start to configure AI assistants
2. Continue without AI assistant configurations
```

### Incomplete Setup

If .spec/ exists but incomplete:

```markdown
Spec is partially installed. Missing components:
- [MISSING_COMPONENTS]

**Next Steps:**
1. Complete Spec installation
2. Initialize missing documentation
```

#### AI Logging Integration

- **ACTION**: Log all status activities to ai-log.md (project root)
- **INCLUDE**: Status checks, memory updates, checklist updates
- **TRACK**: Status session start and completion
- **RECORD**: Status decisions and user interactions

#### AI Rules Compliance

- **ACTION**: Follow @.spec/instructions/ai-rules.md for all operations
- **PERMISSIONS**: Respect file system permissions and user interaction protocols
- **ERROR_HANDLING**: Implement proper error handling and recovery
- **TRANSPARENCY**: Maintain clear audit trail of all actions

#### Configuration Integration

- **ACTION**: Load configuration from config.yml (project root)
- **SETTINGS**: Apply user preferences and system settings
- **VALIDATION**: Ensure configuration is valid and complete
- **OVERRIDE**: Respect user overrides when specified

## Example Output

### No Project Structure Found

```markdown
# Project Status Check

IF .spec/ directory exists:
  ✅ Spec system found and validated
ELSE:
  ❌ Spec system not found

IF [PROJECT_NAME]-spec/ directory exists:
  ✅ Project structure found
ELSE:
  ❌ No Project Structure Found

IF project structure missing:
  Spec system is installed, but no project structure has been initialized yet.

  **No project structure found. Would you like to start a new project?**

  **Options:**
  1. **Yes, start new project** - Initialize project structure and documentation
  2. **No, I'll do it later** - Exit status process

  Would you like to start a new project? (Yes/No)
```

### Existing Project Status

```markdown
# Project Status Report

## 📋 Project Overview
- **Project**: [PROJECT_NAME]
- **Phase**: [PLANNING/DEVELOPMENT/MAINTENANCE]
- **Last Activity**: [DATE]
- **Spec Status**: [INSTALLED/NOT_INSTALLED]

## 📚 Product Documentation
- **Mission**: [COMPLETE/INCOMPLETE/MISSING]
- **Tech Stack**: [COMPLETE/INCOMPLETE/MISSING]
- **Roadmap**: [COMPLETE/INCOMPLETE/MISSING]
- **Decisions**: [COUNT] entries

## 🚀 Development Progress
- **Active Specs**: [COUNT] ([LIST_IF_ANY])
- **Completed Specs**: [COUNT]
- **Current Tasks**: [COUNT] active, [COUNT] blocked
- **Roadmap Progress**: [X] of [Y] phases complete

## ⏭️ Next Steps
1. [RECOMMENDED_NEXT_ACTION]
2. [SECONDARY_ACTION]
3. [OPTIONAL_ACTION]

## 🔍 Quick Actions
- `@.spec/commands/plan-product.md` - Plan new product
- `@.spec/commands/create-spec.md` - Create new feature spec
- `@.spec/commands/execute-tasks.md` - Continue development
- `@.spec/commands/analyze-product.md` - Analyze existing product
```

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Project structure detection implemented
    [ ] User prompt for no project structure working
    [ ] Project phase correctly identified (if structure exists)
    [ ] Status report generated (if structure exists)
    [ ] Memory checkpoint created/updated (if structure exists)
    [ ] Quick actions provided (if structure exists)
    [ ] Session continuity handled (if structure exists)
    [ ] User has clear next steps
    [ ] AI logging integration complete
    [ ] AI rules compliance verified
    [ ] Configuration integration complete
```
