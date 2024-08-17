# Pharo tree-sitter

This is a binding to tree-sitter from Pharo.
It allows one to perform analysis or highlight code using existing tree sitter parser made by the community

## Installation

```st
Metacello new
  baseline: 'TreeSitter';
  repository: 'github://badetitou/Pharo-Tree-Sitter';
  load.
```

## Quick Example

```st
parser := TSParser new.
pythonLanguage := TSLanguage python.
parser language: pythonLanguage.

string := 'print("Hello, I''m Python!") # comment'.

tree := TSLibrary uniqueInstance
	ts_parser: parser
	_parse_string: string
	ofLength: string size
	usingOldTree: ExternalAddress null.

tree rootNode
```