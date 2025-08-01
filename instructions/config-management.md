---
description: Configuration Management System for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Configuration Management System

## Overview

Manages configuration settings for the Spec system, allowing users to customize AI behavior, logging levels, execution modes, and other system parameters. This system provides flexibility while maintaining consistency across projects.

> **Architecture Note:** This is a static instruction file. The config file is created as `[PROJECT_NAME]-spec/config.yml` (project root) when this instruction is executed.

## Process Flow

### Step 1: Configuration File Structure

#### Configuration File Creation

- **ACTION**: Create `[PROJECT_NAME]-spec/config.yml` (project root) if it doesn't exist
- **LOCATION**: Always in project root
- **FORMAT**: YAML for readability and structure
- **BACKUP**: Maintain configuration file integrity

#### Configuration File Structure

- **REFERENCE**: See the actual configuration template at `@.spec/config.yml`
- **LOCATION**: Configuration files are created in `[PROJECT_NAME]-spec/config.yml` (project root)
- **FORMAT**: YAML for readability and structure
- **TEMPLATE**: Uses the structure defined in `@.spec/config.yml` as the base template

### Step 2: Configuration Management

#### Configuration Loading

##### Default Configuration

- **ACTION**: Load default configuration values
- **SOURCE**: Built-in defaults for all settings
- **FALLBACK**: Use defaults if config file missing
- **VALIDATION**: Validate configuration values

##### User Configuration

- **ACTION**: Load user configuration from `[PROJECT_NAME]-spec/config.yml` (project root)
- **MERGE**: Combine with default configuration
- **OVERRIDE**: User settings override defaults
- **VALIDATION**: Validate user configuration

##### Environment Overrides

- **ACTION**: Check for environment variable overrides
- **PREFIX**: Use `SPEC_` prefix for environment variables
- **PRIORITY**: Environment variables override file settings
- **EXAMPLES**: `SPEC_EXECUTION_MODE`, `SPEC_LOGGING_LEVEL`

#### Configuration Validation

##### Value Validation

- **ACTION**: Validate all configuration values
- **TYPES**: Ensure correct data types
- **RANGES**: Check value ranges where applicable
- **REQUIRED**: Verify required settings are present

##### Dependency Validation

- **ACTION**: Check configuration dependencies
- **CONFLICTS**: Identify conflicting settings
- **REQUIREMENTS**: Verify required combinations
- **WARNINGS**: Report potential issues

### Step 3: Configuration Integration

#### Command Integration

##### plan-product.md Integration

- **ACTION**: Load configuration before planning
- **SETTINGS**: Use execution mode and AI behavior settings
- **LOGGING**: Apply logging configuration
- **ERROR_HANDLING**: Use error handling settings

##### create-spec.md Integration

- **ACTION**: Load configuration before spec creation
- **SETTINGS**: Use AI behavior and interaction settings
- **TESTING**: Apply testing configuration
- **GIT**: Use git configuration settings

##### execute-tasks.md Integration

- **ACTION**: Load configuration before task execution
- **SETTINGS**: Use execution mode and error handling
- **TESTING**: Apply testing configuration
- **LOGGING**: Use logging settings

##### phase-orchestrator.md Integration

- **ACTION**: Load configuration before phase execution
- **SETTINGS**: Use all configuration settings
- **MODE**: Apply execution mode settings
- **BEHAVIOR**: Use AI behavior settings

#### System Integration

##### AI Rules Integration

- **ACTION**: Apply configuration to AI rules
- **PERMISSIONS**: Use file system settings
- **INTERACTION**: Apply interaction level settings
- **ERROR_HANDLING**: Use error handling settings

##### Logging Integration

- **ACTION**: Apply logging configuration
- **LEVEL**: Set logging level
- **FORMAT**: Use specified log format
- **RETENTION**: Apply retention settings

### Step 4: Configuration Updates

#### Dynamic Updates

##### Runtime Updates

- **ACTION**: Allow configuration updates during execution
- **VALIDATION**: Validate updates before applying
- **NOTIFICATION**: Notify user of configuration changes
- **PERSISTENCE**: Save updates to configuration file

##### User-Initiated Updates

- **ACTION**: Allow users to update configuration
- **INTERFACE**: Provide clear interface for updates
- **VALIDATION**: Validate user-provided values
- **BACKUP**: Create backup before making changes

#### Configuration Migration

##### Version Migration

- **ACTION**: Handle configuration file version updates
- **MIGRATION**: Migrate old configuration formats
- **BACKUP**: Create backup of old configuration
- **NOTIFICATION**: Notify user of migration

