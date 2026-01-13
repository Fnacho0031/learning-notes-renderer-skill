# Learning Notes Renderer / 学习笔记渲染器

[English](#english) | [中文](#中文)

---

## 中文

### 概述

这是一个专业的Markdown渲染工具，可以将笔记转换为高质量的HTML、PDF和Word文档，支持GitHub风格的样式和图表渲染。

### 功能特性

- 🎨 **GitHub风格样式** - 与GitHub Markdown渲染保持一致的视觉效果
- 📊 **图表支持** - 内置Mermaid图表渲染支持
- 📄 **多格式输出** - 支持HTML、PDF、DOCX等多种格式
- 🚀 **一键渲染** - 简单的命令行操作，自动化渲染流程
- 📱 **响应式设计** - 生成的HTML支持移动设备浏览
- 🔧 **批量处理** - 支持批量转换多个Markdown文件

### 安装要求

- **pandoc** (支持Lua过滤器) - 核心转换引擎
- **Google Chrome** - PDF导出和图表渲染必需
- **python3** - CSS内联和后处理
- **Bash兼容的shell** - 脚本执行环境

### 快速开始

1. 克隆此仓库：
```bash
git clone https://github.com/Fnacho0031/learning-notes-renderer-skill.git
cd learning-notes-renderer-skill
```

2. 设置环境变量：
```bash
export PUPPETEER_EXECUTABLE_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"  # macOS
# 或
export PUPPETEER_EXECUTABLE_PATH=$(which google-chrome)  # Linux
```

3. 使用渲染脚本：
```bash
# 渲染为HTML
./scripts/render.sh your-notes.md

# 渲染为PDF
./scripts/render.sh your-notes.pdf

# 渲染为Word文档
./scripts/render.sh your-notes.docx
```

### 使用场景

- 将研究笔记或文档转换为专业格式
- 需要GitHub风格的Markdown文档样式
- 处理金融分析笔记、研究论文或学术内容
- 从个人知识库创建可分享的文档
- 需要在渲染文档中支持图表（Mermaid）
- 批量处理多个Markdown文件
- 发布研究笔记或教育材料

### 项目结构

```
learning-notes-renderer-skill/
├── SKILL.md                 # 技能定义文件
├── scripts/
│   ├── render.sh           # 主渲染脚本
│   └── output/             # 输出目录
├── assets/
│   ├── github-markdown.css # GitHub样式表
│   ├── before.html         # HTML头部模板
│   ├── after.html          # HTML尾部模板
│   ├── diagram.lua         # 图表渲染过滤器
│   └── reference.docx      # Word文档模板
└── README.md              # 本文件
```

### 支持的输出格式

| 格式 | 扩展名 | 用途 |
|------|--------|------|
| HTML | html, htm | 网页预览，交互式文档 |
| PDF | pdf | 打印友好的专业格式 |
| Word文档 | docx, doc | 可编辑的Word文档 |
| 其他格式 | - | 任何Pandoc支持的格式 |

### 常见问题

- **Chrome路径错误** - 运行前设置 PUPPETEER_EXECUTABLE_PATH 环境变量
- **相对路径问题** - 始终从包含render.sh的目录运行脚本
- **权限被拒绝** - 确保render.sh可执行 (chmod +x)
- **Pandoc过滤器错误** - 验证diagram.lua在assets/目录中可访问

### 贡献

欢迎提交Issue和Pull Request来改进这个项目！

---

## English

### Overview

A professional Markdown rendering tool that converts notes into high-quality HTML, PDF, and Word documents with GitHub-style theming and diagram support.

### Features

- 🎨 **GitHub-style Styling** - Consistent visual appearance with GitHub's Markdown rendering
- 📊 **Diagram Support** - Built-in Mermaid diagram rendering support
- 📄 **Multiple Format Outputs** - Support for HTML, PDF, DOCX, and more
- 🚀 **One-click Rendering** - Simple command-line operation with automated rendering pipeline
- 📱 **Responsive Design** - Generated HTML supports mobile device viewing
- 🔧 **Batch Processing** - Support for batch converting multiple Markdown files

### Requirements

- **pandoc** (with Lua filter support) - Core conversion engine
- **Google Chrome** - Required for PDF export and diagram rendering
- **python3** - CSS inlining and post-processing
- **Bash-compatible shell** - Script execution environment

### Quick Start

1. Clone this repository:
```bash
git clone https://github.com/Fnacho0031/learning-notes-renderer-skill.git
cd learning-notes-renderer-skill
```

2. Set up environment variables:
```bash
export PUPPETEER_EXECUTABLE_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"  # macOS
# or
export PUPPETEER_EXECUTABLE_PATH=$(which google-chrome)  # Linux
```

3. Use the rendering script:
```bash
# Render to HTML
./scripts/render.sh your-notes.md

# Render to PDF
./scripts/render.sh your-notes.pdf

# Render to Word document
./scripts/render.sh your-notes.docx
```

### Use Cases

- Converting research notes or documentation to professional formats
- Need GitHub-style styling for Markdown documents
- Working with financial analysis notes, research papers, or academic content
- Creating shareable documents from personal knowledge base
- Need diagram support (Mermaid) in rendered documents
- Batch processing multiple Markdown files
- Publishing research notes or educational materials

### Project Structure

```
learning-notes-renderer-skill/
├── SKILL.md                 # Skill definition file
├── scripts/
│   ├── render.sh           # Main rendering script
│   └── output/             # Output directory
├── assets/
│   ├── github-markdown.css # GitHub-style CSS
│   ├── before.html         # HTML header template
│   ├── after.html          # HTML footer template
│   ├── diagram.lua         # Diagram rendering filter
│   └── reference.docx      # Word document template
└── README.md              # This file
```

### Supported Output Formats

| Format | Extensions | Use Case |
|--------|------------|----------|
| HTML | html, htm | Web preview, interactive documents |
| PDF | pdf | Print-ready, professional format |
| Word | docx, doc | Editable Word document |
| Other formats | - | Any Pandoc-supported format |

### Common Issues

- **Missing Chrome path** - Set PUPPETEER_EXECUTABLE_PATH before running
- **Relative path issues** - Always run script from directory containing render.sh
- **Permission denied** - Ensure render.sh is executable (chmod +x)
- **Pandoc filter errors** - Verify diagram.lua is accessible in assets/

### Contributing

Issues and Pull Requests are welcome to improve this project!

---

## License

MIT License - see LICENSE file for details.

## Contact

Feel free to reach out with questions or suggestions!