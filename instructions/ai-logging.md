---
description: AI Logging System for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# AI Logging System

## Overview

Maintains comprehensive logs of all AI actions, decisions, and errors for auditability, debugging, and project transparency. This system provides a complete audit trail of AI orchestration activities.

> **Architecture Note:** This is a static instruction file. The AI log file is created in `[PROJECT_NAME]-spec/ai-log.md` (project root) when this instruction is executed.

## Process Flow

### Step 1: Log File Management

#### Log File Creation

- **ACTION**: Create `[PROJECT_NAME]-spec/ai-log.md` (project root) if it doesn't exist
- **LOCATION**: Always in project root
- **FORMAT**: Markdown with structured timestamps
- **BACKUP**: Maintain log file integrity

#### Log File Structure

```markdown
# AI Activity Log

## Session Information

- **Session Start**: [TIMESTAMP]
- **Session Type**: [NEW_SESSION/CONTINUING_SESSION]
- **Local Time**: [LOCAL_TIMEZONE_TIME]
- **Previous Session**: [LAST_SESSION_TIMESTAMP] (if continuing)
- **Project**: [PROJECT_NAME]
- **AI Agent**: [AGENT_IDENTIFIER]
- **Mode**: [INTERACTIVE/AUTONOMOUS/DRY_RUN]
- **Time-Based Sync Strategy**: [ENABLED/DISABLED]

## Activity Log

### [TIMESTAMP] - [ACTION_TYPE] - [DESCRIPTION]

**Context**: [RELEVANT_CONTEXT]
**Action**: [WHAT_WAS_DONE]
**Files Modified**: [LIST_OF_FILES]
**User Input**: [ANY_USER_INPUT]
**Result**: [SUCCESS/FAILURE/ERROR]
**Impact**: [PROJECT_IMPACT]

### [TIMESTAMP] - [ACTION_TYPE] - [DESCRIPTION]

...

## Error Log

### [TIMESTAMP] - [ERROR_TYPE] - [DESCRIPTION]

**Error**: [ERROR_MESSAGE]
**Context**: [WHERE_IT_OCCURRED]
**Impact**: [PROJECT_IMPACT]
**Resolution**: [HOW_IT_WAS_RESOLVED]
**Status**: [RESOLVED/PENDING/ESCALATED]

...

## Decision Log

### [TIMESTAMP] - [DECISION_TYPE] - [DESCRIPTION]

**Decision**: [WHAT_WAS_DECIDED]
**Context**: [WHY_IT_WAS_MADE]
**Alternatives**: [OTHER_OPTIONS_CONSIDERED]
**Impact**: [PROJECT_IMPACT]
**User Approval**: [YES/NO/NOT_REQUIRED]

...

## Session Summary

- **Session End**: [TIMESTAMP]
- **Session Duration**: [TOTAL_DURATION]
- **Total Actions**: [COUNT]
- **Errors Encountered**: [COUNT]
- **Decisions Made**: [COUNT]
- **Files Created**: [COUNT]
- **Files Modified**: [COUNT]
- **User Interactions**: [COUNT]
- **Sync Points Triggered**: [COUNT]
- **Git Commits Made**: [COUNT]
- **Next Recommended Sync**: [TIMESTAMP]
```

### Step 2: Log Entry Creation

#### Action Logging

##### Action Types

- **FILE_CREATE**: Creating new files
- **FILE_MODIFY**: Modifying existing files
- **FILE_DELETE**: Deleting files
- **COMMAND_EXECUTE**: Running commands
- **USER_INTERACTION**: User prompts and responses
- **PHASE_START**: Starting a new phase
- **PHASE_COMPLETE**: Completing a phase
- **TEST_RUN**: Running tests
- **ERROR_HANDLE**: Error handling actions
- **DECISION_MAKE**: Making decisions

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

##### Action Entry Format

```markdown
### [TIMESTAMP] - [ACTION_TYPE] - [DESCRIPTION]

**Context**: [RELEVANT_CONTEXT]
**Action**: [WHAT_WAS_DONE]
**Files Modified**: [LIST_OF_FILES]
**User Input**: [ANY_USER_INPUT]
**Result**: [SUCCESS/FAILURE/ERROR]
**Impact**: [PROJECT_IMPACT]
**Duration**: [HOW_LONG_IT_TOOK]
```

