---
description: Update Project Rules for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Update Project Instructions

**TOKEN OPTIMIZATION**: Before reading this file, check `.spec/FILE_INDEX.md` to understand the complete file structure and optimize your reading strategy.

## Purpose

Sync written code with project checklist and update project status. This command helps maintain consistency between the actual codebase and project documentation.

## Overview

The update command should:

- **FIRST**: Check if project structure exists ([PROJECT_NAME]-spec/ directory)
- **IF NO STRUCTURE**: Prompt user to start new project using @.spec/start.md
- **IF STRUCTURE EXISTS**: Analyze the current codebase against project documentation
- Update checklist and project memory to reflect actual state
- Identify any discrepancies or outdated information
- Provide recommendations for next steps

## Step 1: Project Structure Validation and User Prompt

### Project Detection

- **ACTION**: Check if [PROJECT_NAME]-spec/ directory exists in project root
- **IF NOT EXISTS**: Prompt user to start new project
- **MESSAGE**: "No project structure found. Would you like to start a new project?"
- **OPTIONS**:
  - "Yes, start new project" → Execute @.spec/start.md
  - "No, I'll do it later" → Exit update process

### User Interaction for No Project Structure

- **IF NO PROJECT STRUCTURE FOUND**:
  - **DISPLAY**: "No project structure found. Would you like to start a new project?"
  - **PROVIDE OPTIONS**:
    - "Yes, start new project" → Execute @.spec/start.md
    - "No, I'll do it later" → Exit update process
  - **WAIT FOR USER RESPONSE**: Before proceeding with any analysis
  - **IF USER SAYS YES**: Execute @.spec/start.md and exit update process
  - **IF USER SAYS NO**: Exit update process without further analysis

### Only Proceed If Project Structure Exists

- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 2 (Code Analysis)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 3 (Documentation Comparison)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 4 (Discrepancy Identification)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 5 (Status Update)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 6 (Recommendations)
- **ONLY IF [PROJECT_NAME]-spec/ EXISTS**: Continue with Step 7 (Report Generation)

### Spec System Check

- **ACTION**: Verify .spec/ directory exists with required files
- **IF NOT EXISTS**: Inform user Spec system is not installed
- **GUIDANCE**: Provide instructions for installing Spec

### AI Assistant Configuration Check

- **ACTION**: Check for AI assistant configurations (.cursor/, .claude/, .gemini/)
- **IF MISSING**: Note that AI assistant configs are not set up
- **OPTION**: Offer to run @.spec/start.md to configure AI assistants

## Step 2: Code Analysis (Only if project structure exists)

### File System Scan

- **ACTION**: Scan the project root directory for code files
- **PATTERNS**: Look for common development files

FOR EACH file in project root directory:
    IF file extension matches ['.js', '.ts', '.py', '.java', '.cs', '.go', '.rs', '.php']:
        ✅ Source code file detected
        → Add to source files list
    ELSE IF file name matches ['package.json', 'requirements.txt', 'pom.xml', 'build.gradle', 'Cargo.toml']:
        ✅ Configuration file detected
        → Add to config files list
    ELSE IF file name matches ['README.md', 'docs/'] OR directory name is 'docs':
        ✅ Documentation file/directory detected
        → Add to documentation list
    ELSE IF file name matches ['Makefile', 'Dockerfile', 'docker-compose.yml', 'build.sh']:
        ✅ Build file detected
        → Add to build files list
    ELSE:
        → Skip (not relevant for analysis)

### Project Structure Analysis

- **ACTION**: Compare actual file structure with documented structure
- **COMPARE**:
  - Actual directories vs. planned structure
  - Implemented features vs. roadmap
  - Current tech stack vs. documented stack

### Code Quality Assessment

- **ACTION**: Analyze code quality and completeness
- **METRICS**:
  - File count and sizes
  - Code complexity indicators
  - Test coverage (if tests exist)
  - Documentation completeness

## Step 3: Documentation Comparison (Only if project structure exists)

### Checklist Review

- **ACTION**: Read checklist.md (project root)
- **ANALYZE**:
  - Marked as complete vs. actually implemented
  - In-progress items vs. current state
  - Missing items that should be added

### Roadmap Analysis

- **ACTION**: Compare roadmap.md with actual implementation
- **COMPARE**:
  - Planned features vs. implemented features
  - Phase completion status
  - Timeline accuracy

