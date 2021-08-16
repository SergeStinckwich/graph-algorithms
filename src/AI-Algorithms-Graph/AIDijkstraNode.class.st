Class {
	#name : #AIDijkstraNode,
	#superclass : #AIGraphNode,
	#traits : 'MalTEdgeNode',
	#classTraits : 'MalTEdgeNode classTrait',
	#instVars : [
		'pathWeight',
		'previousEdges',
		'nextEdges',
		'previousNodes'
	],
	#category : #'AI-Algorithms-Graph-Nodes'
}

{ #category : #accessing }
AIDijkstraNode >> from: aNode edge: anEdge [

	previousNodes add: aNode.
	previousEdges add: anEdge
]

{ #category : #initialization }
AIDijkstraNode >> initialize [

	previousNodes := OrderedCollection new.
	previousEdges := OrderedCollection new.
	nextEdges := OrderedCollection new.
	pathWeight := Float infinity "initialization for Dijsktra"
]

{ #category : #accessing }
AIDijkstraNode >> nextEdges [

	^ nextEdges
]

{ #category : #accessing }
AIDijkstraNode >> pathWeight [

	^ pathWeight
]

{ #category : #accessing }
AIDijkstraNode >> pathWeight: anObject [

	pathWeight := anObject
]

{ #category : #accessing }
AIDijkstraNode >> previousEdges [

	^ previousEdges
]

{ #category : #accessing }
AIDijkstraNode >> previousNodes [

	^ previousNodes
]

{ #category : #printing }
AIDijkstraNode >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' - ';
		nextPutAll: pathWeight asString
]

{ #category : #accessing }
AIDijkstraNode >> to: aNode edge: anEdge [

	nextEdges add: anEdge
]