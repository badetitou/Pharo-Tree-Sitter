Class {
	#name : 'TSPythonLibrary',
	#superclass : 'FFILibrary',
	#category : 'TreeSitter-Python',
	#package : 'TreeSitter-Python'
}

{ #category : 'accessing - platform' }
TSPythonLibrary >> tree_sitter_python [

	^ self ffiCall: 'TSLanguage * tree_sitter_python ()'
]

{ #category : 'accessing - platform' }
TSPythonLibrary >> unix64LibraryName [
	"Users should use unix32* or unix64*"

	^ FFIUnix64LibraryFinder findAnyLibrary: #( 'libtree-sitter-python.so' )
]

{ #category : 'accessing - platform' }
TSPythonLibrary >> win32LibraryName [

	^ FFIWindowsLibraryFinder findAnyLibrary: #('python.dll')
]
