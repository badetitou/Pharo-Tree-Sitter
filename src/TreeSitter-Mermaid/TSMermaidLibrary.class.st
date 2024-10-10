Class {
	#name : 'TSMermaidLibrary',
	#superclass : 'FFILibrary',
	#category : 'TreeSitter-Mermaid',
	#package : 'TreeSitter-Mermaid'
}

{ #category : 'as yet unclassified' }
TSMermaidLibrary >> tree_sitter_mermaid [

	^ self ffiCall: 'TSLanguage * tree_sitter_mermaid ()'
]

{ #category : 'as yet unclassified' }
TSMermaidLibrary >> win32LibraryName [

	^ FFIWindowsLibraryFinder findAnyLibrary: #('mermaid.dll')
]
