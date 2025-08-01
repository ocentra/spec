---
description: Product Planning Rules for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Product Planning Rules

## Overview

Generate product docs for new projects: mission, tech-stack, roadmap, decisions files for AI agent consumption.

***CRITICAL ENFORCEMENT: NO PROJECT-CENTRIC CODE WRITING UNTIL ALL SPEC TASKS COMPLETE***

**IMPORTANT NOTE**: This command is for product planning and documentation ONLY. Before any code implementation can begin, ensure that ALL spec-related tasks are completed and verified:

- Project planning and mission definition (this step)
- Tech stack analysis and documentation  
- Product roadmap creation
- Feature specification development
- Task breakdown and prioritization

**ENFORCEMENT**: This rule applies to ALL project phases and cannot be bypassed. Do not proceed to code implementation until all specs are finalized.

## Process Flow

### Step 0: Architecture Understanding

#### Read Architecture Documentation

- **ACTION**: Read @.spec/ARCHITECTURE.md to understand the system design
- **PURPOSE**: Ensure AI understands static instruction patterns and file locations
- **CONTEXT**: This prevents confusion about file paths and design decisions

### Step 1: Gather User Input

#### Project Name Collection

- **ACTION**: Prompt user for project name with folder name as default suggestion
- **DEFAULT**: Use current folder name as project name suggestion
- **VALIDATION**: Apply project name formatting rules (kebab-case, max 50 chars)
- **EXAMPLES**:
  - Folder: "My Web App" → Suggestion: "my-web-app"
  - Folder: "project@123" → Suggestion: "project-123"
  - Folder: "very-long-folder-name-that-exceeds-limits" → Suggestion: "very-long-folder-name-that-exceeds-limits"
- **CONFIRMATION**: Ask user to confirm or modify the suggested name

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

#### Initial Vision Gathering

##### Primary Question

"Do you have an overall project guide, vision document, or base idea you'd like to share first?"

##### Memory Integration

- **If returning to project**: Check [PROJECT_NAME]-spec/project-memory.md (project root) for context
- **If new project**: Create initial memory entry
- **Always**: Update memory with current session activity

##### Acceptable Formats

- Existing .md or .txt files
- Plain text paste
- Brief description
- "No, let's start from scratch"

##### Vision Processing

IF vision document is provided:
    ✅ Extract key information from vision document
    → Pre-fill subsequent questions with extracted data
    → Reduce number of questions needed
ELSE:
    ❌ No vision document provided
    → Proceed with standard input gathering
    → Ask all required questions sequentially

#### Required Inputs

- Main idea: string
- Key features: array[string] (minimum: 3)
- Target users: array[string] (minimum: 1)
- Tech stack: object
- Deployment strategy: object (integrated from deployment-planning.md)

#### Validation

Blocking

#### Data Sources

##### Primary

User direct input (enhanced by vision document if provided)

##### Fallback Sequence

1. @.spec/standards/tech-stack.md
2. @~/.claude/CLAUDE.md
3. Cursor User Rules

#### Initial Prompt Template

```markdown
Do you have an overall project guide, vision document, or base idea you'd like to share first?

You can:
- Upload/paste existing .md or .txt files
- Share a brief description of your vision
- Say "No, let's start from scratch"

This will help me understand your project better and pre-fill some of the detailed questions that follow.
```

#### Error Template

```markdown
Please provide the following missing information:
1. Main idea for the product
2. List of key features (minimum 3)
3. Target users and use cases (minimum 1)
4. Tech stack preferences
5. Deployment strategy preferences
6. Has the new application been initialized yet and we're inside the project folder? (yes/no)
```

#### Instructions for User Input

- **ACTION**: First ask for overall vision/documentation, then collect required inputs
- **PROCESS**: Extract key information from vision document to pre-fill questions
- **VALIDATION**: Ensure all 4 required inputs provided before proceeding
- **FALLBACK**: Check configuration files for tech stack defaults
- **ERROR**: Use error_template if inputs missing

