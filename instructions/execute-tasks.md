---
description: Rules to execute tasks using Spec - both single tasks and batches
globs:
alwaysApply: false
version: 2.0
encoding: UTF-8
---

# Task Execution Rules

## Overview

Execute one or more tasks systematically following a TDD development workflow. This file handles both single task execution and batch task execution for multiple tasks.

***CRITICAL ENFORCEMENT: NO PROJECT-CENTRIC CODE WRITING UNTIL ALL SPEC TASKS COMPLETE***

**IMPORTANT NOTE**: Before executing any implementation tasks, ensure that ALL spec-related tasks are completed and verified:

- Project planning and mission definition
- Tech stack analysis and documentation  
- Product roadmap creation
- Feature specification development
- Task breakdown and prioritization

**ENFORCEMENT**: This rule applies to ALL project phases and cannot be bypassed. Do not proceed to code implementation until all specs are finalized.

## Process Flow

### Step 1: Task Assignment and Context Setup

#### Memory Check

- **First**: Check [PROJECT_NAME]-spec/project-memory.md (project root) for current context
- **If returning**: Provide welcome back summary
- **Always**: Update memory with current task focus

#### Inputs

- Spec SRD reference: file path
- Specific tasks: array[string] (optional)

#### Default

Next uncompleted parent task

#### Task Selection

- **Explicit**: User specifies exact task(s)
- **Implicit**: Find next uncompleted task in tasks.md

#### Instructions for Task Assignment

- **ACTION**: Identify task(s) to execute
- **DEFAULT**: Select next uncompleted parent task if not specified
- **CONFIRM**: Task selection with user

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

#### Context Analysis

##### Essential Docs

- **ALWAYS**: Read tasks.md for task breakdown
- **CONDITIONAL**: Load only files not already in context:
  - [PROJECT_NAME]-spec/product/mission-lite.md (project root)
  - spec-lite.md
  - sub-specs/technical-spec.md

##### Instructions for Context Analysis

- **ACTION**: Always read tasks.md
- **CHECK**: Which files are already in context
- **LOAD**: Only files not already in context
- **SKIP**: Other sub-specs files and best practices for now
- **ANALYZE**: Requirements specific to current task

### Step 2: Environment Preparation

#### Development Server Check

##### Server Checks

Running development server

##### Prevents

Port conflicts

##### Server Check Flow

###### If Running

- Ask user to shut down
- Wait for response

###### If Not Running

- Proceed immediately

##### User Prompt

```markdown
A development server is currently running.
Should I shut it down before proceeding? (yes/no)
```

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

##### Instructions for Server Check

- **ACTION**: Check for running local development server
- **CONDITIONAL**: Ask permission only if server is running
- **PROCEED**: Immediately if no server detected

#### Git Branch Management

##### Manages

Git branches

##### Branch Ensures

Proper isolation

##### Branch Naming

###### Source

Spec folder name

###### Branch Format

Exclude date prefix

###### Example

- Folder: 2025-03-15-password-reset
- Branch: password-reset

##### Branch Logic

IF current branch name matches spec name:
    ✅ Case A: Already on correct branch
    → Proceed immediately
ELSE IF current branch is ['main', 'master', 'staging', 'review']:
    ✅ Case B: On main/staging branch
    → Create new branch automatically
    → Switch to new branch
    → Proceed with task execution
ELSE:
    ❌ Case C: On different feature branch
    → Ask permission to create new branch
    → Wait for user approval
    → Create branch only if approved

###### Case C Prompt

```markdown
Current branch: [CURRENT_BRANCH]
This spec needs branch: [SPEC_BRANCH]

May I create a new branch for this spec? (yes/no)
```

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

##### Instructions for Branch Management

- **ACTION**: Check current git branch
- **EVALUATE**: Which case applies
- **EXECUTE**: Appropriate branch action
- **WAIT**: Only for case C approval

### Step 3: Single Task Execution (For Each Task)

#### Task Understanding

##### Task Reads

Given task and all sub-tasks

##### Task Purpose

Complete understanding of what to build

##### Task Analysis

###### Read from tasks.md

- Parent task description
- All sub-task descriptions
- Task dependencies
- Expected outcomes

##### Instructions for Task Understanding

- **ACTION**: Read the specific parent task and all its sub-tasks
- **ANALYZE**: Full scope of implementation required
- **UNDERSTAND**: Dependencies and expected deliverables
- **NOTE**: Test requirements for each sub-task

#### Technical Specification Review

##### Technical Reads

Relevant parts of technical-spec.md

##### Technical Purpose

Understand technical implementation for this task

##### Selective Reading

###### Search Technical Spec

Find sections in technical-spec.md related to:

