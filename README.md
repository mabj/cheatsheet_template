# Cheatsheet Template

A modern, customizable LaTeX template for creating professional cheatsheets. Optimized for landscape A4 format with multi-column layout, perfect for quick reference guides, command summaries, and technical documentation.

## Features

- **Multi-column layout** - Default 3-column design for dense information
- **Modern aesthetics** - Clean design with customizable color scheme
- **Syntax highlighting** - Built-in code listing support via `listings` package
- **Flexible structure** - Sections and subsections for organized content
- **Custom commands** - Easy-to-use commands for consistent styling
- **Responsive fonts** - Roboto sans-serif font for excellent readability
- **Hyperlink support** - Clickable links and references

## Quick Start

### Basic Usage

```latex
\documentclass[9pt]{cheatsheet}

\cheatsheettitle{Your Cheatsheet Title}

\begin{document}

\begin{multicols*}{3}

\cheatsheetsection{First Section}

Your content here...

\cheatsheetsubsection{Subsection}

More detailed content...

\end{multicols*}

\end{document}
```

### Building

Compile with `pdflatex`:

```bash
pdflatex main.tex
```

Or use the provided Makefile when available:

```bash
make
```

## Available Commands

### Document Setup

#### `\cheatsheettitle{title}`
Sets the main title displayed in the header.

**Example:**
```latex
\cheatsheettitle{Git Command Reference}
```

---

### Structural Elements

#### `\cheatsheetsection{title}`
Creates a major section with bold title on primary colored background.

**Example:**
```latex
\cheatsheetsection{Basic Commands}
```

#### `\cheatsheetsubsection{title}`
Creates a subsection with lighter styling for hierarchical organization.

**Example:**
```latex
\cheatsheetsection{Git Basics}
\cheatsheetsubsection{Repository Setup}
```

---

### Footer

#### `\cheatsheetfooter{author}{url}`
Adds attribution footer with author name and URL.

**Example:**
```latex
\cheatsheetfooter{John Doe}{https://example.com}
```

---

### Content Formatting

The template supports standard LaTeX environments:

- **Lists:** `enumerate`, `itemize`, `description`
- **Code blocks:** `lstlisting` environment
- **Inline code:** `\texttt{code}`
- **Hyperlinks:** `\href{url}{text}` or `\url{url}`

## Customization

### Colors

The template defines three main colors that can be customized:

```latex
% Redefine colors after \documentclass
\definecolor{primary}{RGB}{54,57,63}      % Main accent color
\definecolor{background}{RGB}{250,252,253} % Code background
\definecolor{border}{RGB}{214,213,218}     % Borders and rules
```

**Legacy color names** for backward compatibility:
- `innoinnored` → `primary`
- `innoinnobggray` → `background`
- `innoinnofggray` → `border`

### Column Layout

Change the number of columns:

```latex
% 2 columns
\begin{multicols*}{2}
...
\end{multicols*}

% 4 columns
\begin{multicols*}{4}
...
\end{multicols*}
```

### Font Size

The template supports `extarticle` font size options:

```latex
\documentclass[8pt]{cheatsheet}  % Very compact
\documentclass[9pt]{cheatsheet}  % Default
\documentclass[10pt]{cheatsheet} % More readable
```

### Code Listings

Customize code appearance using `\lstset`:

```latex
\lstset{
  language=Python,           % Set language
  basicstyle=\footnotesize,  % Change font size
  numbers=left,              % Add line numbers
  numberstyle=\tiny,         % Number style
  keywordstyle=\color{blue}, % Keyword color
}
```

## Complete Example

```latex
\documentclass[9pt]{cheatsheet}

% Optional: Customize colors
\definecolor{primary}{RGB}{0,102,204}
\definecolor{background}{RGB}{245,245,245}
\definecolor{border}{RGB}{200,200,200}

\cheatsheettitle{Python Quick Reference}

\begin{document}

\begin{multicols*}{3}

\cheatsheetsection{Data Types}

\cheatsheetsubsection{Basic Types}

\begin{itemize}
  \item \texttt{int} - Integer numbers
  \item \texttt{float} - Floating-point numbers
  \item \texttt{str} - Text strings
  \item \texttt{bool} - Boolean values
\end{itemize}

\cheatsheetsubsection{Collections}

\begin{enumerate}
  \item Lists: \texttt{[1, 2, 3]}
  \item Tuples: \texttt{(1, 2, 3)}
  \item Dictionaries: \texttt{\{'key': 'value'\}}
\end{enumerate}

\cheatsheetsection{Control Flow}

\begin{lstlisting}
# If statement
if condition:
    do_something()
elif other_condition:
    do_other_thing()
else:
    default_action()
\end{lstlisting}

\cheatsheetsection{Functions}

Define a function:

\begin{lstlisting}
def greet(name):
    return f"Hello, {name}!"
\end{lstlisting}

\end{multicols*}

% Optional footer
\cheatsheetfooter{Your Name}{https://yourwebsite.com}

\end{document}
```

## Dependencies

The template requires the following LaTeX packages:

- `extarticle` - Base document class
- `geometry` - Page layout
- `fancyhdr` - Headers and footers
- `tikz` - Graphics (section boxes)
- `roboto` - Roboto font family
- `multicol` - Multi-column layout
- `listings` - Code highlighting
- `hyperref` - Hyperlinks
- `parskip` - Paragraph spacing

Most modern LaTeX distributions (TeX Live, MiKTeX) include these by default.

## Installation

### Using the Template

1. Download or clone this repository
2. Copy `cheatsheet.cls` to your project directory
3. Create your document using `\documentclass{cheatsheet}`
4. Compile with `pdflatex`

### System-wide Installation

To install system-wide (Linux/macOS):

```bash
# Find your local texmf directory
kpsewhich -var-value TEXMFHOME

# Copy class file
mkdir -p ~/texmf/tex/latex/cheatsheet
cp cheatsheet.cls ~/texmf/tex/latex/cheatsheet/

# Update TeX database
texhash ~/texmf
```

## Tips & Best Practices

1. **Keep it concise** - Cheatsheets work best with brief, scannable content
2. **Use hierarchical structure** - Organize with sections and subsections
3. **Leverage code blocks** - Use `lstlisting` for command syntax
4. **Consistent formatting** - Use inline `\texttt{}` for commands and keywords
5. **Test column balance** - Adjust content distribution across columns
6. **Consider font size** - 9pt is a good default, 8pt for very dense content

## Project Structure

```
cheatsheet_template/
├── cheatsheet.cls    - Template class file
├── main.tex          - Example document
├── Makefile          - Build automation
└── README.md         - This file
```

## Version History

- **v1.0** (2026-01-09) - Initial release
  - Removed deprecated `pslatex` package
  - Added `\cheatsheetsubsection` command
  - Abstracted color names (primary, background, border)
  - Improved documentation

## License

This template is provided as-is for personal and commercial use. Feel free to modify and distribute.

## Contributing

Suggestions and improvements are welcome! Consider contributing:
- Additional example cheatsheets
- New command definitions
- Color scheme presets
- Enhanced code highlighting configurations

## Author

Created with ❤️ for the LaTeX community

---

For questions, issues, or suggestions, please open an issue in the project repository.
