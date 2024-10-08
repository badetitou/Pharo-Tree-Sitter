Class {
	#name : 'TSNode',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_CONTEXT0',
		'OFFSET_CONTEXT1',
		'OFFSET_CONTEXT2',
		'OFFSET_CONTEXT3',
		'OFFSET_ID',
		'OFFSET_TREE'
	],
	#category : 'TreeSitter',
	#package : 'TreeSitter'
}

{ #category : 'field definition' }
TSNode class >> fieldsDesc [
	^ #(
	uint32 context0;
	uint32 context1;
	uint32 context2;
	uint32 context3;
  	void * id;
  	TSTree * tree;
	)
]

{ #category : 'api' }
TSNode >> childCount [

	^ TSLibrary uniqueInstance ts_node_child_count: self
]

{ #category : 'accessing - structure variables' }
TSNode >> context0 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CONTEXT0
]

{ #category : 'accessing - structure variables' }
TSNode >> context0: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CONTEXT0 put: anObject
]

{ #category : 'accessing - structure variables' }
TSNode >> context1 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CONTEXT1
]

{ #category : 'accessing - structure variables' }
TSNode >> context1: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CONTEXT1 put: anObject
]

{ #category : 'accessing - structure variables' }
TSNode >> context2 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CONTEXT2
]

{ #category : 'accessing - structure variables' }
TSNode >> context2: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CONTEXT2 put: anObject
]

{ #category : 'accessing - structure variables' }
TSNode >> context3 [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CONTEXT3
]

{ #category : 'accessing - structure variables' }
TSNode >> context3: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CONTEXT3 put: anObject
]

{ #category : 'api' }
TSNode >> cursor [

	^ TSLibrary uniqueInstance ts_tree_cursor_new: self
]

{ #category : 'api' }
TSNode >> endPoint [

	^ TSLibrary uniqueInstance ts_node_end_point: self
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
TSNode >> namedChildAt: childIndex [
	"starting at 0"

	^ TSLibrary uniqueInstance
		  ts_node: self
		  _named_child_count: childIndex - 1
]

{ #category : 'api' }
TSNode >> namedChildCount [

	^ TSLibrary uniqueInstance ts_node_named_child_count: self
]

{ #category : 'printing' }
TSNode >> printOn: aStream [

	super printOn: aStream.
	self isNamed ifTrue: [ aStream << ' (' << self type << ')' ]
]

{ #category : 'api' }
TSNode >> startPoint [

	^ TSLibrary uniqueInstance ts_node_start_point: self
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