- Current task functionality
- Implementation approach for this feature
- Integration requirements
- Performance criteria

##### Instructions for Technical Review

- **ACTION**: Search technical-spec.md for task-relevant sections
- **EXTRACT**: Only implementation details for current task
- **SKIP**: Unrelated technical specifications
- **FOCUS**: Technical approach for this specific feature

#### Best Practices and Code Style Review

##### Best Practices Reads

Relevant parts of @.spec/standards/best-practices.md

##### Code Style Reads

Relevant parts of @.spec/standards/code-style.md

##### Instructions for Standards Review

- **ACTION**: Check if relevant sections already in context
- **SEARCH**: best-practices.md and code-style.md for relevant guidelines if needed
- **EXTRACT**: Only practices applicable to current task
- **SKIP**: Already-loaded sections and unrelated sections
- **APPLY**: Relevant patterns to implementation

#### Task and Sub-task Execution

##### Executes Tasks

Parent task and all sub-tasks in order

##### Approach

Test-driven development (TDD)

##### Typical Task Structure

- **First Subtask**: Write tests for [feature]
- **Middle Subtasks**: Implementation steps
- **Final Subtask**: Verify all tests pass

##### Execution Order

###### Subtask 1 Tests

IF sub-task 1 contains "Write tests for [feature]":
    ✅ Write all tests for the parent feature
    → Include unit tests, integration tests, edge cases
    → Run tests to ensure they fail appropriately
    → Mark sub-task 1 complete
ELSE:
    ❌ Unexpected first sub-task
    → Proceed with standard execution

###### Middle Subtasks Implementation

FOR EACH implementation sub-task (2 through n-1):
    ✅ Implement the specific functionality
    → Make relevant tests pass
    → Update any adjacent/related tests if needed
    → Refactor while keeping tests green
    → Mark sub-task complete

###### Final Subtask Verification

IF final sub-task contains "Verify all tests pass":
    ✅ Run task-specific test suite
    → Fix any remaining failures
    → Ensure no regressions
    → Mark final sub-task complete
ELSE:
    ❌ Unexpected final sub-task
    → Proceed with standard verification

##### Test Management

###### New Tests

- Written in first sub-task
- Cover all aspects of parent feature
- Include edge cases and error handling

###### Test Updates

- Made during implementation sub-tasks
- Update expectations for changed behavior
- Maintain backward compatibility

##### Instructions for Task Execution

- **ACTION**: Execute sub-tasks in their defined order
- **RECOGNIZE**: First sub-task typically writes all tests
- **IMPLEMENT**: Middle sub-tasks build functionality
- **VERIFY**: Final sub-task ensures all tests pass
- **UPDATE**: Mark each sub-task complete as finished

#### Task-Specific Test Verification

##### Verifies

Only tests for this parent task

##### Scope

Task-specific tests only

##### Instructions for Test Verification

- **ACTION**: Run ONLY tests created/updated in this task
- **SCOPE**: Focus on this parent task's tests
- **VERIFY**: 100% pass rate for task-specific tests
- **CONFIRM**: This feature's tests are complete

#### Task Status Updates

##### Updates

tasks.md file

##### Timing

Immediately after completion

##### Task Memory Integration

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with task completion
- **INCLUDE**: Task name, completion date, any blocking issues
- **TIMELINE**: Add to recent activity
- **CONTEXT**: Update current development focus

##### Update Format

###### Completed

`- [x] Task description`

###### Incomplete

`- [ ] Task description`

###### Blocked

```markdown
- [ ] Task description
⚠️ Blocking issue: [DESCRIPTION]
```

##### Blocking Criteria

- **Attempts**: Maximum 3 different approaches
- **Action**: Document blocking issue
- **Emoji**: ⚠️

##### Instructions for Status Updates

- **ACTION**: Update tasks.md after each task completion
- **MARK**: [x] for completed items immediately
- **DOCUMENT**: Blocking issues with ⚠️ emoji
- **LIMIT**: 3 attempts before marking as blocked

### Step 4: Batch Task Execution Loop

#### Executes Batch

Parent tasks and subtasks

#### Continues

Until all tasks complete

#### Execution Flow

For each parent_task assigned in Step 1:

- Execute single task execution (Step 3) with:
  - parent_task_number
  - all associated subtasks
- Wait for task completion
- Update tasks.md status
End for

#### Loop Logic

##### Continue Conditions

- More unfinished parent tasks exist
- User has not requested stop

##### Exit Conditions

- All assigned tasks marked complete
- User requests early termination
- Blocking issue prevents continuation

#### Task Status Check

After each task execution:

- Check tasks.md for remaining tasks
- If all assigned tasks complete:
  - Proceed to next step
- Else:
  - Continue with next task

#### Instructions for Task Execution Loop

