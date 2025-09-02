---
description: Code Style Generator Rules for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Code Style Generator

## Purpose

Generate project-specific code style guides through interactive Q&A or manual input. Creates language-specific style guides in `[PROJECT_NAME]-spec/code-style/` directory.

## Overview

This system should:

- Detect programming languages from tech stack
- Ask language-specific style questions
- Generate customized style guides
- Support both guided Q&A and manual input
- Create comprehensive style documentation

## Step 1: Language Detection

### Tech Stack Dependency Check

- **ACTION**: Verify `[PROJECT_NAME]-spec/product/tech-stack.md` (project root) exists
- **CONDITION**: If tech-stack.md doesn't exist, prompt user to create it first
- **REFERENCE**: Use `@.spec/standards/tech-stack.md` as template if needed

### Analyze Tech Stack

- **ACTION**: Read `[PROJECT_NAME]-spec/product/tech-stack.md` (project root)
- **EXTRACT**: All programming languages and frameworks
- **IDENTIFY**: Primary and secondary languages
- **LIST**: Languages that need style guides

### Language Categories

#### Web Technologies

- HTML, CSS, JavaScript, TypeScript
- React, Vue, Angular, Svelte
- PHP, Ruby, Python (web frameworks)

#### Backend Languages

- C#, Java, Python, Ruby, PHP
- Go, Rust, Node.js, .NET
- Database languages (SQL, NoSQL)

#### Mobile/Desktop

- Swift, Kotlin, C#, Java
- React Native, Flutter, Xamarin

## Step 2: Style Guide Generation Options

### Present Options to User

- **OPTION A**: Guided Q&A (10-15 minutes)
- **OPTION B**: Manual writing
- **OPTION C**: Use default templates only

### User Choice Handling

#### If Option A (Guided Q&A)

- Proceed to Step 3: Interactive Q&A

#### If Option B (Manual Writing)

- Proceed to Step 4: Manual Style Guide Creation

#### If Option C (Default Templates)

- Proceed to Step 5: Template Generation

## Step 3: Interactive Q&A System

### Question Flow Structure

***IMPORTANT ALWAYS ASK ONE BY ONE QUESTION SO USER CAN ANSWER***
***IMPORTANT ALWAYS ASK MULTIPLE CHOICE QUESTION AS MUCH AS POSSIBLE WITH "OTHERS" AS ONE OPTION AT LAST CHOICE***

For each language in detected languages:

- Ask language-specific questions
- Store answers in temporary structure
- Generate style guide from answers

End for

### Question Categories

#### Naming Conventions

- Variable naming style (camelCase, snake_case, PascalCase)
- Function naming preferences
- Class/interface naming rules
- Constant naming conventions

#### Code Formatting

- Indentation (spaces vs tabs, count)
- Line length limits
- Brace placement style
- Semicolon usage (if applicable)

#### Language-Specific Patterns

- Import/using statement organization
- Error handling patterns
- Documentation style
- Testing conventions

### Question Examples by Language

#### JavaScript/TypeScript Questions

```markdown
Q1: Variable declaration preference?
A) Use 'var' (legacy)
B) Use 'let' and 'const' (modern)
C) Use 'const' by default, 'let' when needed

Q2: Function declaration style?
A) Function declarations: function name() {}
B) Arrow functions: const name = () => {}
C) Mixed approach based on context

Q3: Import organization?
A) Alphabetical order
B) Grouped by type (external, internal, relative)
C) No specific order
```

#### C# Questions

```markdown
Q1: Variable declaration style?
A) Use 'var' when type is obvious
B) Always use explicit types
C) Use 'var' for LINQ and complex types only

Q2: Naming conventions?
A) PascalCase for public members, camelCase for private
B) All camelCase
C) All PascalCase

Q3: File organization?
A) One class per file
B) Multiple related classes per file
C) Namespace-based organization
```

#### Python Questions

```markdown
Q1: String formatting preference?
A) f-strings (Python 3.6+)
B) .format() method
C) % formatting (legacy)

Q2: Import organization?
A) Standard library, third-party, local
B) Alphabetical within groups
C) No specific order

Q3: Documentation style?
A) Docstrings (Google style)
B) Docstrings (NumPy style)
C) Inline comments only
```

