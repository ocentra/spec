---
description: Checklist Management System for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Checklist Management System

## Overview

Provides the template and instructions for creating and maintaining a central `checklist.md` file in the project root that provides an always-visible, scannable overview of project status and progress.

> **Architecture Note:** This is a static instruction file. The checklist file is created as `checklist.md` (project root) when this instruction is executed.

## Process Flow

### Step 1: Checklist Creation

#### Creates

File: checklist.md (project root, using the template below)

#### Checklist Structure

##### Project Setup Checklist

IF .spec/ directory exists AND contains required files:
    [x] Spec installed and configured
ELSE:
    [ ] Spec installed and configured

IF [PROJECT_NAME]-spec/product/ directory exists:
    [x] Product documentation created
ELSE:
    [ ] Product documentation created

IF tech-stack.md exists:
    [x] Tech stack documented
ELSE:
    [ ] Tech stack documented

IF roadmap.md exists:
    [x] Roadmap established
ELSE:
    [ ] Roadmap established

IF decisions.md exists:
    [x] Initial decisions logged
ELSE:
    [ ] Initial decisions logged

##### Development Checklist

IF .spec/specs/ directory exists:
    [x] Active specs identified
ELSE:
    [ ] Active specs identified

IF tasks.md exists:
    [x] Current tasks tracked
ELSE:
    [ ] Current tasks tracked

IF blocked items documented in tasks.md:
    [x] Blocked items documented
ELSE:
    [ ] Blocked items documented

IF .git/ directory exists:
    [x] Git workflow established
ELSE:
    [ ] Git workflow established

IF testing strategy defined in documentation:
    [x] Testing strategy defined
ELSE:
    [ ] Testing strategy defined

##### Maintenance Checklist

IF documentation files are up to date:
    [x] Documentation up to date
ELSE:
    [ ] Documentation up to date

IF decisions.md is current:
    [x] Decisions log current
ELSE:
    [ ] Decisions log current

IF completed specs are archived:
    [x] Completed specs archived
ELSE:
    [ ] Completed specs archived

IF roadmap.md is updated:
    [x] Roadmap progress updated
ELSE:
    [ ] Roadmap progress updated

IF project-memory.md is current:
    [x] Memory checkpoint current
ELSE:
    [ ] Memory checkpoint current

#### Checklist Template