- **LOOP**: Through all assigned parent tasks
- **UPDATE**: Task status after each completion
- **VERIFY**: All tasks complete before proceeding
- **HANDLE**: Blocking issues appropriately

### Step 5: Post-Execution Activities

#### Run All Tests

##### Test Runs

Entire test suite

##### Test Ensures

No regressions

##### Instructions for Test Suite

- **ACTION**: Run complete test suite
- **VERIFY**: All tests pass including new ones
- **FIX**: Any test failures before continuing
- **BLOCK**: Do not proceed with failing tests

#### Git Workflow

##### Git Creates

- Git commit
- GitHub push
- Pull request

##### Git Memory Integration

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with git activity
- **INCLUDE**: Commit message, PR URL, deployment status
- **TIMELINE**: Add to recent activity

##### Commit Process

###### Commit

- Message: Descriptive summary of changes
- Format: Conventional commits if applicable

###### Push

- Target: Spec branch
- Remote: Origin

###### Pull Request

- Title: Descriptive PR title
- Description: Functionality recap

##### PR Template

```markdown
## PR Summary

[BRIEF_DESCRIPTION_OF_CHANGES]

## Changes Made

- [CHANGE_1]
- [CHANGE_2]

## Testing

- [TEST_COVERAGE]
- All tests passing ✓
```

##### Instructions for Git Workflow

- **ACTION**: Commit all changes with descriptive message
- **PUSH**: To GitHub on spec branch
- **CREATE**: Pull request with detailed description

#### Roadmap Progress Check (Conditional)

##### Roadmap Condition

Only if tasks may have completed roadmap item

##### Roadmap Checks

[PROJECT_NAME]-spec/product/roadmap.md (project root, if not in context)

##### Roadmap Memory Integration

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with roadmap progress
- **INCLUDE**: Completed roadmap items, milestone achievements
- **TIMELINE**: Add major milestones to timeline
- **CONTEXT**: Update project phase if needed

##### Conditional Execution

###### Preliminary Check

- Evaluate: Did executed tasks potentially complete a roadmap item?
- If NO:
  - Skip this entire step
  - Proceed to next step
- If YES:
  - Continue with roadmap check

##### Roadmap Criteria

###### Update When

- Spec fully implements roadmap feature
- All related tasks completed
- Tests passing

###### Caution

Only mark complete if absolutely certain

##### Instructions for Roadmap Check

- **ACTION**: First evaluate if roadmap check is needed
- **SKIP**: If tasks clearly don't complete roadmap items
- **CHECK**: If roadmap.md already in context
- **LOAD**: Only if needed and not in context
- **EVALUATE**: If current spec completes roadmap goals
- **UPDATE**: Mark roadmap items complete if applicable
- **VERIFY**: Certainty before marking complete

#### README Update (Conditional)

##### README Update Triggers

- **Product Pivot**: When project direction significantly changes
- **Tech Stack Change**: When major technologies are added/removed
- **Feature Addition**: When new major features are implemented
- **Setup Process Change**: When installation/setup process changes
- **Architecture Change**: When project structure significantly changes

##### README Update Process

###### Check for Updates Needed

- **ACTION**: Review completed tasks for major changes
- **IDENTIFY**: Changes that affect project overview, tech stack, or setup
- **DECIDE**: Whether README.md needs updating

###### Update README.md

- **ACTION**: Update README.md at project root
- **SOURCE**: Use updated mission.md and tech-stack.md content
- **SECTIONS**: Update relevant sections (Overview, Features, Tech Stack, Getting Started)
- **FORMAT**: Follow `@.spec/instructions/markdown-rules.md` for proper formatting
- **VALIDATE**: Ensure README reflects current project state

##### Instructions for README Updates

- **ACTION**: Check if major changes require README update
- **UPDATE**: README.md when significant changes occur
- **SOURCE**: Extract content from updated internal documentation
- **FORMAT**: Follow `@.spec/instructions/markdown-rules.md` for proper formatting
- **COMMIT**: Include README updates in feature commits

### Step 6: Completion Activities

#### Task Completion Notification

##### Plays

System sound

##### Alerts

User of completion

##### Notification Command

```bash
afplay /System/Library/Sounds/Glass.aiff
```

##### Instructions for Notification

- **ACTION**: Play completion sound
- **PURPOSE**: Alert user that task is complete

#### Completion Summary

##### Summary Creates

Summary message

##### Summary Format

Structured with emojis

##### Summary Template

