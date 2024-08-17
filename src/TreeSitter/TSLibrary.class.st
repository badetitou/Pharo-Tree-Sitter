Class {
	#name : 'TSLibrary',
	#superclass : 'FFILibrary',
	#category : 'TreeSitter',
	#package : 'TreeSitter'
}

{ #category : 'accessing - platform' }
TSLibrary >> unix64LibraryName [
	"Users should use unix32* or unix64*"

	^ FFIUnix64LibraryFinder findAnyLibrary: #( 'libtree-sitter.so' )
]