#### Rust Questions

```markdown
Q1: Rust project detected. Use comprehensive Rust API Guidelines?
A) Yes, use the full Rust API Guidelines (RAG) from @.spec/standards/Rust API Guidelines.md
B) No, create custom Rust style guide
C) Use minimal Rust style with basic rules only
```

**Note**: For Rust projects, we strongly recommend Option A to use the comprehensive Rust Architecture Guidelines (RAG) which covers ownership, borrowing, error handling, async programming, unsafe code, and all Rust best practices.

### Question Flow Logic

For each question category:

- Display question with options A, B, C
- Wait for user response
- Store answer in language-specific config
- Ask follow-up questions if needed

End for

## Step 4: Manual Style Guide Creation

### Manual Input Process

- **PROMPT**: "Would you like to write your own style guide?"
- **PROVIDE**: Template structure for each language
- **ALLOW**: User to write custom style guides
- **SAVE**: User-written guides to appropriate files

### Template Structure

```markdown
# [Language] Style Guide

## Naming Conventions
[User writes naming rules]

## Code Formatting
[User writes formatting rules]

## Best Practices
[User writes best practices]

## Examples
[User provides code examples]
```

## Step 5: Style Guide Generation

### Create Directory Structure

- **ACTION**: Create `[PROJECT_NAME]-spec/code-style/` directory (project root)
- **CREATE**: Language-specific style guide files
- **INCLUDE**: Generated content from Q&A or manual input

### File Naming Convention

- `[language]-style.md` (e.g., `javascript-style.md`, `csharp-style.md`)
- `html-style.md` for HTML
- `css-style.md` for CSS
- `general-style.md` for cross-language rules

### Content Generation

For each language style guide:

- Include language-specific rules from Q&A
- Add common best practices
- Include code examples
- Reference external style guides

End for

## Step 6: Integration with Existing Standards

### Reference Global Standards

- **INCLUDE**: References to `@.spec/standards/best-practices.md`
- **INCLUDE**: References to `@.spec/standards/tech-stack.md`
- **INCLUDE**: References to `@.spec/standards/Rust API Guidelines.md` for Rust projects
- **LINK**: To language-specific external style guides
- **MERGE**: Project-specific rules with global standards

### Example Integration

```markdown
# JavaScript Style Guide

## Global Standards
This guide follows the global standards defined in `@.spec/standards/best-practices.md` and uses the tech stack defined in `@.spec/standards/tech-stack.md`.

## Project-Specific Rules
[Generated from Q&A or manual input]

## External References
- [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)
- [Google JavaScript Style Guide](https://google.github.io/styleguide/jsguide.html)
```

```markdown
# Rust Style Guide

## Global Standards
This guide follows the comprehensive Rust Architecture Guidelines (RAG) defined in `@.spec/standards/Rust API Guidelines.md`. All Rust code must adhere to the safety-first principles, performance by design, and ergonomic API design outlined in the RAG.

## Project-Specific Rules
[Generated from Q&A or manual input]

## External References
- [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/)
- [The Rust Book](https://doc.rust-lang.org/book/)
- [Rustonomicon](https://doc.rust-lang.org/nomicon/)
```

## Step 7: Style Guide Validation

### Validation Checks

For each generated style guide:

- Check for completeness
- Verify consistency across languages
- Ensure no conflicting rules
- Validate code examples

End for

### User Review

- **PRESENT**: Generated style guides to user
- **ALLOW**: User to modify or approve
- **SAVE**: Final approved versions

## Integration Points

### Global Standards Integration

- **ACTION**: Reference `@.spec/standards/best-practices.md` for core principles
- **ACTION**: Reference `@.spec/standards/tech-stack.md` for technology context
- **INCLUDE**: Global standards in generated style guides
- **MERGE**: Project-specific rules with global standards

### Memory Integration

