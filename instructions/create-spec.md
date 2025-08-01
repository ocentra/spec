---
description: Spec Creation Rules for Spec
globs:
alwaysApply: false
version: 1.1
encoding: UTF-8
---

# Spec Creation Rules

## Overview

Generate detailed feature specifications aligned with product roadmap and mission. This command can create multiple specs in a single session - after completing one spec, you can continue creating additional specs as needed.

***CRITICAL ENFORCEMENT: NO PROJECT-CENTRIC CODE WRITING UNTIL ALL SPEC TASKS COMPLETE***

**IMPORTANT NOTE**: This command is for creating specifications ONLY. Before any code implementation can begin, ensure that ALL spec-related tasks are completed and verified:

- Project planning and mission definition
- Tech stack analysis and documentation  
- Product roadmap creation
- Feature specification development (this step)
- Task breakdown and prioritization

**ENFORCEMENT**: This rule applies to ALL project phases and cannot be bypassed. Do not proceed to code implementation until all specs are finalized.

## AI Agent Guidelines

### Automation Principles

- **ASSUME**: Use reasonable defaults when possible (date, naming conventions)
- **ASK**: Only when choice significantly affects outcome
- **AUTO-DETECT**: Tech stack, project structure, existing patterns
- **VALIDATE**: Check assumptions before proceeding

### Smart Defaults

- **Date**: Use current date from system (YYYY-MM-DD)
- **Naming**: kebab-case for folders, PascalCase for files
- **Structure**: Follow existing patterns in codebase
- **Templates**: Use standard templates unless custom needed

### When to Ask vs When to Assume

- **ASK**: Spec description unclear, strategic deviations, user preferences
- **ASSUME**: Date, naming conventions, basic structure, standard templates

## Process Flow

### Step 1: Spec Initiation

#### Memory Check

- **First**: Check [PROJECT_NAME]-spec/project-memory.md (project root) for current context
- **If returning**: Provide welcome back summary
- **Always**: Update memory with spec creation activity

#### Trigger Options

- Option A: User asks what's next
- Option B: User provides specific spec

#### Option A Flow

##### Trigger Phrases

- "what's next?"

##### Actions

1. Check [PROJECT_NAME]-spec/product/roadmap.md (project root)
2. Find next uncompleted item
3. Suggest item to user
4. Wait for approval

#### Option B Flow

##### Option B Trigger

User describes specific spec idea

##### Accept

Any format, length, or detail level

##### Proceed

To context gathering

#### Instructions for Spec Initiation

- **ACTION**: Identify spec initiation method
- **ROUTE**: Follow appropriate flow based on trigger
- **WAIT**: Ensure user agreement before proceeding

### Step 2: Context Gathering (Conditional)

#### Context Purpose

Minimal context for spec alignment

#### Context Condition

Only if mission-lite.md AND tech-stack.md not already in context

#### Context Conditional Logic

IF mission-lite.md is already in context AND tech-stack.md is already in context:
    ✅ Both files already loaded
    → Skip this entire step
    → Proceed directly to step 3
ELSE:
    ❌ Some files missing from context
    → Read only files not already in context:
        IF mission-lite.md NOT in context:
            → Load mission-lite.md
        IF tech-stack.md NOT in context:
            → Load tech-stack.md
    → Continue with context analysis

#### Context Analysis

- **Mission Lite**: Core product purpose and value
- **Tech Stack**: Technical requirements

#### Instructions for Context Gathering Step

- **ACTION**: Check if both files already in context
- **SKIP**: Entire step if both already read
- **READ**: Only files not already in context
- **ANALYZE**: Minimal alignment requirements

### Step 3: Requirements Clarification

#### Required Clarifications

- **Scope Boundaries**: String
- **Technical Considerations**: Array[string]

#### Clarification Areas

##### Scope

- **In Scope**: What is included
- **Out of Scope**: What is excluded (optional)

##### Technical

- Functionality specifics
- UI/UX requirements
- Integration points

#### Requirements Decision Tree

If clarification needed:

- Ask numbered questions
- Wait for user response

Else:

- Proceed to date determination

#### Instructions for Requirements Clarification

