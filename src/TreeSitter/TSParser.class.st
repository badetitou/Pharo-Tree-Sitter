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

{ #category : 'accessing' }
TSParser >> language: aTSLanguage [

	^ TSLibrary uniqueInstance ts_parser: self _set_language: aTSLanguage
]

{ #category : 'accessing' }
TSParser >> parseString: aString [

	^ TSLibrary uniqueInstance
		  ts_parser: self
		  _parse_string: aString
		  ofLength: aString size
		  usingOldTree: ExternalAddress null
]
