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

{ #category : 'node' }
TSLibrary >> ts_node_child_count: aTSNode [

	^ self ffiCall: 'uint32_t ts_node_child_count(TSNode aTSNode)'
]

{ #category : 'node' }
TSLibrary >> ts_node_is_named: aTSNode [

	^ self ffiCall: 'bool ts_node_is_named(TSNode aTSNode)'
]

{ #category : 'node' }
TSLibrary >> ts_node_symbol: aTSNode [

	^ self ffiCall: 'int ts_node_symbol(TSNode aTSNode)'
]

{ #category : 'node' }
TSLibrary >> ts_node_type: aTSNode [

	^ self ffiCall: 'char * ts_node_type(TSNode aTSNode)'
]

{ #category : 'parser' }
TSLibrary >> ts_parser: aParser _parse_string: aString ofLength: length usingOldTree: anOldTree [
	
	"use `ExternalAddress null` if there is no old tree existing for now"
	
	^ self ffiCall:
		  'TSTree * ts_parser_parse_string ( TSParser * aParser, TSTree * anOldTree, char * aString, uint32 length )'
]

{ #category : 'parser' }
TSLibrary >> ts_parser: aTSParser _set_language: aTSLanguage [

	^ self ffiCall:
		  'bool ts_parser_set_language(TSParser * aTSParser, TSLanguage * aTSLanguage)'
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

{ #category : 'tree' }
TSLibrary >> ts_tree_root_node: aTSTree [

	^ self ffiCall: 'TSNode ts_tree_root_node(TSTree * aTSTree)'
]

{ #category : 'accessing - platform' }
TSLibrary >> unix64LibraryName [
	"Users should use unix32* or unix64*"

	^ FFIUnix64LibraryFinder findAnyLibrary: #( 'libtree-sitter.so' )
]
