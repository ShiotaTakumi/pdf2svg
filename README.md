# PDF to SVG Converter for Illustrator Editing

This project provides a simple tool to convert PDF files that contain text into vector images suitable for editing in Adobe Illustrator. The conversion process ensures that text elements are preserved accurately in the resulting SVG file.

> **Note:** This tool is intended for use on macOS or on Linux systems where Homebrew is available.

## Requirements

- **Poppler:** This tool uses the `pdftocairo` utility from Poppler to convert PDF files to SVG.

## Installation

Install Poppler using Homebrew:

```bash
brew install poppler
```

## Usage
Ensure you have an input.pdf file in the project directory. Then, simply run:

```bash
make
```

The default Makefile performs the following steps:
1.	Converts input.pdf to output.svg at 300 dpi using pdftocairo.
2.	Removes any generated .png files from the current directory.

Makefile Details

The provided Makefile includes the following targets:
- convert:
    
    Converts input.pdf to output.svg at 300 dpi using the command:
    ```
    pdftocairo -r 300 -svg input.pdf output.svg
    ```

- clean:

    Deletes only .png files in the current directory:
    ```
    find . -maxdepth 1 -type f -name "*.png" -exec rm {} \; > /dev/null 2>&1
    ```

The default target (all) runs both the convert and clean targets sequentially.
