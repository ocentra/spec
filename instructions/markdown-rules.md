---
description: Markdown Writing Rules and Standards for Spec
globs:
alwaysApply: true
version: 1.0
encoding: UTF-8
---

# Markdown Writing Rules and Standards

## Overview

This document defines the markdown writing standards that AI agents must follow when creating or modifying any markdown files in the Spec system. These rules ensure consistent, readable, and properly formatted markdown content.

## Core Principles

- **Consistency**: Follow the same formatting patterns throughout
- **Readability**: Prioritize human readability over brevity
- **Standards Compliance**: Follow markdown linting standards
- **Accessibility**: Ensure content is accessible and well-structured

## Headings and Structure

### Rule: MD022 - Headings should be surrounded by blank lines

**Description**: Every heading must have blank lines before and after it.

#### ❌ Bad Example - Missing Blank Lines

```markdown
# Project Status
Check current project status and get a comprehensive overview of where we are
## Overview
This document provides...
```

#### ✅ Good Example - Proper Blank Lines

```markdown
# Project Status

Check current project status and get a comprehensive overview of where we are

## Overview

This document provides...
```

### Rule: MD041 - First line in a file should be a top-level heading

**Description**: Every markdown file should start with a single top-level heading.

#### ❌ Bad Example - No H1 at Start

```markdown
This is a project documentation file.

# Project Overview
```

#### ✅ Good Example - H1 at Start

```markdown
# Project Documentation

This is a project documentation file.

## Project Overview
```

### Rule: MD025 - Only one top-level heading per file

**Description**: Each markdown file should have exactly one top-level heading (H1).

#### ❌ Bad Example - Multiple H1 Headings

```markdown
# Project Status

Some content...

# Another Section
```

#### ✅ Good Example - Single H1 Heading

```markdown
# Project Status

Some content...

## Another Section
```

### Rule: MD024 - No duplicate headings

**Description**: Multiple headings should not have the same content.

#### ❌ Bad Example - Duplicate Headings

```markdown
## Features

- Feature 1
- Feature 2

## Features

- Feature 3
- Feature 4
```

#### ✅ Good Example - Unique Headings

```markdown
## Core Features

- Feature 1
- Feature 2

## Additional Features

- Feature 3
- Feature 4
```

## Lists and Formatting

### Rule: MD032 - Lists should be surrounded by blank lines

**Description**: Lists must have blank lines before and after them.

#### ❌ Bad Example - Lists Without Blank Lines

```markdown
Here are the features:
- Feature 1
- Feature 2
- Feature 3
And more content...
```

#### ✅ Good Example - Lists With Blank Lines

```markdown
Here are the features:

- Feature 1
- Feature 2
- Feature 3

And more content...
```

### Rule: MD007 - Unordered list indentation

**Description**: Unordered list items should be indented with 2 spaces.

#### ❌ Bad Example - Inconsistent Indentation

```markdown
- Item 1
  - Subitem 1
    - Sub-subitem 1
```

#### ✅ Good Example - Proper Indentation

```markdown
- Item 1
  - Subitem 1
    - Sub-subitem 1
```

### Rule: MD030 - List item marker style

**Description**: Use consistent list markers (dash `-` for unordered lists).

#### ❌ Bad Example - Mixed List Markers

```markdown
- Item 1
* Item 2
- Item 3
```

#### ✅ Good Example - Consistent List Markers

```markdown
- Item 1
- Item 2
- Item 3
```

## Links and References

### Rule: MD034 - No bare URLs

**Description**: URLs should be properly formatted as links with descriptive text.

#### ❌ Bad Example - Bare URL

```markdown
Check out https://github.com/buildermethods/spec for more information.
```

#### ✅ Good Example - Proper Link

```markdown
Check out [the Spec repository](https://github.com/buildermethods/spec) for more information.
```

### Rule: MD011 - No reversed links

**Description**: Links should have proper syntax with brackets and parentheses.

#### ❌ Bad Example - Incomplete Link