### Step 2: Create Project-Specific Folder Structure

#### Project Folder Creates

- Directory: [PROJECT_NAME]-spec/ (project root)
- Purpose: All project-specific files and documentation

#### Project Folder Instructions

- **ACTION**: Extract project name from user input or use current directory name
- **FORMAT**: [PROJECT_NAME]-spec/ (kebab-case if needed)
- **LOCATION**: Create in project root, not inside .spec/
- **STRUCTURE**: This folder will contain all project-specific files

### Step 3: Create Documentation Structure

#### Documentation Creates

- Directory: [PROJECT_NAME]-spec/product/ (project root)
- Files: 5

#### File Structure

```markdown
.spec/
└── product/
    ├── mission.md          # Product vision and purpose
    ├── mission-lite.md     # Condensed mission for AI context
    ├── tech-stack.md       # Technical architecture
    ├── roadmap.md          # Development phases
    └── decisions.md        # Decision log
```

#### Git Config

##### Commit Message

Initialize Spec product documentation

##### Tag

v0.1.0-planning

##### Gitignore Consideration

true

#### Instructions for Project Folder Creation

- **ACTION**: Create project-specific folder using mkdir -p [PROJECT_NAME]-spec/
- **VALIDATION**: Verify write permissions before creating
- **PROTECTION**: Confirm before overwriting existing files

#### Instructions for Documentation Structure

- **ACTION**: Create directory using mkdir -p [PROJECT_NAME]-spec/product/
- **VALIDATION**: Verify write permissions before creating
- **PROTECTION**: Confirm before overwriting existing files

### Step 3: Create mission.md

#### Mission Creates

File [PROJECT_NAME]-spec/product/mission.md (project root)

#### Mission File Template

##### Mission Header

```markdown
# Product Mission
```

##### Required Sections

- Pitch
- Users
- The Problem
- Differentiators
- Key Features

#### Mission Section Templates

##### Pitch Section

```markdown
## Pitch

[PRODUCT_NAME] is a [PRODUCT_TYPE] that helps [TARGET_USERS] [SOLVE_PROBLEM] by providing [KEY_VALUE_PROPOSITION].
```

##### Pitch Constraints

- Length: 1-2 sentences
- Style: Elevator pitch

##### Users Section

```markdown
## Users

### Primary Customers

- [CUSTOMER_SEGMENT_1]: [DESCRIPTION]
- [CUSTOMER_SEGMENT_2]: [DESCRIPTION]

### User Personas

**[USER_TYPE]** ([AGE_RANGE])
- **Role:** [JOB_TITLE]
- **Context:** [BUSINESS_CONTEXT]
- **Pain Points:** [PAIN_POINT_1], [PAIN_POINT_2]
- **Goals:** [GOAL_1], [GOAL_2]
```

##### Schema

- Name: string
- Age range: "XX-XX years old"
- Role: string
- Context: string
- Pain points: array[string]
- Goals: array[string]

##### Problem Section

```markdown
## The Problem

### [PROBLEM_TITLE]

[PROBLEM_DESCRIPTION]. [QUANTIFIABLE_IMPACT].

**Our Solution:** [SOLUTION_DESCRIPTION]
```

##### Problem Constraints

- Problems: 2-4
- Description: 1-3 sentences
- Impact: Include metrics
- Solution: 1 sentence

##### Differentiators Section

```markdown
## Differentiators

### [DIFFERENTIATOR_TITLE]

Unlike [COMPETITOR_OR_ALTERNATIVE], we provide [SPECIFIC_ADVANTAGE]. This results in [MEASURABLE_BENEFIT].
```

##### Differentiators Constraints

- Count: 2-3
- Focus: Competitive advantages
- Evidence: Required

##### Features Section