##### Default Updates

- **ACTION**: Update default configuration values
- **NOTIFICATION**: Notify user of default changes
- **OPTION**: Allow user to keep old defaults
- **DOCUMENTATION**: Document configuration changes

### Step 5: Configuration Documentation

#### Configuration Reference

##### Setting Descriptions

- **ACTION**: Document all configuration settings
- **DESCRIPTIONS**: Clear descriptions of each setting
- **EXAMPLES**: Provide usage examples
- **DEFAULTS**: List default values

##### Best Practices

- **ACTION**: Document configuration best practices
- **RECOMMENDATIONS**: Recommended settings for different scenarios
- **WARNINGS**: Potential issues and warnings
- **TROUBLESHOOTING**: Common configuration problems

#### User Guide

##### Configuration Guide

- **ACTION**: Create user guide for configuration
- **GETTING_STARTED**: Basic configuration setup
- **ADVANCED**: Advanced configuration options
- **EXAMPLES**: Real-world configuration examples

##### Troubleshooting Guide

- **ACTION**: Create troubleshooting guide
- **COMMON_ISSUES**: Common configuration problems
- **SOLUTIONS**: Step-by-step solutions
- **SUPPORT**: How to get help

## Configuration Options

### Configuration Options Reference

- **BASE TEMPLATE**: See `@.spec/config.yml` for the complete configuration structure
- **CUSTOMIZATION**: Modify settings in `[PROJECT_NAME]-spec/config.yml` (project root) as needed
- **EXAMPLES**: The base template includes examples for all major configuration sections

### Common Configuration Patterns

#### Execution Modes

- **Interactive**: Default mode with user confirmation
- **Autonomous**: Full automation with YOLO mode enabled
- **Dry Run**: Generate code without execution

#### Logging Levels

- **Minimal**: Essential logs only
- **Standard**: Balanced logging (default)
- **Verbose**: Detailed logging for debugging

#### AI Behavior

- **Conservative**: Maximum user interaction and safety
- **Balanced**: Standard interaction with some automation
- **Aggressive**: Minimal interaction, maximum automation

## Integration with Existing Commands

### Command Integration Points

#### plan-product.md

- **LOAD_CONFIG**: Load configuration at start
- **APPLY_SETTINGS**: Apply execution and AI behavior settings
- **USE_LOGGING**: Apply logging configuration
- **HANDLE_ERRORS**: Use error handling settings

#### create-spec.md

- **LOAD_CONFIG**: Load configuration at start
- **APPLY_SETTINGS**: Apply AI behavior and interaction settings
- **USE_TESTING**: Apply testing configuration
- **USE_GIT**: Apply git configuration

#### execute-tasks.md

- **LOAD_CONFIG**: Load configuration at start
- **APPLY_SETTINGS**: Apply execution and error handling settings
- **USE_TESTING**: Apply testing configuration
- **USE_LOGGING**: Apply logging settings

#### status.md

- **LOAD_CONFIG**: Load configuration at start
- **APPLY_SETTINGS**: Apply interaction level settings
- **USE_LOGGING**: Apply logging configuration
- **SHOW_CONFIG**: Display current configuration

## Error Handling

### Configuration Errors

#### Invalid Configuration

```markdown
**Error**: Invalid configuration value
**Solution**: Validate configuration values
**Action**: Check configuration file format and values
```

#### Missing Configuration

```markdown
**Error**: Required configuration missing
**Solution**: Use default values or prompt user
**Action**: Create configuration file with defaults
```

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

#### Configuration Conflicts

```markdown
**Error**: Conflicting configuration settings
**Solution**: Resolve conflicts based on priority
**Action**: Check configuration dependencies
```

### Recovery Procedures

#### Configuration Recovery

- **ACTION**: Detect configuration file corruption
- **BACKUP**: Restore from backup if available
- **DEFAULTS**: Use default configuration if necessary
- **RECREATE**: Create new configuration file

#### Setting Recovery

- **ACTION**: Detect invalid configuration values
- **VALIDATE**: Validate all configuration values
- **DEFAULTS**: Use default values for invalid settings
- **NOTIFY**: Notify user of configuration issues

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Configuration file structure defined
    [ ] Configuration management procedures implemented
    [ ] Command integration points completed
    [ ] Configuration validation working
    [ ] Configuration updates functional
    [ ] Documentation complete
    [ ] Error handling procedures tested
```