```markdown
[Link text](https://example.com
```

#### ✅ Good Example - Complete Link

```markdown
[Link text](https://example.com)
```

## Code and Technical Content

### Rule: MD014 - Dollar signs used before commands without showing output

**Description**: Use `$` prefix for commands that show output, no prefix for commands without output.

#### ❌ Bad Example - Dollar Sign Without Output

```markdown
Run this command:
$ npm install
```

#### ✅ Good Example - Proper Command Block

```markdown
Run this command:
    ```bash
    npm install
    ```
```

### Rule: MD040 - Fenced code blocks should have a language specified

**Description**: Code blocks should specify the language for proper syntax highlighting.

#### ❌ Bad Example - No Language Specified

```markdown
    ```
    function example() {
    return "hello world";
    }
    ```
```

#### ✅ Good Example - Language Specified

```markdown
    ```javascript
    function example() {
    return "hello world";
    }
    ```
```

### Rule: MD046 - Code block style

**Description**: Use fenced code blocks (```) instead of indented code blocks.

#### ❌ Bad Example - Indented Code Block

```markdown
    ```
    function example() {
      return "hello world";
    }
    ```
```

#### ✅ Good Example - Fenced Code Block

```markdown
    ```javascript
    function example() {
    return "hello world";
    }
    ```
```

## Emphasis and Styling

### Rule: MD037 - No space inside emphasis markers

**Description**: No spaces between emphasis markers and text.

#### ❌ Bad Example - Spaces in Emphasis

```markdown
This is ** bold ** text.
This is * italic * text.
```

#### ✅ Good Example - No Spaces in Emphasis

```markdown
This is **bold** text.
This is *italic* text.
```

### Rule: MD038 - No space inside code span elements

**Description**: No spaces between backticks and code content.

#### ❌ Bad Example - Spaces in Code Span

```markdown
Use the ` npm install ` command.
```

#### ✅ Good Example - No Spaces in Code Span

```markdown
Use the `npm install` command.
```

## Tables

### Rule: MD033 - No inline HTML

**Description**: Use markdown tables instead of HTML tables.

#### ❌ Bad Example - HTML Table

```markdown
<table>
  <tr>
    <td>Header 1</td>
    <td>Header 2</td>
  </tr>
</table>
```

#### ✅ Good Example - Markdown Table

```markdown
| Header 1 | Header 2 |
|----------|----------|
| Cell 1   | Cell 2   |
```

### Rule: MD012 - No multiple consecutive blank lines

**Description**: Use only one blank line between sections.

#### ❌ Bad Example - Multiple Blank Lines

```markdown
# Section 1

Content here.


# Section 2
```

#### ✅ Good Example - Single Blank Lines

```markdown
# Section 1

Content here.

# Section 2
```

## File Structure and Organization

### Rule: Consistent File Structure

**Description**: Follow a consistent structure for all markdown files.

#### ✅ Standard Structure

```markdown
# Document Title

Brief description of the document.

## Overview

Detailed overview section.

## Section 1

Content for section 1.

### Subsection 1.1

Content for subsection.

## Section 2

Content for section 2.

## Conclusion

Summary or conclusion.
```

### Rule: Front Matter Consistency

**Description**: Use consistent YAML front matter for instruction files.

#### ✅ Standard Front Matter

```markdown
---
description: Brief description of the file
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Document Title
```

## Special Cases and Exceptions

### Rule: Code Comments in Markdown

**Description**: When showing code comments in markdown, use appropriate formatting.

#### ✅ Good Example

```javascript
// This is a single-line comment
function example() {
  /* This is a multi-line comment
     that spans multiple lines */
  return "hello world";
}
```

### Rule: File Paths and References

**Description**: Use consistent formatting for file paths and references.

#### ✅ Good Example File Paths and References

```markdown
- Reference: `@.spec/instructions/filename.md`
- File path: `src/components/Component.tsx`
- Directory: `assets/images/`
```

## Checklist for AI Writers

Before finalizing any markdown file, verify:

IF file starts with a single top-level heading (H1):
    [✓] File structure is correct
ELSE:
    [x] Add H1 heading at file start

IF all headings have blank lines before and after:
    [✓] Heading formatting is correct
ELSE:
    [x] Add blank lines around headings

IF no duplicate headings exist:
    [✓] Heading uniqueness is maintained
ELSE:
    [x] Remove or rename duplicate headings

IF lists are surrounded by blank lines:
    [✓] List formatting is correct
ELSE:
    [x] Add blank lines around lists

IF code blocks specify language:
    [✓] Code blocks are properly formatted
ELSE:
    [x] Add language specification to code blocks

IF links have descriptive text:
    [✓] Link accessibility is maintained
ELSE:
    [x] Replace bare URLs with descriptive links

IF no bare URLs exist:
    [✓] All URLs are properly formatted
ELSE:
    [x] Convert bare URLs to proper links

IF consistent list markers are used:
    [✓] List consistency is maintained
ELSE:
    [x] Standardize list markers throughout

IF no multiple consecutive blank lines exist:
    [✓] Spacing is appropriate
ELSE:
    [x] Remove excessive blank lines

IF proper emphasis formatting is used (no spaces in markers):
    [✓] Emphasis formatting is correct
ELSE:
    [x] Fix emphasis markers

IF code spans are properly formatted:
    [✓] Inline code formatting is correct
ELSE:
    [x] Fix code span formatting

IF tables use markdown syntax:
    [✓] Table formatting is correct
ELSE:
    [x] Convert to markdown table syntax

IF file structure is consistent:
    [✓] Overall structure is maintained
ELSE:
    [x] Review and fix structure issues

IF front matter is properly formatted (if applicable):
    [✓] Front matter is correct
ELSE:
    [x] Fix front matter formatting

## Integration with Spec System

### When to Apply These Rules

- **Always**: When creating new markdown files
- **Always**: When modifying existing markdown files
- **Always**: When generating documentation
- **Always**: When creating AI assistant configuration files
- **Always**: When writing README files
- **Always**: When creating project documentation

### File Types That Must Follow These Rules

- Instruction files (`.spec/instructions/*.md`)
- Command files (`.spec/commands/*.md`)
- AI assistant configuration files (`.cursor/rules/*.mdc`, `.gemini/*.md`)
- Project documentation (`README.md`, `checklist.md`, etc.)
- Spec files (`[PROJECT_NAME]-spec/*.md`)
- Any other markdown files created by the AI

## Error Prevention

### Common Mistakes to Avoid

1. **Missing blank lines around headings**
2. **Inconsistent list markers**
3. **Bare URLs without link formatting**
4. **Code blocks without language specification**
5. **Multiple top-level headings**
6. **Improper emphasis formatting**
7. **Inconsistent indentation in lists**
8. **Missing blank lines around lists**

### Validation Steps

1. **Visual Check**: Review the rendered markdown
2. **Linting Check**: Run markdown linting tools if available
3. **Structure Check**: Verify heading hierarchy
4. **Link Check**: Ensure all links are properly formatted
5. **Code Check**: Verify code blocks have language specified

## Final Notes

- These rules ensure consistent, professional markdown output
- Following these rules reduces the need for post-creation fixes
- Consistent formatting improves readability and maintainability
- These standards align with common markdown linting tools
- Proper markdown structure improves accessibility and SEO

Remember: **Quality markdown is readable markdown**. Always prioritize clarity and consistency over brevity.

## Final Checklist

***IMPORTANT! IF success use [✓] ELSE use [x]***

```markdown
[ ] All markdown rules applied consistently
[ ] File structure follows proper heading hierarchy
[ ] Code blocks have appropriate language specification
[ ] Links are properly formatted with descriptive text
[ ] Lists are properly formatted with blank lines
[ ] No linting errors in generated markdown
[ ] Content is accessible and well-structured
[ ] Front matter is properly formatted (if applicable)
```