#### Error Logging

##### Error Types

- **FILE_SYSTEM_ERROR**: File permission, disk space, path issues
- **TOOL_EXECUTION_ERROR**: Command failures, version conflicts
- **USER_INPUT_ERROR**: Invalid input, missing required data
- **DEPENDENCY_ERROR**: Missing prerequisites, version mismatches
- **NETWORK_ERROR**: API failures, connectivity issues
- **VALIDATION_ERROR**: Code validation, test failures

##### Error Entry Format

```markdown
### [TIMESTAMP] - [ERROR_TYPE] - [DESCRIPTION]

**Error**: [ERROR_MESSAGE]
**Context**: [WHERE_IT_OCCURRED]
**Impact**: [PROJECT_IMPACT]
**Resolution**: [HOW_IT_WAS_RESOLVED]
**Status**: [RESOLVED/PENDING/ESCALATED]
**Retry Count**: [NUMBER_OF_RETRIES]
```

#### Decision Logging

##### Decision Types

- **ARCHITECTURE_DECISION**: System design choices
- **TECHNOLOGY_CHOICE**: Tool and framework selections
- **IMPLEMENTATION_APPROACH**: How to implement features
- **ERROR_HANDLING**: How to handle specific errors
- **USER_INTERACTION**: How to interact with user
- **PHASE_PRIORITY**: Phase execution order

##### Decision Entry Format

```markdown
### [TIMESTAMP] - [DECISION_TYPE] - [DESCRIPTION]

**Decision**: [WHAT_WAS_DECIDED]
**Context**: [WHY_IT_WAS_MADE]
**Alternatives**: [OTHER_OPTIONS_CONSIDERED]
**Impact**: [PROJECT_IMPACT]
**User Approval**: [YES/NO/NOT_REQUIRED]
**Rationale**: [REASONING_BEHIND_DECISION]
```

### Step 3: Log Integration

#### Command Integration

##### plan-product.md Integration

- **ACTION**: Log all planning activities
- **INCLUDE**: User input collection, documentation creation
- **TRACK**: File creation and modification
- **RECORD**: Decisions made during planning

##### create-spec.md Integration

- **ACTION**: Log all spec creation activities
- **INCLUDE**: Spec generation, task breakdown
- **TRACK**: File creation and modification
- **RECORD**: Decisions about spec structure

##### execute-tasks.md Integration

- **ACTION**: Log all task execution activities
- **INCLUDE**: Code generation, testing, git operations
- **TRACK**: File modifications and command execution
- **RECORD**: Task completion and error handling

##### phase-orchestrator.md Integration

- **ACTION**: Log all phase orchestration activities
- **INCLUDE**: Phase transitions, dependency checks
- **TRACK**: Phase completion and error handling
- **RECORD**: Phase decisions and user interactions

#### Memory Integration

##### Project Memory Sync

- **ACTION**: Sync log entries with project memory
- **INCLUDE**: Key decisions and their rationale
- **TRACK**: Important milestones and achievements
- **RECORD**: Lessons learned and insights

##### Checklist Integration

- **ACTION**: Link log entries to checklist items
- **INCLUDE**: Task completion timestamps
- **TRACK**: Error resolution and retry attempts
- **RECORD**: Blocking issues and resolutions

### Step 4: Log Analysis and Reporting

#### Log Analysis

##### Performance Metrics

- **ACTION**: Analyze log entries for performance insights
- **METRICS**: Action duration, error frequency, success rates
- **PATTERNS**: Common error types, decision patterns
- **OPTIMIZATION**: Identify areas for improvement

##### Error Analysis

- **ACTION**: Analyze error patterns and frequency
- **CATEGORIES**: Group errors by type and severity
- **TRENDS**: Identify recurring issues
- **SOLUTIONS**: Document effective resolutions

##### Decision Analysis

- **ACTION**: Analyze decision patterns and outcomes
- **EFFECTIVENESS**: Evaluate decision outcomes
- **PATTERNS**: Identify decision-making patterns
- **LEARNINGS**: Extract insights for future decisions

