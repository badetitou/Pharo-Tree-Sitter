Class {
	#name : 'TSParser',
	#superclass : 'FFIOpaqueObject',
	#category : 'TreeSitter',
	#package : 'TreeSitter'
}

{ #category : 'instance creation' }
TSParser class >> new [

	^ TSLibrary uniqueInstance ts_parser_new
]

{ #category : 'instance creation' }
TSParser >> delete [
	^ TSLibrary uniqueInstance ts_parser_delete: self
]

{ #category : 'accessing' }
TSParser >> language [

	^ TSLibrary uniqueInstance ts_parser_language: self
]