- **ACTION**: Evaluate need for clarification
- **ASK**: Numbered questions if needed
- **PROCEED**: Only with clear requirements

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

### Step 4: Date Determination

#### Date Purpose

Ensure accurate date for folder naming

#### Priority

High

#### Date Creates

Temporary file for timestamp

#### Date Determination Process

##### Primary Method: File System Timestamp

1. Create directory if not exists: .spec/specs/
2. Create temporary file: .spec/specs/.date-check
3. Read file creation timestamp from filesystem
4. Extract date in YYYY-MM-DD format
5. Delete temporary file
6. Store date in variable for folder naming

##### Fallback Method: User Confirmation

##### Fallback Trigger

If file system method fails

##### Process

1. State: "I need to confirm today's date for the spec folder"
2. Ask: "What is today's date? (YYYY-MM-DD format)"
3. Wait for user response
4. Validate format matches YYYY-MM-DD
5. Store date for folder naming

#### Date Validation

##### Format Check

`^\d{4}-\d{2}-\d{2}$`

##### Reasonableness Check

- Year: 2024-2030
- Month: 01-12
- Day: 01-31

#### Date Error Handling

If date invalid:

- Use fallback method

If both methods fail:

- Error "Unable to determine current date"

#### Instructions for Date Determination Step

- **ACTION**: Determine accurate date using file system
- **FALLBACK**: Ask user if file system method fails
- **VALIDATE**: Ensure YYYY-MM-DD format
- **STORE**: Date for immediate use in next step

### Step 5: Spec Folder Creation

#### Folder Creates

Directory .spec/specs/YYYY-MM-DD-spec-name/

#### Folder Uses

Date from step 4

#### Folder Naming

##### Folder Format

YYYY-MM-DD-spec-name

##### Folder Date

Use stored date from step 4

##### Name Constraints

- Max words: 5
- Style: kebab-case
- Descriptive: true

#### Example Names

- 2025-03-15-password-reset-flow
- 2025-03-16-user-profile-dashboard
- 2025-03-17-api-rate-limiting

#### Instructions for Folder Creation Step

- **FORMAT**: Use kebab-case for spec name
- **LIMIT**: Maximum 5 words in name
- **VERIFY**: Folder created successfully

### Step 6: Create spec.md

#### Spec Creates

File .spec/specs/YYYY-MM-DD-spec-name/spec.md

#### Spec File Template

##### Spec Header

```markdown
# Spec Requirements Document

> Spec: [SPEC_NAME]
> Created: [CURRENT_DATE]
> Status: Planning
```

##### Required Sections

- Overview
- User Stories
- Spec Scope
- Out of Scope
- Expected Deliverable

#### Section Templates

##### Overview Section

```markdown
## Overview

[1-2_SENTENCE_GOAL_AND_OBJECTIVE]
```

##### Overview Constraints

- Length: 1-2 sentences
- Content: Goal and objective

##### Overview Example

Implement a secure password reset functionality that allows users to regain account access through email verification. This feature will reduce support ticket volume and improve user experience by providing self-service account recovery.

##### User Stories Section

```markdown
## User Stories

### [STORY_TITLE]

As a [USER_TYPE], I want to [ACTION], so that [BENEFIT].

[DETAILED_WORKFLOW_DESCRIPTION]
```

##### User Stories Constraints

- Count: 1-3 stories
- Include: Workflow and problem solved
- Format: Title + story + details

##### Spec Scope Section

```markdown
## Spec Scope

1. **[FEATURE_NAME]** - [ONE_SENTENCE_DESCRIPTION]
2. **[FEATURE_NAME]** - [ONE_SENTENCE_DESCRIPTION]
```

##### Spec Scope Constraints

- Count: 1-5 features
- Format: Numbered list
- Description: One sentence each

##### Out of Scope Section

```markdown
## Out of Scope

- [EXCLUDED_FUNCTIONALITY_1]
- [EXCLUDED_FUNCTIONALITY_2]
```

##### Out of Scope Purpose

Explicitly exclude functionalities

##### Expected Deliverable Section

```markdown
## Expected Deliverable

1. [TESTABLE_OUTCOME_1]
2. [TESTABLE_OUTCOME_2]
```

##### Deliverable Constraints

