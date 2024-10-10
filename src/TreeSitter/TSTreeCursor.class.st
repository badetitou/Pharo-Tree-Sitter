Class {
	#name : 'TSTreeCursor',
	#superclass : 'FFIExternalObject',
	#category : 'TreeSitter',
	#package : 'TreeSitter'
}

{ #category : 'accessing' }
TSTreeCursor >> currentNode [

	^ TSLibrary uniqueInstance ts_tree_cursor_current_node: self
]

{ #category : 'accessing' }
TSTreeCursor >> fieldName [

	^ TSLibrary uniqueInstance ts_tree_cursor_current_field_name: self
]

{ #category : 'accessing' }
TSTreeCursor >> firstChild [

	^ TSLibrary uniqueInstance ts_tree_cursor_goto_first_child: self
]
