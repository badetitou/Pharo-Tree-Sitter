Class {
	#name : 'TSNode',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_CONTEXT',
		'OFFSET_ID',
		'OFFSET_TREE'
	],
	#category : 'TreeSitter',
	#package : 'TreeSitter'
}

{ #category : 'field definition' }
TSNode class >> fieldsDesc [
	^ #(
	uint32 context;
  	void * id;
  	TSTree * tree;
	)
]

{ #category : 'api' }
TSNode >> childCount [

	^ TSLibrary uniqueInstance ts_node_child_count: self
]

{ #category : 'accessing - structure variables' }
TSNode >> context [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CONTEXT
]

{ #category : 'accessing - structure variables' }
TSNode >> context: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CONTEXT put: anObject
]

{ #category : 'accessing - structure variables' }
TSNode >> id [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ID) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
TSNode >> id: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ID put: anObject getHandle.
]

{ #category : 'api' }
TSNode >> isNamed [

	^ TSLibrary uniqueInstance ts_node_is_named: self
]

{ #category : 'api' }
TSNode >> symbol [

	^ TSLibrary uniqueInstance ts_node_symbol: self
]

{ #category : 'accessing - structure variables' }
TSNode >> tree [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TREE) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
TSNode >> tree: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TREE put: anObject getHandle.
]

{ #category : 'api' }
TSNode >> type [

	^ TSLibrary uniqueInstance ts_node_type: self
]