- Count: 1-3 expectations
- Focus: Browser-testable outcomes

#### Instructions for Spec Document Creation

- **ACTION**: Create spec.md with all sections
- **FILL**: Use spec details from steps 1-3
- **MAINTAIN**: Clear, concise descriptions

### Step 7: Create spec-lite.md

#### Spec Lite Creates

File .spec/specs/YYYY-MM-DD-spec-name/spec-lite.md

#### Spec Lite Purpose

Condensed spec for efficient AI context usage

#### Spec Lite File Template

##### Spec Lite Header

```markdown
# Spec Summary (Lite)
```

#### Content Structure

##### Spec Summary

- Source: Step 6 spec.md overview section
- Length: 1-3 sentences
- Content: Core goal and objective of the feature

#### Content Template

```markdown
[1-3_SENTENCES_SUMMARIZING_SPEC_GOAL_AND_OBJECTIVE]
```

##### Spec Lite Example

Implement secure password reset via email verification to reduce support tickets and enable self-service account recovery. Users can request a reset link, receive a time-limited token via email, and set a new password following security best practices.

#### Instructions for Spec Lite Creation

- **ACTION**: Create spec-lite.md from spec.md overview
- **EXTRACT**: Core goal and objective from spec.md
- **CONDENSE**: Into 1-3 sentences maximum
- **FOCUS**: Essential feature purpose only

### Step 8: Create Technical Specification

#### Technical Creates

- Directory: sub-specs/
- File: sub-specs/technical-spec.md

#### Technical File Template

##### Technical Header

```markdown
# Technical Specification

This is the technical specification for the spec detailed in [PROJECT_NAME]-spec/specs/YYYY-MM-DD-spec-name/spec.md (project root)
```

#### Spec Sections

##### Technical Requirements

- Functionality details
- UI/UX specifications
- Integration requirements
- Performance criteria

##### External Dependencies (Conditional)

- Only include if new dependencies needed
- New libraries/packages
- Justification for each
- Version requirements

#### Example Template

```markdown
## Technical Requirements

- [SPECIFIC_TECHNICAL_REQUIREMENT]
- [SPECIFIC_TECHNICAL_REQUIREMENT]

## External Dependencies (Conditional)

[ONLY_IF_NEW_DEPENDENCIES_NEEDED]
- **[LIBRARY_NAME]** - [PURPOSE]
- **Justification:** [REASON_FOR_INCLUSION]
```

#### Technical Conditional Logic

If spec requires new external dependencies:

- Include "External Dependencies" section

Else:

- Omit section entirely

#### Instructions for Technical Specification Creation

- **ACTION**: Create sub-specs folder and technical-spec.md
- **DOCUMENT**: Technical requirements only
- **INCLUDE**: External dependencies section ONLY if new libraries needed
- **OMIT**: Multiple approach options and rationale

### Step 9: Create Database Schema (Conditional)

#### Database Creates

File sub-specs/database-schema.md

#### Database Condition

Only if database changes needed

#### Database Decision Tree

If spec requires database changes:

- Create sub-specs/database-schema.md

Else:

- Skip this step

#### Database File Template

##### Database Header

```markdown
# Database Schema

This is the database schema implementation for the spec detailed in @.spec/specs/YYYY-MM-DD-spec-name/spec.md
```

#### Schema Sections

##### Changes

- New tables
- New columns
- Modifications
- Migrations

##### Specifications

- Exact SQL or migration syntax
- Indexes and constraints
- Foreign key relationships

##### Rationale

- Reason for each change
- Performance considerations
- Data integrity rules

#### Instructions for Database Schema Creation

- **ACTION**: Check if database changes needed
- **CREATE**: database-schema.md only if required
- **INCLUDE**: Complete SQL/migration specifications

### Step 10: Create API Specification (Conditional)

#### API Creates

File sub-specs/api-spec.md

#### API Condition

Only if API changes needed

#### API Decision Tree

If spec requires API changes:

- Create sub-specs/api-spec.md

Else:

- Skip this step

#### API File Template

##### API Header

```markdown
# API Specification

This is the API specification for the spec detailed in @.spec/specs/YYYY-MM-DD-spec-name/spec.md
```