```markdown
# Project Task Checklist

The checklist tracks the progress of the [PROJECT_NAME] project. Tasks will be marked as `[x]` upon completion by the AI orchestrator.
This checklist needs a timestamp each time this checklist is edited or marked or new task is done or added. Important for tracking progress and maintaining project memory.

## Setup Time

    [INITIAL_SETUP_TIMESTAMP]

## Last Modified

    [LAST_MODIFIED_TIMESTAMP] - [ACTIVITY_DESCRIPTION]

## 📊 Progress Summary

- **Total Specs**: [COUNT]
- **Completed**: [COUNT]
- **In Progress**: [COUNT]
- **Blocked**: [COUNT]
- **Roadmap Progress**: [X] of [Y] phases complete

## Phase 0: Project Setup & Planning

IF .spec/ directory exists AND contains required files:
  - [x] Spec installed and configured
ELSE:
  - [ ] Spec installed and configured

IF mission.md AND mission-lite.md exist:
  - [x] Product documentation created (mission.md, mission-lite.md)
ELSE:
  - [ ] Product documentation created (mission.md, mission-lite.md)

IF tech-stack.md exists:
  - [x] Tech stack documented (tech-stack.md)
ELSE:
  - [ ] Tech stack documented (tech-stack.md)

IF roadmap.md exists:
  - [x] Roadmap established (roadmap.md)
ELSE:
  - [ ] Roadmap established (roadmap.md)

IF decisions.md exists:
  - [x] Initial decisions logged (decisions.md)
ELSE:
  - [ ] Initial decisions logged (decisions.md)

IF project-memory.md exists:
  - [x] Project memory initialized (project-memory.md)
ELSE:
  - [ ] Project memory initialized (project-memory.md)

IF README.md exists at project root:
  - [x] README.md created at project root
ELSE:
  - [ ] README.md created at project root

IF .git/ directory exists:
  - [x] Git repository initialized
ELSE:
  - [ ] Git repository initialized

IF initial commit with project documentation exists:
  - [x] Initial commit with project documentation
ELSE:
  - [ ] Initial commit with project documentation

## Phase 1: Development Infrastructure

IF development environment is configured:
  - [x] Development environment configured
ELSE:
  - [ ] Development environment configured

IF testing strategy is defined:
  - [x] Testing strategy defined
ELSE:
  - [ ] Testing strategy defined

IF code style guidelines are established:
  - [x] Code style guidelines established
ELSE:
  - [ ] Code style guidelines established

IF git workflow is established:
  - [x] Git workflow established
ELSE:
  - [ ] Git workflow established

IF CI/CD pipeline is configured (if applicable):
  - [x] CI/CD pipeline configured (if applicable)
ELSE:
  - [ ] CI/CD pipeline configured (if applicable)

IF development server is setup:
  - [x] Development server setup
ELSE:
  - [ ] Development server setup

## Phase 2: Feature Development

IF active specs are identified and tracked:
  - [x] Active specs identified and tracked
ELSE:
  - [ ] Active specs identified and tracked

IF current tasks are documented in tasks.md:
  - [x] Current tasks documented in tasks.md
ELSE:
  - [ ] Current tasks documented in tasks.md

IF blocked items are identified and reasons documented:
  - [x] Blocked items identified and reasons documented
ELSE:
  - [ ] Blocked items identified and reasons documented
IF code implementation follows TDD approach:
  - [x] Code implementation following TDD approach
ELSE:
  - [ ] Code implementation following TDD approach

IF tests are written and passing:
  - [x] Tests written and passing
ELSE:
  - [ ] Tests written and passing

IF code review process is established:
  - [x] Code review process established
ELSE:
  - [ ] Code review process established

## Phase 3: Quality Assurance

IF all tests are passing:
  - [x] All tests passing
ELSE:
  - [ ] All tests passing

IF code linting and formatting is complete:
  - [x] Code linting and formatting complete
ELSE:
  - [ ] Code linting and formatting complete

IF security review is completed:
  - [x] Security review completed
ELSE:
  - [ ] Security review completed

IF performance testing is done:
  - [x] Performance testing done
ELSE:
  - [ ] Performance testing done

IF documentation is updated:
  - [x] Documentation updated
ELSE:
  - [ ] Documentation updated

IF user acceptance testing is completed:
  - [x] User acceptance testing completed
ELSE:
  - [ ] User acceptance testing completed

## Phase 4: Deployment & Maintenance

IF production deployment is completed:
  - [x] Production deployment completed
ELSE:
  - [ ] Production deployment completed

IF monitoring and logging is configured:
  - [x] Monitoring and logging configured
ELSE:
  - [ ] Monitoring and logging configured

IF backup strategy is implemented:
  - [x] Backup strategy implemented
ELSE:
  - [ ] Backup strategy implemented

IF completed specs are archived:
  - [x] Completed specs archived
ELSE:
  - [ ] Completed specs archived

IF roadmap progress is updated:
  - [x] Roadmap progress updated
ELSE:
  - [ ] Roadmap progress updated

IF memory checkpoint is current:
  - [x] Memory checkpoint current
ELSE:
  - [ ] Memory checkpoint current

## 📊 Progress Summary

- **Total Specs**: [COUNT]
- **Completed**: [COUNT]
- **In Progress**: [COUNT]
- **Blocked**: [COUNT]
- **Roadmap Progress**: [X] of [Y] phases complete

## ⏭️ Next Actions

1. [ ] [NEXT_ACTION_1]
2. [ ] [NEXT_ACTION_2]
3. [ ] [NEXT_ACTION_3]

## 📝 Recent Activity Log

    **[TIMESTAMP]**: [ACTIVITY_DESCRIPTION] - [REASON/IMPACT]
    **[TIMESTAMP]**: [ACTIVITY_DESCRIPTION] - [REASON/IMPACT]
    **[TIMESTAMP]**: [ACTIVITY_DESCRIPTION] - [REASON/IMPACT]

## 🔧 Current State

- **Active Phase**: [CURRENT_PHASE]
- **Current Focus**: [CURRENT_TASK_OR_ACTIVITY]
- **Blocking Issues**: [ANY_BLOCKING_ISSUES]
- **Next Priority**: [NEXT_PRIORITY_ITEM]

## ⚠️ Blocked Items

    **[BLOCKED_ITEM_1]**: [REASON] - [IMPACT]
    **[BLOCKED_ITEM_2]**: [REASON] - [IMPACT]

## ✅ Recently Completed

    **[TIMESTAMP]**: [COMPLETED_ITEM] - [IMPACT]
    **[TIMESTAMP]**: [COMPLETED_ITEM] - [IMPACT]

#### Instructions for Checklist Creation

- **ACTION**: Create checklist.md (project root) with template
- **TIMESTAMP**: Add initial setup timestamp
- **UPDATE**: Checkboxes based on current project state
- **MAINTAIN**: Regular updates as project progresses
- **LOG**: All activities with timestamps and reasons

### Step 2: Checklist Updates

#### Update Triggers

- Project initialization
- Spec creation
- Task completion
- Git commits
- Documentation changes
- Roadmap updates

#### Update Process

##### Timestamp Management

Every checklist update must include:

- **Last Modified**: Current timestamp with activity description
- **Activity Log**: Add entry to Recent Activity Log section
- **Reason/Impact**: Why the change was made and its impact

##### Project Setup Updates

When project setup items are completed:

    [ ] → [x] for completed items
    Add completion timestamp to activity log
    Update progress summary
    Update current state section

##### Development Updates

When development items change:

- Update active specs count
- Mark completed tasks with timestamps
- Document blocked items with reasons
- Update next actions
- Add to activity log with impact

##### Maintenance Updates

When maintenance items need attention:

- Flag outdated documentation
- Highlight pending decisions
- Mark completed specs for archiving
- Update activity log with maintenance actions

#### Instructions for Checklist Updates

- **ACTION**: Update checklist after each major activity
- **TIMESTAMP**: Always update "Last Modified" with current timestamp
- **LOG**: Add activity to "Recent Activity Log" with reason/impact
- **MARK**: Completed items with [x] and timestamp
- **ADD**: New items as they become relevant
- **REMOVE**: Completed items that are no longer relevant
- **STATE**: Update "Current State" section with latest status

### Step 3: Integration with Other Commands

#### Integration Points

##### plan-product.md

- **After Step 7**: Update checklist with project setup completion
- **Check**: All setup items marked complete

##### create-spec.md

- **After Step 14**: Update checklist with new spec
- **Add**: Spec to active specs count

##### execute-tasks.md

- **After Step 7**: Update checklist with task completion
- **After Step 8**: Update checklist with roadmap progress
- **After Step 9**: Update checklist with README updates (if applicable)

##### analyze-product.md

- **After Step 3**: Update checklist with analysis completion
- **Mark**: Setup items based on existing state

#### Integration Template

```markdown
#### Checklist Update