- **ACTION**: Update `[PROJECT_NAME]-spec/project-memory.md` (project root)
- **INCLUDE**: Style guide generation session
- **TRACK**: Languages covered and user preferences

### AI Logging Integration

- **ACTION**: Log style guide generation to `[PROJECT_NAME]-spec/ai-log.md` (project root)
- **INCLUDE**: Q&A responses, generated content, user choices

### Configuration Integration

- **ACTION**: Update `[PROJECT_NAME]-spec/config.yml` (project root)
- **INCLUDE**: Style guide preferences and language settings

## Success Criteria

IF tech stack dependency is verified:
    [x] Tech stack dependency verified
ELSE:
    [ ] Tech stack dependency verified

IF language detection is completed:
    [x] Language detection completed
ELSE:
    [ ] Language detection completed

IF user choice is made (Q&A, manual, or templates):
    [x] User choice made (Q&A, manual, or templates)
ELSE:
    [ ] User choice made (Q&A, manual, or templates)

IF style guides are generated for all detected languages:
    [x] Style guides generated for all detected languages
ELSE:
    [ ] Style guides generated for all detected languages

IF files are created in `[PROJECT_NAME]-spec/code-style/` directory:
    [x] Files created in `[PROJECT_NAME]-spec/code-style/` directory
ELSE:
    [ ] Files created in `[PROJECT_NAME]-spec/code-style/` directory

IF user approves final style guides:
    [x] User approves final style guides
ELSE:
    [ ] User approves final style guides

IF integration with global standards is completed:
    [x] Integration with global standards completed
ELSE:
    [ ] Integration with global standards completed

IF references to `@.spec/standards/best-practices.md` are included:
    [x] References to `@.spec/standards/best-practices.md` included
ELSE:
    [ ] References to `@.spec/standards/best-practices.md` included

IF references to `@.spec/standards/tech-stack.md` are included:
    [x] References to `@.spec/standards/tech-stack.md` included
ELSE:
    [ ] References to `@.spec/standards/tech-stack.md` included

IF references to `@.spec/standards/Rust API Guidelines.md` are included for Rust projects:
    [x] References to `@.spec/standards/Rust API Guidelines.md` included for Rust projects
ELSE:
    [ ] References to `@.spec/standards/Rust API Guidelines.md` included for Rust projects

## Example Output

### Generated JavaScript Style Guide

```markdown
# JavaScript Style Guide

## Naming Conventions
- Variables: camelCase (user preference from Q&A)
- Functions: camelCase
- Classes: PascalCase
- Constants: UPPER_SNAKE_CASE

## Code Formatting
- Indentation: 2 spaces
- Line length: 80 characters
- Semicolons: Always use
- Quotes: Single quotes preferred

## Best Practices
- Use 'const' by default, 'let' when reassignment needed
- Prefer arrow functions for callbacks
- Use template literals for string interpolation
- Organize imports: external, internal, relative

## Examples
```javascript
// Good
const userProfile = {
  firstName: 'John',
  lastName: 'Doe'
};

const getUserFullName = (user) => {
  return `${user.firstName} ${user.lastName}`;
};

// Bad
var user_profile = {
  first_name: 'John',
  last_name: 'Doe'
};
```

## Error Handling

### Missing Tech Stack

- **ERROR**: No tech stack file found
- **ACTION**: Prompt user to create tech stack first using `@.spec/standards/tech-stack.md` as template
- **GUIDANCE**: Direct to tech stack creation process
- **DEPENDENCY**: Code style generation requires tech stack to be defined first

### Incomplete Q&A

- **ERROR**: User stops Q&A process early
- **ACTION**: Save partial answers
- **OPTION**: Allow completion later or use defaults

### Invalid User Input

- **ERROR**: Invalid answer to style questions
- **ACTION**: Clarify question and re-ask
- **GUIDANCE**: Provide examples of valid answers

## Style Guide File Generation Reference

### Required File Format

**IMPORTANT**: All generated style guide files MUST follow this exact format:

1. **YAML Frontmatter** (required for all files)
2. **Clear section headers** with proper markdown formatting
3. **Code examples** in appropriate language blocks
4. **Consistent structure** across all language guides

### File Creation Instructions

For each language style guide:

- Create file: `[PROJECT_NAME]-spec/code-style/[language]-style.md`
- Include YAML frontmatter with appropriate description
- Structure content with clear sections
- Include practical code examples
- Reference external style guides when applicable

### Reference Examples

#### CSS Style Guide Template

```markdown
---
description: CSS Style Rules for [PROJECT_NAME]
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# CSS Style Guide