#### API Sections

##### Routes

- HTTP method
- Endpoint path
- Parameters
- Response format

##### Controllers

- Action names
- Business logic
- Error handling

##### API Purpose

- Endpoint rationale
- Integration with features

#### Endpoint Template

```markdown
## Endpoints

### [HTTP_METHOD] [ENDPOINT_PATH]

**Purpose:** [DESCRIPTION]
**Parameters:** [LIST]
**Response:** [FORMAT]
**Errors:** [POSSIBLE_ERRORS]
```

#### Instructions for API Specification Creation

- **ACTION**: Check if API changes needed
- **CREATE**: api-spec.md only if required
- **DOCUMENT**: All endpoints and controllers

### Step 11: User Review

#### Action

Request user review

#### Reviews

- spec.md
- All sub-specs files

#### Review Request

```markdown
I've created the spec documentation:

- Spec Requirements: @.spec/specs/YYYY-MM-DD-spec-name/spec.md
- Spec Summary: @.spec/specs/YYYY-MM-DD-spec-name/spec-lite.md
- Technical Spec: @.spec/specs/YYYY-MM-DD-spec-name/sub-specs/technical-spec.md
[LIST_OTHER_CREATED_SPECS]

Please review and let me know if any changes are needed before I create the task breakdown.
```

#### Instructions for User Review Step

- **ACTION**: Request user review of all documents
- **WAIT**: For approval or revision requests
- **REVISE**: Make requested changes if any

### Step 12: Create tasks.md

#### Tasks Creates

File tasks.md

#### Tasks Depends On

User approval from step 11

#### File Template

##### Header

```markdown
# Spec Tasks
```

#### Task Structure

##### Major Tasks

- Count: 1-5
- Format: Numbered checklist
- Grouping: By feature or component

##### Subtasks

- Count: Up to 8 per major task
- Format: Decimal notation (1.1, 1.2)
- First subtask: Typically write tests
- Last subtask: Verify all tests pass

#### Task Template

```markdown
## Tasks

- [ ] 1. [MAJOR_TASK_DESCRIPTION]
  - [ ] 1.1 Write tests for [COMPONENT]
  - [ ] 1.2 [IMPLEMENTATION_STEP]
  - [ ] 1.3 [IMPLEMENTATION_STEP]
  - [ ] 1.4 Verify all tests pass

- [ ] 2. [MAJOR_TASK_DESCRIPTION]
  - [ ] 2.1 Write tests for [COMPONENT]
  - [ ] 2.2 [IMPLEMENTATION_STEP]
```

#### Ordering Principles

- Consider technical dependencies
- Follow TDD approach
- Group related functionality
- Build incrementally

#### Instructions for Task Creation

- **ACTION**: Create task breakdown following TDD
- **STRUCTURE**: Major tasks with subtasks
- **ORDER**: Consider dependencies

### Step 13: Decision Documentation (Conditional)

#### Decision Evaluates

Strategic impact without loading decisions.md

#### Updates

decisions.md only if significant deviation and user approves

#### Conditional Reads

If mission-lite.md NOT in context:

- Read @.spec/product/mission-lite.md

If roadmap.md NOT in context:

- Read @.spec/product/roadmap.md

Never load decisions.md

#### Decision Analysis

##### Review Against

- @.spec/product/mission-lite.md (conditional)
- @.spec/product/roadmap.md (conditional)

##### Criteria

- Significantly deviates from mission in mission-lite.md
- Significantly changes or conflicts with roadmap.md

#### Strategic Decision Tree

If spec does NOT significantly deviate:

- Skip this entire step
- State "Spec aligns with mission and roadmap"
- Proceed to step 13

Else if spec significantly deviates:

- Explain the significant deviation
- Ask user: "This spec significantly deviates from our mission/roadmap. Should I draft a decision entry?"
- If user approves:
  - Draft decision entry
  - Update decisions.md
- Else:
  - Skip updating decisions.md
  - Proceed to step 13

#### Decision Template

