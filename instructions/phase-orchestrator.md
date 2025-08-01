---
description: Phase-Based Project Orchestration for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Phase-Based Project Orchestration

## Overview

Execute project phases sequentially with comprehensive tracking, error handling, and user interaction management. This system provides structured, automated project execution while maintaining user control over critical decisions.

***CRITICAL ENFORCEMENT: NO PROJECT-CENTRIC CODE WRITING UNTIL ALL SPEC TASKS COMPLETE***

**IMPORTANT NOTE**: Before executing any implementation phases, ensure that ALL spec-related tasks are completed and verified:

- Project planning and mission definition
- Tech stack analysis and documentation  
- Product roadmap creation
- Feature specification development
- Task breakdown and prioritization

**ENFORCEMENT**: This rule applies to ALL project phases and cannot be bypassed. Do not proceed to code implementation until all specs are finalized.

## Process Flow

### Step 1: Phase Discovery and Validation

#### Phase File Discovery

- **ACTION**: Scan project root for phase files matching pattern `phase_*.md`
- **PATTERN**: `phase_XX_description.md` where XX is a two-digit number
- **ORDER**: Sort numerically by phase number
- **VALIDATION**: Ensure phase files exist and are readable

#### Phase Structure Validation

Each phase file must contain:

- **Objective**: Clear statement of what the phase accomplishes
- **Instructions**: Detailed step-by-step instructions for AI
- **File Outputs**: List of files to be created or modified
- **Dependencies**: Any prerequisites from previous phases
- **Success Criteria**: How to determine phase completion

#### Phase Dependencies Check

- **ACTION**: Verify all prerequisite phases are completed
- **CHECK**: Review `checklist.md` (project root) for phase completion status
- **BLOCK**: If dependencies not met, report blocking issues
- **PROCEED**: Only continue if all dependencies satisfied

### Step 2: Phase Execution Loop

#### Phase Selection

- **ACTION**: Identify next uncompleted phase
- **PRIORITY**: Execute phases in numerical order

FOR EACH phase file in numerical order:
    IF phase is marked as complete in checklist.md:
        ✅ Skip completed phase
        → Continue to next phase
    ELSE:
        ❌ Found uncompleted phase
        → Select this phase for execution
        → Report current phase and progress
        → Break loop and proceed with execution

IF no uncompleted phases found:
    ✅ All phases completed
    → Report completion status
    → Exit phase execution

#### Phase Initialization

##### Memory Check

- **ACTION**: Check `[PROJECT_NAME]-spec/project-memory.md` (project root) for context
- **LOAD**: Relevant project context and previous decisions
- **UPDATE**: Memory with phase start timestamp

##### User Input Collection

- **ACTION**: Collect required user inputs for current phase
- **PROMPT**: Clear, specific prompts for each required input
- **VALIDATE**: Verify input format and completeness
- **STORE**: Save inputs for phase execution

##### Phase Context Setup

- **ACTION**: Load phase-specific configuration and templates
- **PREPARE**: Set up working directory and file structure
- **INITIALIZE**: Create any required temporary files

#### Phase Execution

##### Sequential Task Execution

- **ACTION**: Execute phase tasks in defined order
- **TRACK**: Monitor progress for each task
- **LOG**: Record actions and decisions to `[PROJECT_NAME]-spec/ai-log.md` (project root)
- **HANDLE**: Manage errors and exceptions

##### Test Integration

- **ACTION**: Run tests after code generation
- **VALIDATE**: Ensure generated code meets requirements
- **REMEDIATE**: Attempt automatic fixes for test failures
- **REPORT**: Document any unresolved issues

##### User Interaction Management

- **ACTION**: Handle user interactions as defined in phase
- **PROMPT**: Clear, actionable prompts for user input
- **WAIT**: Pause execution until user provides required input
- **VALIDATE**: Verify user input before proceeding

#### Phase Completion

##### Success Validation

- **ACTION**: Verify all phase success criteria are met
- **CHECK**: Validate all required files are created
- **TEST**: Run phase-specific tests if defined
- **CONFIRM**: Ensure no blocking errors remain