```markdown
## Key Features

### Core Features

- **[FEATURE_NAME]:** [USER_BENEFIT_DESCRIPTION]

### Collaboration Features

- **[FEATURE_NAME]:** [USER_BENEFIT_DESCRIPTION]
```

##### Features Constraints

- Total: 8-10 features
- Grouping: By category
- Description: User-benefit focused

#### Instructions for Mission Creation

- **ACTION**: Create mission.md using all section templates
- **FILL**: Use data from Step 1 user inputs
- **FORMAT**: Maintain exact template structure

### Step 4: Create tech-stack.md

#### Tech Stack Creates

File .spec/product/tech-stack.md

#### Tech Stack File Template

##### Tech Stack Header

```markdown
# Technical Stack
```

#### Required Items

- Application framework: string + version
- Database system: string
- JavaScript framework: string
- Import strategy: ["importmaps", "node"]
- CSS framework: string + version
- UI component library: string
- Fonts provider: string
- Icon library: string
- Application hosting: string
- Database hosting: string
- Asset hosting: string
- Deployment solution: string
- Code repository URL: string

#### Data Resolution

For missing tech stack items:

- Check user input first
- Then check @.spec/standards/tech-stack.md
- Then check @~/.claude/CLAUDE.md
- Then check Cursor User Rules

#### Missing Items Template

```markdown
Please provide the following technical stack details:
[NUMBERED_LIST_OF_MISSING_ITEMS]

You can respond with the technology choice or "n/a" for each item.
```

#### Instructions for Tech Stack

- **ACTION**: Document all tech stack choices
- **FORMAT**: One item per line, no extra formatting or characters
- **RESOLUTION**: Check user input first, then config files
- **REQUEST**: Ask for any missing items using template

### Step 5: Create mission-lite.md

#### Mission Lite Creates

File .spec/product/mission-lite.md

#### Mission Lite Purpose

Condensed mission for efficient AI context usage

#### Mission Lite File Template

##### Mission Lite Header

```markdown
# Product Mission (Lite)
```

#### Content Structure

##### Elevator Pitch

- Source: Step 3 mission.md pitch section
- Format: Single sentence

##### Value Summary

- Length: 1-3 sentences
- Includes: Value proposition, target users, key differentiator
- Excludes: Secondary users, secondary differentiators

#### Content Template

```markdown
[ELEVATOR_PITCH_FROM_MISSION_MD]

[1-3_SENTENCES_SUMMARIZING_VALUE_TARGET_USERS_AND_PRIMARY_DIFFERENTIATOR]
```

##### Example

TaskFlow is a project management tool that helps remote teams coordinate work efficiently by providing real-time collaboration and automated workflow tracking.

TaskFlow serves distributed software teams who need seamless task coordination across time zones. Unlike traditional project management tools, TaskFlow automatically syncs with development workflows and provides intelligent task prioritization based on team capacity and dependencies.

#### Instructions for Mission Lite

- **ACTION**: Create mission-lite.md from mission.md content
- **EXTRACT**: Core pitch and primary value elements
- **CONDENSE**: Focus on essential information only
- **OMIT**: Secondary users, features, and differentiators

### Step 6: Create roadmap.md

#### Roadmap Creates

File .spec/product/roadmap.md

#### Roadmap File Template

##### Roadmap Header

```markdown
# Product Roadmap
```

#### Phase Structure

##### Phase Count

1-3

##### Features Per Phase

3-7

##### Phase Template

```markdown
## Phase [NUMBER]: [NAME]

**Goal:** [PHASE_GOAL]
**Success Criteria:** [MEASURABLE_CRITERIA]

### Features

- [ ] [FEATURE] - [DESCRIPTION] `[EFFORT]`

### Dependencies

- [DEPENDENCY]
```

#### Phase Guidelines

- Phase 1: Core MVP functionality
- Phase 2: Key differentiators
- Phase 3: Scale and polish
- Phase 4: Advanced features
- Phase 5: Enterprise features

#### Effort Scale