### Tech Stack Verification

- **ACTION**: Verify tech-stack.md against actual dependencies
- **CHECK**:
  - Package.json, requirements.txt, or equivalent
  - Framework versions
  - Database technologies
  - External services

## Step 4: Discrepancy Identification (Only if project structure exists)

### Missing Implementations

- **ACTION**: Identify features marked complete but not implemented
- **EXAMPLES**:
  - "User authentication" marked complete but no auth code found
  - "API endpoints" listed but no routes implemented
  - "Database schema" documented but no migration files

### Unplanned Features

- **ACTION**: Identify implemented features not in documentation
- **EXAMPLES**:
  - New API endpoints not in roadmap
  - Additional UI components not planned
  - Configuration options not documented

### Outdated Documentation

- **ACTION**: Identify documentation that doesn't match reality
- **EXAMPLES**:
  - Tech stack versions outdated
  - API documentation doesn't match actual endpoints
  - Setup instructions don't match current structure

## Step 5: Status Update (Only if project structure exists)

### Checklist Updates

- **ACTION**: Update checklist.md (project root) with actual status
- **CHANGES**:
  - Mark items as complete/incomplete based on actual code
  - Add new items for unplanned features
  - Update progress percentages
  - Add timestamps for updates

### Project Memory Updates

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root)
- **INCLUDE**:
  - Current implementation status
  - Discrepancies found
  - Recommendations made
  - Update timestamp

### Roadmap Adjustments

- **ACTION**: Update roadmap.md if needed
- **ADJUSTMENTS**:
  - Add unplanned features
  - Update completion dates
  - Reorder priorities if needed
  - Mark phases as complete

## Step 6: Recommendations (Only if project structure exists)

### Immediate Actions

- **ACTION**: Provide specific recommendations
- **TYPES**:
  - Fix discrepancies between code and documentation
  - Complete partially implemented features
  - Update outdated documentation
  - Add missing tests or documentation

### Next Steps

- **ACTION**: Suggest next development priorities
- **BASED ON**:
  - Current implementation status
  - Project goals
  - Dependencies and blockers
  - User feedback or requirements

### Documentation Improvements

- **ACTION**: Recommend documentation updates
- **SUGGESTIONS**:
  - Update README.md with current setup instructions
  - Add API documentation for new endpoints
  - Update tech stack documentation
  - Improve code comments

## Step 7: Report Generation (Only if project structure exists)

### Summary Report

- **ACTION**: Generate comprehensive update report
- **INCLUDE**:
  - Current project status
  - Discrepancies found and fixed
  - Recommendations made
  - Next priority actions

### Progress Metrics

- **ACTION**: Calculate and display progress metrics
- **METRICS**:
  - Overall completion percentage
  - Features implemented vs. planned
  - Documentation accuracy
  - Code quality indicators

## Integration Points

### Memory Integration

- **ACTION**: Update [PROJECT_NAME]-spec/project-memory.md (project root) with update activity
- **INCLUDE**: Update session timestamp, discrepancies found, actions taken
- **TRACK**: Update session in project timeline

### Checklist Integration

- **ACTION**: Update checklist.md (project root) with update activity
- **TIMESTAMP**: Add update session to "Recent Activity Log"
- **STATUS**: Mark items as updated based on actual code

### AI Logging Integration

- **ACTION**: Log all update activities to [PROJECT_NAME]-spec/ai-log.md (project root)
- **INCLUDE**: Code analysis, discrepancy identification, documentation updates
- **TRACK**: Update session start and completion

### AI Rules Compliance

- **ACTION**: Follow @.spec/instructions/ai-rules.md guidelines
- **PERMISSIONS**: Check file system permissions before operations
- **USER INTERACTION**: Prompt for confirmation before major changes
- **ERROR HANDLING**: Handle errors gracefully with user guidance

### Configuration Integration

- **ACTION**: Load configuration from [PROJECT_NAME]-spec/config.yml (project root)
- **SETTINGS**: Apply user preferences for update behavior
- **VALIDATION**: Ensure configuration is valid and complete