##### Documentation Update

- **ACTION**: Update project documentation with phase results
- **MEMORY**: Update `[PROJECT_NAME]-spec/project-memory.md` (project root) with phase completion
- **CHECKLIST**: Mark phase tasks as complete in `checklist.md` (project root)
- **LOG**: Record phase completion in activity log

### Step 3: Error Handling and Recovery

#### Error Detection

##### Error Types

- **File System Errors**: Permission issues, missing files, disk space
- **Tool Execution Errors**: Command failures, version conflicts
- **User Input Errors**: Invalid formats, missing required data
- **Dependency Errors**: Missing prerequisites, version mismatches

##### Error Logging

- **ACTION**: Log all errors to `[PROJECT_NAME]-spec/ai-log.md` (project root)
- **DETAIL**: Include error message, context, and impact
- **TIMESTAMP**: Record when error occurred
- **SEVERITY**: Classify error as blocking or non-blocking

#### Error Recovery

##### Automatic Recovery

WHILE error can be automatically fixed:
    ✅ Attempt automatic fix for common errors
    → Retry failed operations with different approaches
    → Use alternative methods when primary fails
    → Continue with available functionality
ELSE:
    ❌ Automatic recovery failed
    → Proceed to user intervention

##### User Intervention

IF automatic recovery fails:
    ❌ Prompt user for guidance on unresolved errors
    → Clearly describe the error and its impact
    → Provide possible solutions or workarounds
    → Wait for user direction
    → Resume execution based on user input
ELSE:
    ✅ Error resolved automatically
    → Continue normal execution

##### Graceful Degradation

IF error cannot be resolved:
    ❌ Continue execution with reduced functionality
    → Document affected features as unavailable
    → Plan error resolution for later phase
    → Notify user of limitations
ELSE:
    ✅ Full functionality restored
    → Continue normal execution

### Step 4: Progress Tracking and Reporting

#### Real-Time Progress Updates

##### Checklist Management

- **ACTION**: Update `checklist.md` (project root) after each task
- **TIMESTAMP**: Record completion time for each item
- **STATUS**: Mark items as complete, in-progress, or blocked
- **ACTIVITY**: Add entries to recent activity log

##### Progress Summary

- **ACTION**: Generate progress summary after each phase
- **METRICS**: Calculate completion percentages
- **BLOCKERS**: Identify any blocking issues
- **NEXT**: Show next phase and estimated timeline

#### User Communication

##### Status Reports

- **ACTION**: Provide clear status updates to user
- **FORMAT**: Use structured, scannable format
- **FREQUENCY**: Update after each major milestone
- **DETAIL**: Include relevant context and next steps

##### Decision Points

- **ACTION**: Present clear decision points to user
- **OPTIONS**: Provide specific choices with pros/cons
- **RECOMMENDATION**: Suggest optimal path when possible
- **CONFIRMATION**: Wait for user approval before proceeding

### Step 5: Phase Completion and Transition

#### Phase Validation

##### Completion Criteria

- **ACTION**: Verify all phase objectives are met
- **CHECKLIST**: Ensure all tasks are marked complete
- **TESTS**: Confirm all tests are passing
- **DOCUMENTATION**: Validate documentation is updated

##### Quality Assurance

- **ACTION**: Review generated code and files
- **LINT**: Run linting and formatting checks
- **VALIDATE**: Ensure code follows project standards
- **SECURITY**: Check for security best practices

#### Phase Transition

##### Memory Update

- **ACTION**: Update `[PROJECT_NAME]-spec/project-memory.md` (project root) with phase results
- **CONTEXT**: Add phase-specific context and decisions
- **TIMELINE**: Record phase completion in project timeline
- **LEARNINGS**: Document any insights or lessons learned

##### Next Phase Preparation

- **ACTION**: Prepare for next phase execution
- **DEPENDENCIES**: Verify next phase dependencies are met
- **CONTEXT**: Load relevant context for next phase
- **RESOURCES**: Ensure required resources are available