- XS: 1 day
- S: 2-3 days
- M: 1 week
- L: 2 weeks
- XL: 3+ weeks

#### Instructions for Roadmap

- **ACTION**: Create 5 development phases
- **PRIORITIZE**: Based on dependencies and mission importance
- **ESTIMATE**: Use effort_scale for all features
- **VALIDATE**: Ensure logical progression between phases

### Step 7: Create decisions.md

#### Decisions Creates

File .spec/product/decisions.md

#### Override Priority

Highest

#### Project Memory Integration

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with initial project setup
- **INCLUDE**: Project initialization date, key decisions made
- **TIMELINE**: Add project start to timeline
- **CONTEXT**: Set initial project context and preferences

#### Checklist Creation

- **ACTION**: Create [PROJECT_NAME]-spec/checklist.md using @.spec/instructions/checklist-management.md template
- **MARK**: Setup items as complete as they're finished
- **UPDATE**: Progress summary and next actions
- **TIMESTAMP**: Set initial creation date
- **TEMPLATE**: Use the checklist template from checklist-management.md

#### AI Logging Integration

- **ACTION**: Log all planning activities to [PROJECT_NAME]-spec/ai-log.md (project root)
- **INCLUDE**: User input collection, file creation, decisions made
- **TRACK**: Planning session start and completion
- **RECORD**: Key decisions and their rationale

#### AI Rules Compliance

- **ACTION**: Follow @.spec/instructions/ai-rules.md for all operations
- **PERMISSIONS**: Respect file system permissions and user interaction protocols
- **ERROR_HANDLING**: Implement proper error handling and recovery
- **TRANSPARENCY**: Maintain clear audit trail of all actions

#### Decisions File Template

##### Decisions Header

```markdown
# Product Decisions Log

> Override Priority: Highest

##### Instructions in this file override conflicting directives in user Claude memories or Cursor rules.
```

#### Decision Schema

- Date: YYYY-MM-DD
- ID: DEC-XXX
- Status: ["proposed", "accepted", "rejected", "superseded"]
- Category: ["technical", "product", "business", "process"]
- Stakeholders: array[string]

#### Initial Decision Template

```markdown
## [CURRENT_DATE]: Initial Product Planning

**ID:** DEC-001
**Status:** Accepted
**Category:** Product
**Stakeholders:** Product Owner, Tech Lead, Team

### Decision

[SUMMARIZE: product mission, target market, key features]

### Context

[EXPLAIN: why this product, why now, market opportunity]

### Alternatives Considered

1. **[ALTERNATIVE]**
   - Pros: [LIST]
   - Cons: [LIST]

### Rationale

[EXPLAIN: key factors in decision]

### Consequences

##### Positive

- [EXPECTED_BENEFITS]

##### Negative

- [KNOWN_TRADEOFFS]
```

#### Instructions for Decisions

- **ACTION**: Create decisions.md with initial planning decision
- **DOCUMENT**: Key choices from user inputs
- **ESTABLISH**: Override authority for future conflicts

### Step 8: Create deployment-strategy.md

#### Deployment Strategy Creates

File [PROJECT_NAME]-spec/product/deployment-strategy.md

#### Deployment Strategy Integration

- **ACTION**: Follow comprehensive deployment planning rules from @.spec/instructions/deployment-planning.md
- **QUESTIONS**: Ask all deployment strategy questions based on project type
- **OUTPUT**: Create complete deployment-strategy.md file
- **VALIDATION**: Ensure deployment strategy aligns with project type and tech stack

#### Deployment Strategy Instructions

- **ACTION**: Use deployment-planning.md to gather deployment preferences
- **INTEGRATION**: Ensure deployment strategy supports chosen tech stack
- **DOCUMENTATION**: Create comprehensive deployment strategy document
- **DECISIONS**: Update decisions.md with deployment strategy choices

### Step 9: Create README.md

#### README Creates

File: README.md (project root)

