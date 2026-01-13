---
name: learning-notes-renderer
description: Use when converting Markdown files to professional HTML/PDF documents with GitHub-style styling, diagram support, and multiple output formats
---

# Learning Notes Renderer

## Overview
Professional Markdown rendering tool that converts notes into high-quality HTML, PDF, and Word documents with GitHub-style theming and diagram support.

## When to Use
- Converting research notes or documentation to professional formats
- Need GitHub-style styling for Markdown documents
- Working with financial analysis notes, research papers, or academic content
- Creating shareable documents from personal knowledge base
- Need diagram support (Mermaid) in rendered documents
- Batch processing multiple Markdown files
- Publishing research notes or educational materials

## Core Pattern
The render.sh script provides a complete pipeline:
1. **Input validation** - Handle file paths and output targets
2. **Asset preparation** - Copy CSS, templates, and filters to output directory
3. **Pandoc conversion** - Apply Lua filters, styling, and embed resources
4. **Post-processing** - Inline CSS and add responsive image styles
5. **Format conversion** - HTML → PDF via Chrome headless or Word via reference doc
6. **Automatic opening** - Launch generated file with system default app

## Quick Reference

| Command | Output | Use Case |
|----------|---------|-----------|
| `./render.sh notes.md` | `output/notes.html` | Quick HTML preview |
| `./render.sh notes.pdf` | `notes.pdf` | PDF for sharing/printing |
| `./render.sh notes.docx` | `notes.docx` | Word document for editing |

### Supported Output Formats
- **HTML/HTM** - Interactive, web-ready
- **PDF** - Print-ready, professional format
- **DOCX/DOC** - Editable Word document
- **Other formats** - Any Pandoc-supported format

## Dependencies
- **pandoc** (with Lua filter support) - Core conversion engine
- **Google Chrome** - Required for PDF export and diagram rendering
- **python3** - CSS inlining and post-processing
- **Bash-compatible shell** - Script execution

### Environment Setup
```bash
export PUPPETEER_EXECUTABLE_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"  # macOS
# or
export PUPPETEER_EXECUTABLE_PATH=$(which google-chrome)  # Linux
```

## Implementation
The script uses @scripts/render.sh which handles the complete rendering pipeline automatically.

### Script Location
Copy render.sh to your working directory and ensure it's executable:
```bash
cp @scripts/render.sh ./
chmod +x render.sh
```

## Asset Management
All rendering assets are stored in @assets/:
- `github-markdown.css` - GitHub-style theme
- `before.html` / `after.html` - HTML fragments
- `diagram.lua` - Pandoc Lua filter for diagrams
- `reference.docx` - Word document template

## Common Mistakes
- **Missing Chrome path** - Set PUPPETEER_EXECUTABLE_PATH before running
- **Relative path issues** - Always run script from directory containing render.sh
- **Permission denied** - Ensure render.sh is executable (chmod +x)
- **Pandoc filter errors** - Verify diagram.lua is accessible in @assets/

## Real-World Impact
Creates professional-quality documents from simple Markdown, enabling researchers, students, and professionals to produce publication-ready materials without complex formatting tools. Supports financial research, academic papers, and knowledge management workflows.