---
description: Analyze Current Product 
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Analyze Current Product

## Overview

Install Spec into an existing codebase, analyze current product state and progress. Builds on plan-product.md

## Process Flow

### Step 0: Architecture Understanding

#### Read Architecture Documentation

- **ACTION**: Read @.spec/ARCHITECTURE.md to understand the system design
- **PURPOSE**: Ensure AI understands static instruction patterns and file locations
- **CONTEXT**: This prevents confusion about file paths and design decisions

### Step 1: Analyze Existing Codebase

#### Memory Check

- **First**: Check [PROJECT_NAME]-spec/project-memory.md (project root) for existing analysis
- **If returning**: Provide welcome back summary
- **Always**: Update memory with analysis activity

**Purpose**: Deep codebase analysis to understand current state before documentation

#### Analysis Areas

##### Project Structure

- Directory organization
- File naming patterns
- Module structure
- Build configuration

##### Technology Stack

- Frameworks in use
- Dependencies (package.json, Gemfile, requirements.txt, etc.)
- Database systems
- Infrastructure configuration

##### Implementation Progress

- Completed features
- Work in progress
- Authentication/authorization state
- API endpoints
- Database schema

##### Code Patterns

- Coding style in use
- Naming conventions
- File organization patterns
- Testing approach

#### Instructions for Analysis

- **ACTION**: Thoroughly analyze the existing codebase
- **DOCUMENT**: Current technologies, features, and patterns
- **IDENTIFY**: Architectural decisions already made
- **NOTE**: Development progress and completed work

### Step 2: Gather Product Context

**Purpose**: Supplements codebase analysis and gathers business context and future plans

#### Context Questions

Based on my analysis of your codebase, I can see you're building [OBSERVED_PRODUCT_TYPE].

To properly set up Spec, I need to understand:

1. **Product Vision**: What problem does this solve? Who are the target users?

2. **Current State**: Are there features I should know about that aren't obvious from the code?

3. **Roadmap**: What features are planned next? Any major refactoring planned?

4. **Decisions**: Are there important technical or product decisions I should document?

5. **Team Preferences**: Any coding standards or practices the team follows that I should capture?

#### Instructions for Context Gathering

- **ACTION**: Ask user for product context
- **COMBINE**: Merge user input with codebase analysis
- **PREPARE**: Information for plan-product.md execution

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

### Step 3: Execute Plan-Product with Context

#### Analysis Memory Integration

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with analysis results
- **INCLUDE**: Codebase analysis findings, product context gathered
- **TIMELINE**: Add analysis completion to timeline
- **CONTEXT**: Update with existing product state and decisions

**Purpose**: Uses @.spec/instructions/plan-product.md and modifies standard flow for existing products

#### Execution Parameters

- **Main Idea**: [DERIVED_FROM_ANALYSIS_AND_USER_INPUT]
- **Key Features**: [IDENTIFIED_IMPLEMENTED_AND_PLANNED_FEATURES]
- **Target Users**: [FROM_USER_CONTEXT]
- **Tech Stack**: [DETECTED_FROM_CODEBASE]

#### Execution Prompt

```text
@.spec/instructions/plan-product.md

I'm installing Spec into an existing product. Here's what I've gathered:

**Main Idea**: [SUMMARY_FROM_ANALYSIS_AND_CONTEXT]

**Key Features**:
- Already Implemented: [LIST_FROM_ANALYSIS]
- Planned: [LIST_FROM_USER]

**Target Users**: [FROM_USER_RESPONSE]

**Tech Stack**: [DETECTED_STACK_WITH_VERSIONS]
```

#### Instructions for Plan Execution

- **ACTION**: Execute plan-product.md with gathered information
- **PROVIDE**: All context as structured input
- **ALLOW**: plan-product.md to create [PROJECT_NAME]-spec/product/ structure (project root)

### Step 4: Customize Generated Documentation

**Purpose**: Refines generated documentation and ensures accuracy for existing product

#### Customization Tasks

##### Roadmap Adjustment

- Mark completed features as done
- Move implemented items to "Phase 0: Already Completed"
- Adjust future phases based on actual progress

##### Tech Stack Verification

- Verify detected versions are correct
- Add any missing infrastructure details
- Document actual deployment setup

##### Decisions Documentation

- Add historical decisions that shaped current architecture
- Document why certain technologies were chosen
- Capture any pivots or major changes

#### Roadmap Template