```markdown
## ✅ What's been done

1. **[FEATURE_1]** - [ONE_SENTENCE_DESCRIPTION]
2. **[FEATURE_2]** - [ONE_SENTENCE_DESCRIPTION]

## ⚠️ Issues encountered

[ONLY_IF_APPLICABLE]
- **[ISSUE_1]** - [DESCRIPTION_AND_REASON]

## 👀 Ready to test in browser

[ONLY_IF_APPLICABLE]
1. [STEP_1_TO_TEST]
2. [STEP_2_TO_TEST]

## 📦 Pull Request

View PR: [GITHUB_PR_URL]
```

##### Summary Sections

###### Required

- Functionality recap
- Pull request info

###### Conditional

- Issues encountered (if any)
- Testing instructions (if testable in browser)

##### Instructions for Completion Summary

- **ACTION**: Create comprehensive summary
- **INCLUDE**: All required sections
- **ADD**: Conditional sections if applicable
- **FORMAT**: Use emoji headers for scannability

## Integration Points

### AI Logging Integration

- **ACTION**: Log all task execution activities to [PROJECT_NAME]-spec/ai-log.md (project root)
- **INCLUDE**: Code generation, testing, git operations
- **TRACK**: Task execution session start and completion
- **RECORD**: Task decisions and implementation details

### AI Rules Compliance

- **ACTION**: Follow @.spec/instructions/ai-rules.md for all operations
- **PERMISSIONS**: Respect file system permissions and user interaction protocols
- **ERROR_HANDLING**: Implement proper error handling and recovery
- **TRANSPARENCY**: Maintain clear audit trail of all actions
- **CONTEXT**: Update current development phase

### Configuration Integration

- **ACTION**: Load configuration from [PROJECT_NAME]-spec/config.yml (project root)
- **SETTINGS**: Apply user preferences and system settings
- **VALIDATION**: Ensure configuration is valid and complete
- **OVERRIDE**: Respect user overrides when specified

## Error Handling and Recovery

### Error Protocols

#### Blocking Issues

- Document in tasks.md
- Mark with ⚠️ emoji
- Include in summary

#### Test Failures

- Fix before proceeding
- Never commit broken tests

#### Technical Roadblocks

- Attempt 3 approaches
- Document if unresolved
- Seek user input

### Common Phase Errors

#### Missing Phase Files

```markdown
**Error**: Required phase file not found
**Solution**: Create missing phase file or skip phase
**Action**: Check phase file naming convention
```

#### Dependency Failures

```markdown
**Error**: Phase dependencies not met
**Solution**: Complete prerequisite phases first
**Action**: Review checklist for blocking items
```

#### User Input Errors

```markdown
**Error**: Invalid or missing user input
**Solution**: Prompt user for correct input
**Action**: Validate input format and requirements
```

### Recovery Procedures

#### Phase Rollback

- **ACTION**: Revert to previous phase state
- **BACKUP**: Restore from phase checkpoints
- **CLEANUP**: Remove incomplete phase artifacts
- **RESTART**: Begin phase execution again

#### Partial Completion

- **ACTION**: Continue from last successful task
- **SKIP**: Skip failed tasks if possible
- **DOCUMENT**: Mark failed tasks for later resolution
- **PROCEED**: Continue with next phase if dependencies met

## Final Checklist and Verification

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Task implementation complete
    [ ] All tests passing
    [ ] tasks.md updated
    [ ] README.md updated (if major changes)
    [ ] Code committed and pushed
    [ ] Pull request created
    [ ] Roadmap checked/updated
    [ ] Summary provided to user
    [ ] Cross-command dependencies validated
    [ ] End-to-end workflow tested
    [ ] File location consistency verified
    [ ] Command sequence validation complete
    [ ] Error propagation between commands tested
    [ ] CRITICAL: All spec-related tasks completed before code implementation
    [ ] CRITICAL: No project-centric code written until specs finalized
    [ ] CRITICAL: Spec completion enforcement verified
```

### Continuation Options

After completing tasks, provide user with next steps:

```markdown
**Task execution complete! Next steps:**

1. **Continue with next task** - Type 'next task' to work on the next task in the spec
2. **Create new spec** - Type 'new spec' to create a new feature specification
3. **Check status** - Type 'status' to review project progress
4. **Update project** - Type 'update' to sync recent changes with documentation

What would you like to do next?
```

#### Continuation Flow

If user types "next task":

- Continue with next task in current spec
- Maintain context from previous task

If user types "new spec":

- Reference: @.spec/instructions/create-spec.md
- Start new spec creation process

If user types "status":

- Reference: @.spec/instructions/status.md
- Provide project status overview

If user types "update":

- Reference: @.spec/instructions/update.md
- Sync recent changes with documentation

***CRITICAL ENFORCEMENT: ALL SPEC-RELATED TASKS MUST BE COMPLETED AND VERIFIED BEFORE ANY PROJECT-CENTRIC CODE IS WRITTEN***