We always use the latest version of TailwindCSS for all CSS.

## Multi-line CSS classes in markup

- We use a unique multi-line formatting style when writing Tailwind CSS classes in HTML markup and ERB tags, where the classes for each responsive size are written on their own dedicated line.
- The top-most line should be the smallest size (no responsive prefix). Each line below it should be the next responsive size up.
- Each line of CSS classes should be aligned vertically.
- focus and hover classes should be on their own additional dedicated lines.
- We implement one additional responsive breakpoint size called 'xs' which represents 400px.
- If there are any custom CSS classes being used, those should be included at the start of the first line.

**Example of multi-line Tailwind CSS classes:**

```html
<div class="custom-cta bg-gray-50 dark:bg-gray-900 p-4 rounded cursor-pointer w-full
            hover:bg-gray-100 dark:hover:bg-gray-800
            xs:p-6
            sm:p-8 sm:font-medium
            md:p-10 md:text-lg
            lg:p-12 lg:text-xl lg:font-semibold lg:2-3/5
            xl:p-14 xl:text-2xl
            2xl:p-16 2xl:text-3xl 2xl:font-bold 2xl:w-3/4">
  I'm a call-to-action!
</div>
```

#### HTML Style Guide Template

```markdown
---
description: HTML Style Rules for [PROJECT_NAME]
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# HTML Style Guide

## Structure Rules

- Use 2 spaces for indentation
- Place nested elements on new lines with proper indentation
- Content between tags should be on its own line when multi-line

## Attribute Formatting

- Place each HTML attribute on its own line
- Align attributes vertically
- Keep the closing `>` on the same line as the last attribute

## Example HTML Structure

```html
<div class="container">
  <header class="flex flex-col space-y-2
                 md:flex-row md:space-y-0 md:space-x-4">
    <h1 class="text-primary dark:text-primary-300">
      Page Title
    </h1>
    <nav class="flex flex-col space-y-2
                md:flex-row md:space-y-0 md:space-x-4">
      <a href="/"
         class="btn-ghost">
        Home
      </a>
      <a href="/about"
         class="btn-ghost">
        About
      </a>
    </nav>
  </header>
</div>
```

#### JavaScript Style Guide Template

```markdown
---
description: JavaScript Style Rules for [PROJECT_NAME]
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# JavaScript Style Guide

## Naming Conventions

- Variables: camelCase
- Functions: camelCase
- Classes: PascalCase
- Constants: UPPER_SNAKE_CASE

## Code Formatting

- Indentation: 2 spaces
- Line length: 80 characters
- Semicolons: Always use
- Quotes: Single quotes preferred

## Best Practices

- Use 'const' by default, 'let' when reassignment needed
- Prefer arrow functions for callbacks
- Use template literals for string interpolation
- Organize imports: external, internal, relative

## Examples

```javascript
// Good
const userProfile = {
  firstName: 'John',
  lastName: 'Doe'
};

const getUserFullName = (user) => {
  return `${user.firstName} ${user.lastName}`;
};

// Bad
var user_profile = {
  first_name: 'John',
  last_name: 'Doe'
};
```

### Language-Specific Template Variations

#### C# Style Guide Template

```markdown
---
description: C# Style Rules for [PROJECT_NAME]
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# C# Style Guide

## Naming Conventions

- Public members: PascalCase
- Private fields: camelCase with underscore prefix
- Constants: PascalCase
- Interfaces: IPascalCase

## Code Formatting

- Indentation: 4 spaces
- Braces: Allman style (new line)
- Line length: 120 characters
- Using statements: Grouped and sorted

## Best Practices

- Use 'var' when type is obvious
- Prefer expression-bodied members
- Use null-conditional operators
- Implement IDisposable pattern correctly

## Examples

```csharp
// Good
public class UserService
{
    private readonly IUserRepository _userRepository;
    
