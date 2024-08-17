Class {
	#name : 'TSLibrary',
	#superclass : 'FFILibrary',
	#category : 'TreeSitter',
	#package : 'TreeSitter'
}

{ #category : 'language' }
TSLibrary >> ts_language_version: aTSLanguage [

	aTSLanguage isNull ifTrue: [ TSNullPointerException signal  ].
	^ self ffiCall:
		  'uint32 ts_language_version(TSLanguage * aTSLanguage)'
]

{ #category : 'parser' }
TSLibrary >> ts_parser_delete: aTSParser [

	^ self ffiCall:
		  'void ts_parser_delete (TSParser * aTSParser )'
]

{ #category : 'parser' }
TSLibrary >> ts_parser_language: aTSParser [

	^ self ffiCall:
		  'TSLanguage * ts_parser_language (TSParser * aTSParser )'
]

{ #category : 'parser' }
TSLibrary >> ts_parser_new [

	^ self ffiCall:
		  'TSParser * ts_parser_new ()'
]

{ #category : 'accessing - platform' }
TSLibrary >> unix64LibraryName [
	"Users should use unix32* or unix64*"

	^ FFIUnix64LibraryFinder findAnyLibrary: #( 'libtree-sitter.so' )
]