#### README Purpose

User-facing project documentation for GitHub repository visitors

#### README File Template

##### README Header

```markdown
# [PROJECT_NAME]

[ELEVATOR_PITCH_FROM_MISSION_MD]
```

##### README Required Sections

- Project Overview
- Features
- Tech Stack
- Getting Started
- Development
- Contributing

#### README Section Templates

##### Project Overview Section

```markdown
## Project Overview

[PROJECT_DESCRIPTION_FROM_MISSION_MD]

### Key Features

- **[FEATURE_1]**: [DESCRIPTION]
- **[FEATURE_2]**: [DESCRIPTION]
- **[FEATURE_3]**: [DESCRIPTION]
```

##### Tech Stack Section

```markdown
## Tech Stack

- **Framework**: [FRAMEWORK] [VERSION]
- **Database**: [DATABASE]
- **Frontend**: [FRONTEND_FRAMEWORK]
- **Styling**: [CSS_FRAMEWORK] [VERSION]
- **Deployment**: [DEPLOYMENT_PLATFORM]
```

##### Getting Started Section

```markdown
## Getting Started

### Prerequisites

- [PREREQUISITE_1]
- [PREREQUISITE_2]

### Installation

1. Clone the repository
   ```bash
   git clone [REPOSITORY_URL]
   cd [PROJECT_NAME]
   ```

2.Install dependencies

   ```bash
   [INSTALL_COMMAND]
   ```

3.Set up environment

   ```bash
   [ENVIRONMENT_SETUP_COMMANDS]
   ```

4.Start development server

   ```bash
   [START_COMMAND]
   ```

##### Development Section

```markdown
## Development

### Project Structure

```markdown
[PROJECT_NAME]/
├── .spec/           # Project specifications and documentation
├── src/             # Source code
├── docs/            # Documentation
└── README.md        # This file
```

### Available Scripts

- `[SCRIPT_1]`: [DESCRIPTION]
- `[SCRIPT_2]`: [DESCRIPTION]
- `[SCRIPT_3]`: [DESCRIPTION]

#### Contributing Section

```markdown
## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
```

#### README Update Triggers

##### Major Changes Requiring README Updates

- **Product Pivot**: When project direction significantly changes
- **Tech Stack Change**: When major technologies are added/removed
- **Feature Addition**: When new major features are implemented
- **Setup Process Change**: When installation/setup process changes
- **Architecture Change**: When project structure significantly changes

##### Update Process

- **ACTION**: Update README.md when major changes occur
- **SOURCE**: Use updated mission.md and tech-stack.md content
- **VALIDATE**: Ensure README reflects current project state
- **COMMIT**: Include README updates in feature commits

#### Instructions for README Creation

- **ACTION**: Create README.md at project root using template
- **SOURCE**: Extract content from mission.md and tech-stack.md
- **FORMAT**: Use standard GitHub README conventions
- **VALIDATE**: Ensure all sections are complete and accurate
- **UPDATE**: Plan for future updates when major changes occur

## Execution Summary

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] All 6 files created in .spec/product/
    [ ] README.md created at project root
    [ ] User inputs incorporated throughout
    [ ] Missing tech stack items requested
    [ ] Deployment strategy completed
    [ ] Initial decisions documented
    [ ] CRITICAL: Product planning completed without code implementation
    [ ] CRITICAL: No project-centric code written during planning
    [ ] CRITICAL: Spec completion enforcement verified
```

### Execution Order [IMPORTANT!]

1. Gather and validate all inputs
2. Create directory structure
3. Generate each file sequentially
4. Request any missing information
5. Create deployment-strategy.md using deployment-planning.md
6. Create README.md at project root
7. Validate complete documentation set

***CRITICAL ENFORCEMENT: ALL SPEC-RELATED TASKS MUST BE COMPLETED AND VERIFIED BEFORE ANY PROJECT-CENTRIC CODE IS WRITTEN***