    public UserService(IUserRepository userRepository)
    {
        _userRepository = userRepository ?? throw new ArgumentNullException(nameof(userRepository));
    }
    
    public async Task<User> GetUserByIdAsync(int id) =>
        await _userRepository.GetByIdAsync(id);
}

// Bad
public class userservice
{
    private IUserRepository userRepository;
    
    public userservice(IUserRepository userRepository)
    {
        this.userRepository = userRepository;
    }
}
```

#### Python Style Guide Template

```markdown
---
description: Python Style Rules for [PROJECT_NAME]
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Python Style Guide

## Naming Conventions

- Variables and functions: snake_case
- Classes: PascalCase
- Constants: UPPER_SNAKE_CASE
- Protected members: _single_underscore

## Code Formatting

- Indentation: 4 spaces (no tabs)
- Line length: 88 characters (Black formatter)
- Import organization: Standard library, third-party, local
- Docstrings: Google style

## Best Practices

- Use f-strings for string formatting
- Prefer list comprehensions over map/filter
- Use type hints
- Follow PEP 8 guidelines

## Examples

```python
# Good
from typing import List, Optional
from dataclasses import dataclass

@dataclass
class User:
    id: int
    name: str
    email: Optional[str] = None

def get_user_by_id(user_id: int) -> Optional[User]:
    """Retrieve user by ID.
    
    Args:
        user_id: The user's unique identifier
        
    Returns:
        User object if found, None otherwise
    """
    return next((user for user in users if user.id == user_id), None)

# Bad
def getUserById(userId):
    for user in users:
        if user.id == userId:
            return user
    return None
```

#### Rust Style Guide Template

```markdown
---
description: Rust Style Rules for [PROJECT_NAME]
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Rust Style Guide

## Primary Reference

**This project follows the comprehensive Rust Architecture Guidelines (RAG) defined in `@.spec/standards/Rust API Guidelines.md`.**

All Rust code in this project must adhere to the complete set of rules and best practices outlined in the RAG, including:

- Ownership and borrowing fundamentals
- Memory safety and error handling
- Async programming patterns
- Type system and trait design
- Unsafe code guidelines
- Performance optimizations
- Testing strategies
- CI/CD requirements

## Project-Specific Additions

[Any project-specific Rust rules or exceptions to the RAG can be added here]

## Quick Reference

For immediate reference, the most critical RAG rules:

- ✅ Never use `.unwrap()` or `.expect()` in production code
- ✅ Use `Result<T, E>` for all recoverable errors
- ✅ Prefer borrowing over cloning
- ✅ Document all public APIs with `///` comments
- ✅ Use `cargo fmt` and `cargo clippy` in CI
- ✅ Minimize and document any `unsafe` code

## External References

- [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/)
- [The Rust Book](https://doc.rust-lang.org/book/)
- [Rustonomicon](https://doc.rust-lang.org/nomicon/)
```

### File Generation Checklist

For each generated style guide file:

  [ ] YAML frontmatter included with correct description
  [ ] Clear section headers with proper markdown formatting
  [ ] Language-specific code examples in appropriate blocks
  [ ] Best practices section with project-specific rules
  [ ] External style guide references (if applicable)
  [ ] Consistent formatting throughout the file
  [ ] File saved in correct location: `[PROJECT_NAME]-spec/code-style/[language]-style.md`

## Final Checklist

### Verify

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
    [ ] Tech stack dependency check implemented
    [ ] Language detection system functional
    [ ] Q&A system for style preferences working
    [ ] Manual style guide creation supported
    [ ] Template generation system complete
    [ ] Integration with global standards implemented
    [ ] Error handling procedures established
    [ ] File generation templates provided
    [ ] Success criteria clearly defined
    [ ] References to `@.spec/standards/best-practices.md` included
    [ ] References to `@.spec/standards/tech-stack.md` included
```