```markdown
## Phase 0: Already Completed

The following features have been implemented:

- [x] [FEATURE_1] - [DESCRIPTION_FROM_CODE]
- [x] [FEATURE_2] - [DESCRIPTION_FROM_CODE]
- [x] [FEATURE_3] - [DESCRIPTION_FROM_CODE]

## Phase 1: Current Development

- [ ] [IN_PROGRESS_FEATURE] - [DESCRIPTION]

[CONTINUE_WITH_STANDARD_PHASES]
```

#### Instructions for Customization

- **ACTION**: Update generated files to reflect reality
- **MODIFY**: Roadmap to show completed work
- **VERIFY**: Tech stack matches actual implementation
- **ADD**: Historical context to decisions.md

### Step 5: Final Verification and Summary

**Purpose**: Verifies installation completeness and provides next steps for user

#### Verification Checklist

- [ ] [PROJECT_NAME]-spec/product/ directory created (project root)
- [ ] All product documentation reflects actual codebase
- [ ] Roadmap shows completed and planned features accurately
- [ ] Tech stack matches installed dependencies

#### Summary Template

```markdown
## ✅ Spec Successfully Installed

I've analyzed your [PRODUCT_TYPE] codebase and set up Spec with documentation that reflects your actual implementation.

### What I Found

- **Tech Stack**: [SUMMARY_OF_DETECTED_STACK]
- **Completed Features**: [COUNT] features already implemented
- **Code Style**: [DETECTED_PATTERNS]
- **Current Phase**: [IDENTIFIED_DEVELOPMENT_STAGE]

### What Was Created

- ✓ Product documentation in `[PROJECT_NAME]-spec/product/` (project root)
- ✓ Roadmap with completed work in Phase 0
- ✓ Tech stack reflecting actual dependencies

### Next Steps

1. Review the generated documentation in `[PROJECT_NAME]-spec/product/` (project root)
2. Make any necessary adjustments to reflect your vision
3. See the Spec README for usage instructions: https://github.com/buildermethods/spec
4. Start using Spec for your next feature:
   ```bash
   @.spec/instructions/create-spec.md
   ```

Your codebase is now Spec-enabled! 🚀

### Next Steps

```markdown
**Analysis complete! Your project is now Spec-enabled. Next steps:**

1. **Create your first spec** - Type 'new spec' to create a feature specification
2. **Check project status** - Type 'status' to review the generated documentation
3. **Start development** - Type 'execute' to begin working on tasks
4. **Update documentation** - Type 'update' to sync any changes

What would you like to do next?
```

#### Continuation Flow

If user types "new spec":

- Reference: @.spec/instructions/create-spec.md
- Start spec creation process

If user types "status":

- Reference: @.spec/instructions/status.md
- Provide project status overview

If user types "execute":

- Reference: @.spec/instructions/execute-tasks.md
- Begin task execution

If user types "update":

- Reference: @.spec/instructions/update.md
- Sync recent changes with documentation

#### Instructions for Verification

- **ACTION**: Verify all files created correctly
- **SUMMARIZE**: What was found and created
- **PROVIDE**: Clear next steps for user

## Error Handling

### Error Scenarios

#### No Clear Structure

- **Condition**: Cannot determine project type or structure
- **Action**: Ask user for clarification about project

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

#### Conflicting Patterns

- **Condition**: Multiple coding styles detected
- **Action**: Ask user which pattern to document

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

#### Missing Dependencies

- **Condition**: Cannot determine full tech stack
- **Action**: List detected technologies and ask for missing pieces

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

## Execution Summary

### AI Logging Integration

- **ACTION**: Log all analysis activities to [PROJECT_NAME]-spec/ai-log.md (project root)
- **INCLUDE**: Product analysis, file creation, integration planning
- **TRACK**: Analysis session start and completion
- **RECORD**: Analysis decisions and integration approach

#### AI Rules Compliance

- **ACTION**: Follow @.spec/instructions/ai-rules.md for all operations
- **PERMISSIONS**: Respect file system permissions and user interaction protocols
- **ERROR_HANDLING**: Implement proper error handling and recovery
- **TRANSPARENCY**: Maintain clear audit trail of all actions

#### Configuration Integration

- **ACTION**: Load configuration from [PROJECT_NAME]-spec/config.yml (project root)
- **SETTINGS**: Apply user preferences and system settings
- **VALIDATION**: Ensure configuration is valid and complete
- **OVERRIDE**: Respect user overrides when specified

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Codebase analyzed thoroughly
    [ ] User context gathered
    [ ] plan-product.md executed with proper context
    [ ] Documentation customized for existing product
    [ ] Team can adopt Spec workflow
    [ ] AI logging integration complete
    [ ] AI rules compliance verified
    [ ] Configuration integration complete
```
