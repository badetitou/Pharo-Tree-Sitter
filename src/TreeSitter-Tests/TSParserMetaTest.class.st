"
I test create and remove
"
Class {
	#name : 'TSParserMetaTest',
	#superclass : 'TestCase',
	#category : 'TreeSitter-Tests',
	#package : 'TreeSitter-Tests'
}

{ #category : 'tests' }
TSParserMetaTest >> testCreateAndDelete [

	| parser |
	parser := TSParser new.
	self assert: (parser isKindOf: TSParser).
	parser delete
]
