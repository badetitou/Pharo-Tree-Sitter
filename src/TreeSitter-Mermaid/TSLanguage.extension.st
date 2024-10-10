Extension { #name : 'TSLanguage' }

{ #category : '*TreeSitter-Mermaid' }
TSLanguage class >> mermaid [

	^ TSMermaidLibrary uniqueInstance tree_sitter_mermaid
]