#### Log Reporting

##### Session Reports

- **ACTION**: Generate session summary reports
- **INCLUDE**: Action counts, error rates, completion status
- **FORMAT**: Structured, scannable format
- **DISTRIBUTION**: Share with relevant stakeholders

##### Error Reports

- **ACTION**: Generate error summary reports
- **INCLUDE**: Error types, frequencies, resolutions
- **PRIORITY**: Highlight critical issues
- **RECOMMENDATIONS**: Suggest improvements

##### Decision Reports

- **ACTION**: Generate decision summary reports
- **INCLUDE**: Decisions made, rationale, outcomes
- **IMPACT**: Assess project impact
- **LEARNINGS**: Document insights for future use

### Step 5: Log Maintenance

#### Log Rotation

##### Size Management

- **ACTION**: Monitor log file size
- **THRESHOLD**: Set maximum file size (e.g., 10MB)
- **ROTATION**: Archive old logs when threshold reached
- **RETENTION**: Keep archived logs for specified period

##### Archive Management

- **ACTION**: Create archived log files
- **NAMING**: Use timestamp-based naming (e.g., `ai-log-2024-01-15.md`)
- **LOCATION**: Store in `.spec/logs/` directory
- **INDEX**: Maintain index of archived logs

#### Log Cleanup

##### Data Retention

- **ACTION**: Define data retention policies
- **DURATION**: Keep logs for specified period (e.g., 1 year)
- **CRITERIA**: Define what to keep vs. delete
- **COMPLIANCE**: Ensure compliance with data protection requirements

##### Privacy Protection

- **ACTION**: Protect sensitive information in logs
- **REDACTION**: Remove or mask sensitive data
- **ENCRYPTION**: Encrypt logs containing sensitive information
- **ACCESS**: Control access to log files

## 🕐 Time-Based Workflow Management

### Session Detection and Time Tracking

#### Session Type Detection

- **NEW_SESSION**: First interaction of the day or after 8+ hours of inactivity
- **CONTINUING_SESSION**: Within same day or less than 8 hours from last session
- **DETECTION_METHOD**: Compare current timestamp with last session end time

#### Local Time Detection

- **SYSTEM_TIME**: Use local system time for timezone-aware decisions
- **TIMEZONE_AWARE**: Consider user's local timezone for sync decisions
- **DAY_BOUNDARIES**: Detect start of day (6 AM) and end of day (6 PM)

#### Smart Sync Point Detection

- **TASK_COMPLETE**: When a major task or subtask is finished
- **END_OF_DAY**: Approaching 6 PM local time
- **START_OF_DAY**: Beginning of new day (6 AM+)
- **MAJOR_MILESTONE**: Significant progress or phase completion
- **NATURAL_BREAK**: Logical stopping point in development

### Time-Based Git Workflow

#### Natural Sync Points

- **TASK_COMPLETION**: Commit when a task or major subtask is done
- **END_OF_DAY**: Pull and commit at end of work day (6 PM)
- **START_OF_DAY**: Pull from main at start of new day
- **MAJOR_MILESTONE**: Commit at significant progress points
- **USER_REQUEST**: When user explicitly requests sync

#### Session-Based Workflow

- **NEW_SESSION_START**: Always pull from main at session start
- **CONTINUING_SESSION**: Check if pull is needed based on time elapsed
- **SESSION_END**: Commit current work and push if significant changes

#### Time Detection Methods

- **SYSTEM_CLOCK**: Use local system time
- **SESSION_DURATION**: Track time since session start
- **LAST_ACTIVITY**: Time since last significant action
- **USER_PATTERNS**: Learn from user's typical work patterns

### Implementation Guidelines

#### Time Detection Commands

```bash
# Get local time
date
# Get timezone
date +%Z
# Get timestamp for comparison
date +%s
```

#### Session Continuity Check

- **CHECK**: Last session end time from ai-log.md
- **COMPARE**: Current time vs. last session time
- **DECIDE**: New session if >8 hours elapsed
- **LOG**: Session type in current log entry