## Configuration Options

### Execution Modes

#### Interactive Mode (Default)

- **USER_INPUT**: Prompt for all required inputs
- **CONFIRMATION**: Ask for approval before major changes
- **PAUSE**: Stop at decision points for user guidance
- **LOG**: Detailed logging of all actions

#### Autonomous Mode (YOLO)

- **AUTO_PROCEED**: Continue without user confirmation
- **PLACEHOLDER**: Use safe placeholder values for missing inputs
- **FAST_TRACK**: Skip non-critical user interactions
- **LOG**: Comprehensive logging for audit trail

#### Dry Run Mode

- **GENERATE**: Create all files and code
- **NO_EXECUTE**: Do not run commands or make changes
- **PREVIEW**: Show what would be executed
- **VALIDATE**: Run validation checks only

### Error Handling Configuration

#### Retry Settings

- **MAX_RETRIES**: Maximum number of retry attempts
- **RETRY_DELAY**: Delay between retry attempts
- **BACKOFF**: Exponential backoff for repeated failures

#### Recovery Options

- **AUTO_FIX**: Attempt automatic error recovery
- **USER_PROMPT**: Ask user for guidance on errors

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

- **SKIP_FAILED**: Skip failed tasks and continue
- **STOP_ON_ERROR**: Halt execution on any error

## Integration with Existing Commands

### Command Compatibility

#### plan-product.md Integration

- **PHASE_0**: Use plan-product.md as Phase 0 (Project Setup)
- **OUTPUTS**: Integrate plan-product.md outputs into phase system
- **MEMORY**: Update project memory with planning results

#### create-spec.md Integration

- **PHASE_X**: Use create-spec.md as development phase
- **SPECS**: Track spec creation in phase progress
- **DEPENDENCIES**: Ensure planning phase completed first

#### execute-tasks.md Integration

- **PHASE_X**: Use execute-tasks.md as implementation phase
- **TASKS**: Track task execution in phase progress
- **DEPENDENCIES**: Ensure spec creation phase completed first

### Status Integration

#### status.md Integration

- **PHASE_STATUS**: Include phase progress in status reports
- **MEMORY_SYNC**: Synchronize with project memory
- **CHECKLIST_SYNC**: Update checklist with phase status

## Error Handling

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

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Phase discovery and validation working
    [ ] Sequential execution loop implemented
    [ ] Error handling and recovery procedures defined
    [ ] Progress tracking and reporting functional
    [ ] Integration with existing commands complete
    [ ] Configuration options documented
    [ ] Error handling procedures tested
    [ ] Cross-command dependencies validated
    [ ] End-to-end workflow tested
    [ ] File location consistency verified
    [ ] Command sequence validation complete
    [ ] Error propagation between commands tested
    [ ] CRITICAL: All spec-related tasks completed before implementation phases
    [ ] CRITICAL: No project-centric code written until specs finalized
    [ ] CRITICAL: Spec completion enforcement verified in phase orchestration
```

### Continuation Options

After completing phases, provide user with next steps:

```markdown
**Phase orchestration complete! Next steps:**

1. **Continue to next phase** - Type 'next phase' to proceed to the next development phase
2. **Create new spec** - Type 'new spec' to create a new feature specification
3. **Execute tasks** - Type 'execute' to work on specific tasks
4. **Check status** - Type 'status' to review project progress

What would you like to do next?
```

#### Continuation Flow

If user types "next phase":

- Continue with next phase in sequence
- Maintain context from previous phases

If user types "new spec":

- Reference: @.spec/instructions/create-spec.md
- Start new spec creation process

If user types "execute":

- Reference: @.spec/instructions/execute-tasks.md
- Begin task execution

If user types "status":

- Reference: @.spec/instructions/status.md
- Provide project status overview

***CRITICAL ENFORCEMENT: ALL SPEC-RELATED TASKS MUST BE COMPLETED AND VERIFIED BEFORE ANY PROJECT-CENTRIC CODE IS WRITTEN***