```markdown
## [CURRENT_DATE]: [DECISION_TITLE]

**ID:** DEC-[NEXT_NUMBER]
**Status:** Accepted
**Category:** [technical/product/business/process]
**Related Spec:** @.spec/specs/YYYY-MM-DD-spec-name/

### Decision

[DECISION_SUMMARY]

### Context

[WHY_THIS_DECISION_WAS_NEEDED]

### Deviation

[SPECIFIC_DEVIATION_FROM_MISSION_OR_ROADMAP]
```

#### Instructions for Decision Documentation Step

- **ACTION**: Check if mission-lite.md and roadmap.md already in context
- **READ**: Only files not already in context
- **NEVER**: Load decisions.md
- **EVALUATE**: Only significant deviations warrant decision entry
- **ASK**: User permission before drafting any decision
- **UPDATE**: decisions.md only with explicit user approval

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

### Step 14: Execution Readiness

#### Execution Evaluates

Readiness to begin implementation

#### Execution Depends On

Completion of all previous steps

#### Memory Update

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with new spec details
- **INCLUDE**: Spec name, date created, current status
- **TIMELINE**: Add to project timeline
- **CONTEXT**: Update current development focus

#### Checklist Update

- **ACTION**: Update checklist.md (project root) with new spec
- **ADD**: Spec to active specs count
- **UPDATE**: Development status and next actions

#### AI Logging Integration

- **ACTION**: Log all spec creation activities to [PROJECT_NAME]-spec/ai-log.md (project root)
- **INCLUDE**: Spec generation, task breakdown, file creation
- **TRACK**: Spec creation session start and completion
- **RECORD**: Spec decisions and implementation approach

#### AI Rules Compliance

- **ACTION**: Follow @.spec/instructions/ai-rules.md for all operations
- **PERMISSIONS**: Respect file system permissions and user interaction protocols
- **ERROR_HANDLING**: Implement proper error handling and recovery
- **TRANSPARENCY**: Maintain clear audit trail of all actions

#### Readiness Summary

##### Present to User

- Spec name and description
- First task summary from tasks.md
- Estimated complexity/scope
- Key deliverables for task 1

#### Execution Prompt

```markdown
The spec planning is complete. The first task is:

**Task 1:** [FIRST_TASK_TITLE]
[BRIEF_DESCRIPTION_OF_TASK_1_AND_SUBTASKS]

**Next Steps:**
1. **Proceed with Task 1** - Type 'yes' to start implementing Task 1
2. **Create another spec** - Type 'new spec' to create an additional feature specification
3. **Review/modify** - Let me know if you'd like to review or modify the current spec first

What would you like to do next?
```

#### Execution Flow

If user confirms "yes":

- Reference: @.spec/instructions/execute-tasks.md
- Focus: Only Task 1 and its subtasks
- Constraint: Do not proceed to additional tasks without explicit user request

Else if user types "new spec":

- Return to Step 1: Spec Initiation
- Allow creation of additional spec
- Maintain context from previous spec creation

Else:

- Wait: For user clarification or modifications

#### Instructions for Execution Readiness Step

- **ACTION**: Summarize first task and request user confirmation
- **REFERENCE**: Use execute-tasks.md for implementation
- **SCOPE**: Limit to Task 1 only unless user specifies otherwise

## Execution Standards

### Follow

- @.spec/product/code-style.md
- @.spec/product/dev-best-practices.md
- @.spec/product/tech-stack.md

### Maintain

- Consistency with product mission
- Alignment with roadmap
- Technical coherence

### Create

- Comprehensive documentation (following `@.spec/instructions/markdown-rules.md`)
- Clear implementation path
- Testable outcomes

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Accurate date determined via file system
    [ ] Spec folder created with correct date prefix
    [ ] spec.md contains all required sections
    [ ] All applicable sub-specs created
    [ ] User approved documentation
    [ ] tasks.md created with TDD approach
    [ ] Cross-references added to spec.md
    [ ] Strategic decisions evaluated
    [ ] CRITICAL: Spec creation completed without code implementation
    [ ] CRITICAL: No project-centric code written during spec creation
    [ ] CRITICAL: Spec completion enforcement verified
```

***CRITICAL ENFORCEMENT: ALL SPEC-RELATED TASKS MUST BE COMPLETED AND VERIFIED BEFORE ANY PROJECT-CENTRIC CODE IS WRITTEN***