- **ACTION**: Update checklist.md (project root) with current activity
- **TIMESTAMP**: Update "Last Modified" section with current timestamp
- **LOG**: Add entry to "Recent Activity Log" with activity description and impact
- **MARK**: Relevant items as complete with timestamps
- **UPDATE**: Progress summary and next actions
- **STATE**: Update "Current State" section with latest status
```

#### Instructions for Integration

- **ACTION**: Add checklist update to each major command
- **INCLUDE**: Template in appropriate steps
- **ENSURE**: Checklist stays current with project state

### Step 4: Checklist Visibility

#### Display Locations

- **Root**: checklist.md (project root) always visible
- **Status**: Included in status reports
- **Memory**: Referenced in project memory
- **Commands**: Quick reference in command outputs

#### Quick Reference

```markdown
## 📋 Quick Status
Check `checklist.md` (project root) for current project status and next actions.
```

#### Instructions for Visibility

- **ACTION**: Ensure checklist is easily accessible
- **REFERENCE**: Include in status reports and memory
- **UPDATE**: Keep prominently visible in project structure

## Error Handling

### Missing Checklist

If checklist.md (project root) doesn't exist:

```markdown
**Action Required**: Create project checklist
**Command**: Run status check to initialize checklist
```

### Outdated Checklist

If checklist is outdated:

```markdown
**Action Required**: Update project checklist
**Command**: Run status check to refresh checklist
```

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Checklist template created
    [ ] Integration points identified
    [ ] Update triggers defined
    [ ] Visibility ensured
    [ ] Error handling in place
```