## Success Criteria

    [ ] Project structure detection implemented
    [ ] User prompt for no project structure working
    [ ] Code analysis completed (if project structure exists)
    [ ] Discrepancies identified and documented (if project structure exists)
    [ ] Checklist updated to reflect actual state (if project structure exists)
    [ ] Project memory updated with current status (if project structure exists)
    [ ] Clear recommendations provided (if project structure exists)
    [ ] User understands current project state

## Error Handling

### No Project Structure

- **ERROR**: [PROJECT_NAME]-spec/ directory doesn't exist
- **ACTION**: Prompt user to start new project
- **MESSAGE**: "No project structure found. Would you like to start a new project?"
- **OPTIONS**:
  - "Yes, start new project" → Execute @.spec/start.md
  - "No, I'll do it later" → Exit update process
- **USER INTERACTION**: Wait for user response before proceeding
- **IF USER SAYS YES**: Execute @.spec/start.md and exit update process
- **IF USER SAYS NO**: Exit update process without further analysis

### Missing Spec System

- **ERROR**: .spec/ directory doesn't exist
- **ACTION**: Inform user Spec system is not installed
- **GUIDANCE**: Provide instructions for installing Spec

### File Access Issues

- **ERROR**: Cannot read project files
- **ACTION**: Check file permissions
- **GUIDANCE**: Provide instructions for fixing permissions

### Corrupted Documentation

- **ERROR**: Project documentation is corrupted
- **ACTION**: Attempt to recover or recreate files
- **BACKUP**: Create backups before modifications

### Inconsistent State

- **ERROR**: Multiple conflicting status indicators
- **ACTION**: Analyze and resolve conflicts
- **GUIDANCE**: Ask user for clarification if needed

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

## Example Output

### No Project Structure Found

    # Project Update Report

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
      2. **No, I'll do it later** - Exit update process

      Would you like to start a new project? (Yes/No)

### Existing Project Update

    # Project Update Report

    ## Analysis Complete
    IF [PROJECT_NAME]-spec/ directory exists:
      ✅ Project structure validated
    ELSE:
      ❌ Project structure missing

    IF code files found and analyzed:
      ✅ Code analysis: 47 files scanned
    ELSE:
      ❌ Code analysis: No files found

    IF documentation files exist:
      ✅ Documentation comparison: 12 items checked
    ELSE:
      ❌ Documentation comparison: No documentation found

    IF discrepancies found:
      ✅ Discrepancies: 3 found and resolved
    ELSE:
      ✅ Discrepancies: None found

    ## Current Status
    IF checklist.md exists:
      - **Overall Progress**: 68% complete (was 75% in checklist)
    ELSE:
      - **Overall Progress**: Unknown (no checklist found)

    IF roadmap.md exists:
      - **Features Implemented**: 17/25 planned features
    ELSE:
      - **Features Implemented**: Unknown (no roadmap found)

    IF documentation accuracy calculated:
      - **Documentation Accuracy**: 85% (3 items updated)
    ELSE:
      - **Documentation Accuracy**: Unknown

    ## Discrepancies Found & Fixed
    IF user authentication discrepancy found:
      1. **User Authentication**: Marked complete but only backend implemented
         - ✅ Updated checklist to "In Progress"
         - ✅ Added frontend auth as separate task

    IF API documentation discrepancy found:
      2. **API Documentation**: Missing for 3 new endpoints
         - ✅ Added to checklist as new task
         - ✅ Updated roadmap with documentation phase

    IF tech stack discrepancy found:
      3. **Tech Stack**: React version outdated in documentation
         - ✅ Updated tech-stack.md to reflect actual version

    ## Recommendations
    1. **Immediate**: Complete user authentication frontend
    2. **Next**: Add API documentation for new endpoints
    3. **Future**: Consider adding automated testing

    ## Next Steps
    - Continue with user authentication frontend
    - Update README.md with current setup instructions
    - Begin API documentation phase

    Ready to proceed with recommendations?

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

    [ ] Project structure detection implemented
    [ ] User prompt for no project structure working
    [ ] Code analysis procedures defined (if project structure exists)
    [ ] Discrepancy identification process established (if project structure exists)
    [ ] Documentation update procedures implemented (if project structure exists)
    [ ] Success criteria clearly defined
    [ ] Error handling procedures established
    [ ] Example output provided
    [ ] AI logging integration complete
    [ ] AI rules compliance verified
    [ ] Configuration integration complete
    [ ] User interaction protocols defined