#### Smart Commit Strategy

- **AUTO_COMMIT**: At task completion and end of day
- **MANUAL_COMMIT**: When user requests or at major milestones
- **PUSH_STRATEGY**: Push at end of day or when user requests
- **PULL_STRATEGY**: Pull at start of day and before major changes

## Configuration Options

### Logging Levels

#### Verbose Logging

- **ALL_ACTIONS**: Log every action taken
- **DETAILED_CONTEXT**: Include full context for each action
- **DEBUG_INFO**: Include debug information
- **PERFORMANCE**: Track timing and performance metrics

#### Standard Logging

- **IMPORTANT_ACTIONS**: Log significant actions only
- **ERRORS**: Log all errors and exceptions
- **DECISIONS**: Log important decisions
- **USER_INTERACTIONS**: Log user interactions

#### Minimal Logging

- **CRITICAL_ONLY**: Log only critical actions and errors
- **ERRORS_ONLY**: Log errors and exceptions only
- **SUMMARY_ONLY**: Log session summaries only

### Log Format Options

#### Markdown Format

- **READABLE**: Human-readable format
- **STRUCTURED**: Consistent structure and formatting
- **SEARCHABLE**: Easy to search and filter
- **VERSION_CONTROL**: Git-friendly format

#### JSON Format

- **MACHINE_READABLE**: Easy to parse programmatically
- **STRUCTURED**: Consistent data structure
- **ANALYZABLE**: Easy to analyze and process
- **COMPACT**: Efficient storage format

#### CSV Format

- **SPREADSHEET**: Easy to import into spreadsheets
- **ANALYSIS**: Good for data analysis
- **COMPACT**: Efficient storage format
- **SIMPLE**: Simple structure

## Integration with Existing Commands

### Command Integration Points

#### plan-product.md

- **LOG_START**: Log planning session start
- **LOG_INPUT**: Log user input collection
- **LOG_CREATION**: Log file creation activities
- **LOG_DECISIONS**: Log planning decisions
- **LOG_COMPLETION**: Log planning completion

#### create-spec.md

- **LOG_SPEC_START**: Log spec creation start
- **LOG_SPEC_GENERATION**: Log spec generation activities
- **LOG_TASK_BREAKDOWN**: Log task breakdown process
- **LOG_SPEC_COMPLETION**: Log spec creation completion

#### execute-tasks.md

- **LOG_TASK_START**: Log task execution start
- **LOG_CODE_GENERATION**: Log code generation activities
- **LOG_TESTING**: Log testing activities
- **LOG_GIT_OPERATIONS**: Log git operations
- **LOG_TASK_COMPLETION**: Log task completion

#### status.md

- **LOG_STATUS_CHECK**: Log status check activities
- **LOG_MEMORY_UPDATE**: Log memory update activities
- **LOG_CHECKLIST_UPDATE**: Log checklist update activities

## Error Handling

### Log File Errors

#### File System Errors

```markdown
**Error**: Cannot create log file
**Solution**: Check file permissions and disk space
**Action**: Create log file with appropriate permissions
```

#### Write Errors

```markdown
**Error**: Cannot write to log file
**Solution**: Check file permissions and disk space
**Action**: Retry write operation or create new log file
```

#### Corruption Errors

```markdown
**Error**: Log file corrupted
**Solution**: Restore from backup or create new log file
**Action**: Validate log file integrity and repair if possible
```

### Recovery Procedures

#### Log File Recovery

- **ACTION**: Detect log file corruption or damage
- **BACKUP**: Restore from backup if available
- **RECREATE**: Create new log file if necessary
- **RECONSTRUCT**: Reconstruct log entries from other sources

#### Data Loss Recovery

- **ACTION**: Detect data loss in log files
- **ASSESS**: Assess extent of data loss
- **RECOVER**: Attempt to recover lost data
- **DOCUMENT**: Document data loss and recovery efforts

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Log file creation and management working
    [ ] Log entry creation and formatting complete
    [ ] Command integration points implemented
    [ ] Log analysis and reporting functional
    [ ] Log maintenance procedures defined
    [ ] Configuration options documented
    [ ] Error handling procedures tested
```
