??
?:?9
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint?
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
E
AssignSubVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	?
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
;
Minimum
x"T
y"T
z"T"
Ttype:

2	?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
;
	RsqrtGrad
y"T
dy"T
z"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
O
VariableShape	
input
output"out_type"
out_typetype0:
2	?"serve*1.12.02b'v1.12.0-rc2-3-ga6d8ffae09'ǿ
m
FeaturesPlaceholder*
dtype0*(
_output_shapes
:??????????*
shape:??????????
?
5embedding/embeddings/Initializer/random_uniform/shapeConst*
valueB"X     *
dtype0*
_output_shapes
:*'
_class
loc:@embedding/embeddings
?
3embedding/embeddings/Initializer/random_uniform/minConst*
valueB
 *??L?*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/embeddings
?
3embedding/embeddings/Initializer/random_uniform/maxConst*
valueB
 *??L=*
dtype0*
_output_shapes
: *'
_class
loc:@embedding/embeddings
?
=embedding/embeddings/Initializer/random_uniform/RandomUniformRandomUniform5embedding/embeddings/Initializer/random_uniform/shape*
seed2 *'
_class
loc:@embedding/embeddings*
T0* 
_output_shapes
:
??*
dtype0*

seed 
?
3embedding/embeddings/Initializer/random_uniform/subSub3embedding/embeddings/Initializer/random_uniform/max3embedding/embeddings/Initializer/random_uniform/min*
T0*
_output_shapes
: *'
_class
loc:@embedding/embeddings
?
3embedding/embeddings/Initializer/random_uniform/mulMul=embedding/embeddings/Initializer/random_uniform/RandomUniform3embedding/embeddings/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
??*'
_class
loc:@embedding/embeddings
?
/embedding/embeddings/Initializer/random_uniformAdd3embedding/embeddings/Initializer/random_uniform/mul3embedding/embeddings/Initializer/random_uniform/min*
T0* 
_output_shapes
:
??*'
_class
loc:@embedding/embeddings
?
embedding/embeddingsVarHandleOp*%
shared_nameembedding/embeddings*'
_class
loc:@embedding/embeddings*
_output_shapes
: *
dtype0*
	container *
shape:
??
y
5embedding/embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOpembedding/embeddings*
_output_shapes
: 
?
embedding/embeddings/AssignAssignVariableOpembedding/embeddings/embedding/embeddings/Initializer/random_uniform*
dtype0*'
_class
loc:@embedding/embeddings
?
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0* 
_output_shapes
:
??*'
_class
loc:@embedding/embeddings
?
.embedding/embedding_lookup/Read/ReadVariableOpReadVariableOpembedding/embeddings*
dtype0* 
_output_shapes
:
??
?
#embedding/embedding_lookup/IdentityIdentity.embedding/embedding_lookup/Read/ReadVariableOp*
T0* 
_output_shapes
:
??
?
embedding/embedding_lookupResourceGatherembedding/embeddingsFeatures*
validate_indices(*
dtype0*-
_output_shapes
:???????????*
Tindices0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
%embedding/embedding_lookup/Identity_1Identityembedding/embedding_lookup*
T0*-
_output_shapes
:???????????*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
%embedding/embedding_lookup/Identity_2Identity%embedding/embedding_lookup/Identity_1*
T0*-
_output_shapes
:???????????
?
.conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:* 
_class
loc:@conv1d/kernel
?
,conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *?5?*
dtype0*
_output_shapes
: * 
_class
loc:@conv1d/kernel
?
,conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *?5=*
dtype0*
_output_shapes
: * 
_class
loc:@conv1d/kernel
?
6conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv1d/kernel/Initializer/random_uniform/shape*
seed2 * 
_class
loc:@conv1d/kernel*
T0*$
_output_shapes
:??*
dtype0*

seed 
?
,conv1d/kernel/Initializer/random_uniform/subSub,conv1d/kernel/Initializer/random_uniform/max,conv1d/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: * 
_class
loc:@conv1d/kernel
?
,conv1d/kernel/Initializer/random_uniform/mulMul6conv1d/kernel/Initializer/random_uniform/RandomUniform,conv1d/kernel/Initializer/random_uniform/sub*
T0*$
_output_shapes
:??* 
_class
loc:@conv1d/kernel
?
(conv1d/kernel/Initializer/random_uniformAdd,conv1d/kernel/Initializer/random_uniform/mul,conv1d/kernel/Initializer/random_uniform/min*
T0*$
_output_shapes
:??* 
_class
loc:@conv1d/kernel
?
conv1d/kernelVarHandleOp*
shared_nameconv1d/kernel* 
_class
loc:@conv1d/kernel*
_output_shapes
: *
dtype0*
	container *
shape:??
k
.conv1d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/kernel*
_output_shapes
: 
?
conv1d/kernel/AssignAssignVariableOpconv1d/kernel(conv1d/kernel/Initializer/random_uniform*
dtype0* 
_class
loc:@conv1d/kernel
?
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*
dtype0*$
_output_shapes
:??* 
_class
loc:@conv1d/kernel
?
conv1d/bias/Initializer/zerosConst*
valueB?*    *
dtype0*
_output_shapes	
:?*
_class
loc:@conv1d/bias
?
conv1d/biasVarHandleOp*
shared_nameconv1d/bias*
_class
loc:@conv1d/bias*
_output_shapes
: *
dtype0*
	container *
shape:?
g
,conv1d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d/bias*
_output_shapes
: 

conv1d/bias/AssignAssignVariableOpconv1d/biasconv1d/bias/Initializer/zeros*
dtype0*
_class
loc:@conv1d/bias
?
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
dtype0*
_output_shapes	
:?*
_class
loc:@conv1d/bias
^
conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
^
conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv1d/conv1d/ExpandDims
ExpandDims%embedding/embedding_lookup/Identity_2conv1d/conv1d/ExpandDims/dim*
T0*

Tdim0*1
_output_shapes
:???????????
}
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv1d/kernel*
dtype0*$
_output_shapes
:??
`
conv1d/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
conv1d/conv1d/ExpandDims_1
ExpandDims)conv1d/conv1d/ExpandDims_1/ReadVariableOpconv1d/conv1d/ExpandDims_1/dim*
T0*

Tdim0*(
_output_shapes
:??
?
conv1d/conv1d/Conv2DConv2Dconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingVALID*1
_output_shapes
:???????????*
use_cudnn_on_gpu(
?
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d/Conv2D*
T0*
squeeze_dims
*-
_output_shapes
:???????????
f
conv1d/BiasAdd/ReadVariableOpReadVariableOpconv1d/bias*
dtype0*
_output_shapes	
:?
?
conv1d/BiasAddBiasAddconv1d/conv1d/Squeezeconv1d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*-
_output_shapes
:???????????
[
conv1d/ReluReluconv1d/BiasAdd*
T0*-
_output_shapes
:???????????
l
*global_max_pooling1d/Max/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
global_max_pooling1d/MaxMaxconv1d/Relu*global_max_pooling1d/Max/reduction_indices*
	keep_dims( *
T0*(
_output_shapes
:??????????*

Tidx0
?
0conv1d_1/kernel/Initializer/random_uniform/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:*"
_class
loc:@conv1d_1/kernel
?
.conv1d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *׳]?*
dtype0*
_output_shapes
: *"
_class
loc:@conv1d_1/kernel
?
.conv1d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳]=*
dtype0*
_output_shapes
: *"
_class
loc:@conv1d_1/kernel
?
8conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv1d_1/kernel/Initializer/random_uniform/shape*
seed2 *"
_class
loc:@conv1d_1/kernel*
T0*$
_output_shapes
:??*
dtype0*

seed 
?
.conv1d_1/kernel/Initializer/random_uniform/subSub.conv1d_1/kernel/Initializer/random_uniform/max.conv1d_1/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *"
_class
loc:@conv1d_1/kernel
?
.conv1d_1/kernel/Initializer/random_uniform/mulMul8conv1d_1/kernel/Initializer/random_uniform/RandomUniform.conv1d_1/kernel/Initializer/random_uniform/sub*
T0*$
_output_shapes
:??*"
_class
loc:@conv1d_1/kernel
?
*conv1d_1/kernel/Initializer/random_uniformAdd.conv1d_1/kernel/Initializer/random_uniform/mul.conv1d_1/kernel/Initializer/random_uniform/min*
T0*$
_output_shapes
:??*"
_class
loc:@conv1d_1/kernel
?
conv1d_1/kernelVarHandleOp* 
shared_nameconv1d_1/kernel*"
_class
loc:@conv1d_1/kernel*
_output_shapes
: *
dtype0*
	container *
shape:??
o
0conv1d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d_1/kernel*
_output_shapes
: 
?
conv1d_1/kernel/AssignAssignVariableOpconv1d_1/kernel*conv1d_1/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@conv1d_1/kernel
?
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*
dtype0*$
_output_shapes
:??*"
_class
loc:@conv1d_1/kernel
?
conv1d_1/bias/Initializer/zerosConst*
valueB?*    *
dtype0*
_output_shapes	
:?* 
_class
loc:@conv1d_1/bias
?
conv1d_1/biasVarHandleOp*
shared_nameconv1d_1/bias* 
_class
loc:@conv1d_1/bias*
_output_shapes
: *
dtype0*
	container *
shape:?
k
.conv1d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv1d_1/bias*
_output_shapes
: 
?
conv1d_1/bias/AssignAssignVariableOpconv1d_1/biasconv1d_1/bias/Initializer/zeros*
dtype0* 
_class
loc:@conv1d_1/bias
?
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
dtype0*
_output_shapes	
:?* 
_class
loc:@conv1d_1/bias
`
conv1d_1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
`
conv1d_1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
conv1d_1/conv1d/ExpandDims
ExpandDims%embedding/embedding_lookup/Identity_2conv1d_1/conv1d/ExpandDims/dim*
T0*

Tdim0*1
_output_shapes
:???????????
?
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpconv1d_1/kernel*
dtype0*$
_output_shapes
:??
b
 conv1d_1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
conv1d_1/conv1d/ExpandDims_1
ExpandDims+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp conv1d_1/conv1d/ExpandDims_1/dim*
T0*

Tdim0*(
_output_shapes
:??
?
conv1d_1/conv1d/Conv2DConv2Dconv1d_1/conv1d/ExpandDimsconv1d_1/conv1d/ExpandDims_1*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingVALID*1
_output_shapes
:???????????*
use_cudnn_on_gpu(
?
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d/Conv2D*
T0*
squeeze_dims
*-
_output_shapes
:???????????
j
conv1d_1/BiasAdd/ReadVariableOpReadVariableOpconv1d_1/bias*
dtype0*
_output_shapes	
:?
?
conv1d_1/BiasAddBiasAddconv1d_1/conv1d/Squeezeconv1d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*-
_output_shapes
:???????????
_
conv1d_1/ReluReluconv1d_1/BiasAdd*
T0*-
_output_shapes
:???????????
n
,global_max_pooling1d_1/Max/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
global_max_pooling1d_1/MaxMaxconv1d_1/Relu,global_max_pooling1d_1/Max/reduction_indices*
	keep_dims( *
T0*(
_output_shapes
:??????????*

Tidx0
Y
concatenate/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
?
concatenate/concatConcatV2global_max_pooling1d_1/Maxglobal_max_pooling1d/Maxconcatenate/concat/axis*
T0*
N*(
_output_shapes
:??????????*

Tidx0
?
:batch_normalization/gamma/Initializer/ones/shape_as_tensorConst*
valueB:?*
dtype0*
_output_shapes
:*,
_class"
 loc:@batch_normalization/gamma
?
0batch_normalization/gamma/Initializer/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: *,
_class"
 loc:@batch_normalization/gamma
?
*batch_normalization/gamma/Initializer/onesFill:batch_normalization/gamma/Initializer/ones/shape_as_tensor0batch_normalization/gamma/Initializer/ones/Const*
T0*
_output_shapes	
:?*

index_type0*,
_class"
 loc:@batch_normalization/gamma
?
batch_normalization/gammaVarHandleOp**
shared_namebatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: *
dtype0*
	container *
shape:?
?
:batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/gamma*
_output_shapes
: 
?
 batch_normalization/gamma/AssignAssignVariableOpbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
dtype0*,
_class"
 loc:@batch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
dtype0*
_output_shapes	
:?*,
_class"
 loc:@batch_normalization/gamma
?
:batch_normalization/beta/Initializer/zeros/shape_as_tensorConst*
valueB:?*
dtype0*
_output_shapes
:*+
_class!
loc:@batch_normalization/beta
?
0batch_normalization/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *+
_class!
loc:@batch_normalization/beta
?
*batch_normalization/beta/Initializer/zerosFill:batch_normalization/beta/Initializer/zeros/shape_as_tensor0batch_normalization/beta/Initializer/zeros/Const*
T0*
_output_shapes	
:?*

index_type0*+
_class!
loc:@batch_normalization/beta
?
batch_normalization/betaVarHandleOp*)
shared_namebatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
dtype0*
	container *
shape:?
?
9batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/beta*
_output_shapes
: 
?
batch_normalization/beta/AssignAssignVariableOpbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
dtype0*+
_class!
loc:@batch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
dtype0*
_output_shapes	
:?*+
_class!
loc:@batch_normalization/beta
?
Abatch_normalization/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:?*
dtype0*
_output_shapes
:*2
_class(
&$loc:@batch_normalization/moving_mean
?
7batch_normalization/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *2
_class(
&$loc:@batch_normalization/moving_mean
?
1batch_normalization/moving_mean/Initializer/zerosFillAbatch_normalization/moving_mean/Initializer/zeros/shape_as_tensor7batch_normalization/moving_mean/Initializer/zeros/Const*
T0*
_output_shapes	
:?*

index_type0*2
_class(
&$loc:@batch_normalization/moving_mean
?
batch_normalization/moving_meanVarHandleOp*0
shared_name!batch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: *
dtype0*
	container *
shape:?
?
@batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/moving_mean*
_output_shapes
: 
?
&batch_normalization/moving_mean/AssignAssignVariableOpbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
dtype0*2
_class(
&$loc:@batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
dtype0*
_output_shapes	
:?*2
_class(
&$loc:@batch_normalization/moving_mean
?
Dbatch_normalization/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:?*
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moving_variance
?
:batch_normalization/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: *6
_class,
*(loc:@batch_normalization/moving_variance
?
4batch_normalization/moving_variance/Initializer/onesFillDbatch_normalization/moving_variance/Initializer/ones/shape_as_tensor:batch_normalization/moving_variance/Initializer/ones/Const*
T0*
_output_shapes	
:?*

index_type0*6
_class,
*(loc:@batch_normalization/moving_variance
?
#batch_normalization/moving_varianceVarHandleOp*4
shared_name%#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: *
dtype0*
	container *
shape:?
?
Dbatch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#batch_normalization/moving_variance*
_output_shapes
: 
?
*batch_normalization/moving_variance/AssignAssignVariableOp#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
dtype0*6
_class,
*(loc:@batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
dtype0*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/moving_variance
p
.batch_normalization/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
?
(batch_normalization/keras_learning_phasePlaceholderWithDefault.batch_normalization/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
|
2batch_normalization/moments/mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
?
 batch_normalization/moments/meanMeanconcatenate/concat2batch_normalization/moments/mean/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	?*

Tidx0
?
(batch_normalization/moments/StopGradientStopGradient batch_normalization/moments/mean*
T0*
_output_shapes
:	?
?
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceconcatenate/concat(batch_normalization/moments/StopGradient*
T0*(
_output_shapes
:??????????
?
6batch_normalization/moments/variance/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
?
$batch_normalization/moments/varianceMean-batch_normalization/moments/SquaredDifference6batch_normalization/moments/variance/reduction_indices*
	keep_dims(*
T0*
_output_shapes
:	?*

Tidx0
?
#batch_normalization/moments/SqueezeSqueeze batch_normalization/moments/mean*
T0*
squeeze_dims
 *
_output_shapes	
:?
?
%batch_normalization/moments/Squeeze_1Squeeze$batch_normalization/moments/variance*
T0*
squeeze_dims
 *
_output_shapes	
:?
?
batch_normalization/cond/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
q
!batch_normalization/cond/switch_tIdentity!batch_normalization/cond/Switch:1*
T0
*
_output_shapes
: 
o
!batch_normalization/cond/switch_fIdentitybatch_normalization/cond/Switch*
T0
*
_output_shapes
: 
w
 batch_normalization/cond/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
?
!batch_normalization/cond/Switch_1Switch#batch_normalization/moments/Squeeze batch_normalization/cond/pred_id*
T0*"
_output_shapes
:?:?*6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
'batch_normalization/cond/ReadVariableOpReadVariableOp.batch_normalization/cond/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
.batch_normalization/cond/ReadVariableOp/SwitchSwitchbatch_normalization/moving_mean batch_normalization/cond/pred_id*
T0*
_output_shapes
: : *2
_class(
&$loc:@batch_normalization/moving_mean
?
batch_normalization/cond/MergeMerge'batch_normalization/cond/ReadVariableOp#batch_normalization/cond/Switch_1:1*
T0*
N*
_output_shapes
	:?: 
?
!batch_normalization/cond_1/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization/cond_1/switch_tIdentity#batch_normalization/cond_1/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_1/switch_fIdentity!batch_normalization/cond_1/Switch*
T0
*
_output_shapes
: 
y
"batch_normalization/cond_1/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
?
#batch_normalization/cond_1/Switch_1Switch%batch_normalization/moments/Squeeze_1"batch_normalization/cond_1/pred_id*
T0*"
_output_shapes
:?:?*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
)batch_normalization/cond_1/ReadVariableOpReadVariableOp0batch_normalization/cond_1/ReadVariableOp/Switch*
dtype0*
_output_shapes	
:?
?
0batch_normalization/cond_1/ReadVariableOp/SwitchSwitch#batch_normalization/moving_variance"batch_normalization/cond_1/pred_id*
T0*
_output_shapes
: : *6
_class,
*(loc:@batch_normalization/moving_variance
?
 batch_normalization/cond_1/MergeMerge)batch_normalization/cond_1/ReadVariableOp%batch_normalization/cond_1/Switch_1:1*
T0*
N*
_output_shapes
	:?: 
?
!batch_normalization/cond_2/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization/cond_2/switch_tIdentity#batch_normalization/cond_2/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_2/switch_fIdentity!batch_normalization/cond_2/Switch*
T0
*
_output_shapes
: 
y
"batch_normalization/cond_2/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
?
>batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOpReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
Ebatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/SwitchSwitchbatch_normalization/moving_mean"batch_normalization/cond_2/pred_id*
T0*
_output_shapes
: : *2
_class(
&$loc:@batch_normalization/moving_mean
?
3batch_normalization/cond_2/AssignMovingAvg/IdentityIdentity>batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes	
:?
?
0batch_normalization/cond_2/AssignMovingAvg/decayConst$^batch_normalization/cond_2/switch_t*
valueB
 *
?#<*
dtype0*
_output_shapes
: *Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
?
9batch_normalization/cond_2/AssignMovingAvg/ReadVariableOpReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
.batch_normalization/cond_2/AssignMovingAvg/subSub9batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp7batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:?*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
?
5batch_normalization/cond_2/AssignMovingAvg/sub/SwitchSwitchbatch_normalization/cond/Merge"batch_normalization/cond_2/pred_id*
T0*"
_output_shapes
:?:?*1
_class'
%#loc:@batch_normalization/cond/Merge
?
.batch_normalization/cond_2/AssignMovingAvg/mulMul.batch_normalization/cond_2/AssignMovingAvg/sub0batch_normalization/cond_2/AssignMovingAvg/decay*
T0*
_output_shapes	
:?*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
?
>batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1.batch_normalization/cond_2/AssignMovingAvg/mul*
dtype0*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
?
;batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:?*Q
_classG
ECloc:@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp
?
)batch_normalization/cond_2/ReadVariableOpReadVariableOpGbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_2/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:?
?
+batch_normalization/cond_2/ReadVariableOp_1ReadVariableOp2batch_normalization/cond_2/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization/cond_2/ReadVariableOp_1/SwitchSwitchbatch_normalization/moving_mean"batch_normalization/cond_2/pred_id*
T0*
_output_shapes
: : *2
_class(
&$loc:@batch_normalization/moving_mean
?
 batch_normalization/cond_2/MergeMerge+batch_normalization/cond_2/ReadVariableOp_1)batch_normalization/cond_2/ReadVariableOp*
T0*
N*
_output_shapes
	:?: 
?
!batch_normalization/cond_3/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization/cond_3/switch_tIdentity#batch_normalization/cond_3/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_3/switch_fIdentity!batch_normalization/cond_3/Switch*
T0
*
_output_shapes
: 
y
"batch_normalization/cond_3/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
?
>batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOpReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
Ebatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/SwitchSwitch#batch_normalization/moving_variance"batch_normalization/cond_3/pred_id*
T0*
_output_shapes
: : *6
_class,
*(loc:@batch_normalization/moving_variance
?
3batch_normalization/cond_3/AssignMovingAvg/IdentityIdentity>batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp*
T0*
_output_shapes	
:?
?
0batch_normalization/cond_3/AssignMovingAvg/decayConst$^batch_normalization/cond_3/switch_t*
valueB
 *
?#<*
dtype0*
_output_shapes
: *Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
?
9batch_normalization/cond_3/AssignMovingAvg/ReadVariableOpReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1*
dtype0*
_output_shapes	
:?
?
.batch_normalization/cond_3/AssignMovingAvg/subSub9batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp7batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1*
T0*
_output_shapes	
:?*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
?
5batch_normalization/cond_3/AssignMovingAvg/sub/SwitchSwitch batch_normalization/cond_1/Merge"batch_normalization/cond_3/pred_id*
T0*"
_output_shapes
:?:?*3
_class)
'%loc:@batch_normalization/cond_1/Merge
?
.batch_normalization/cond_3/AssignMovingAvg/mulMul.batch_normalization/cond_3/AssignMovingAvg/sub0batch_normalization/cond_3/AssignMovingAvg/decay*
T0*
_output_shapes	
:?*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
?
>batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1.batch_normalization/cond_3/AssignMovingAvg/mul*
dtype0*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
?
;batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp_1ReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:?*Q
_classG
ECloc:@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp
?
)batch_normalization/cond_3/ReadVariableOpReadVariableOpGbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1?^batch_normalization/cond_3/AssignMovingAvg/AssignSubVariableOp*
dtype0*
_output_shapes	
:?
?
+batch_normalization/cond_3/ReadVariableOp_1ReadVariableOp2batch_normalization/cond_3/ReadVariableOp_1/Switch*
dtype0*
_output_shapes	
:?
?
2batch_normalization/cond_3/ReadVariableOp_1/SwitchSwitch#batch_normalization/moving_variance"batch_normalization/cond_3/pred_id*
T0*
_output_shapes
: : *6
_class,
*(loc:@batch_normalization/moving_variance
?
 batch_normalization/cond_3/MergeMerge+batch_normalization/cond_3/ReadVariableOp_1)batch_normalization/cond_3/ReadVariableOp*
T0*
N*
_output_shapes
	:?: 
h
#batch_normalization/batchnorm/add/yConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
?
!batch_normalization/batchnorm/addAdd batch_normalization/cond_1/Merge#batch_normalization/batchnorm/add/y*
T0*
_output_shapes	
:?
u
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
T0*
_output_shapes	
:?
?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpbatch_normalization/gamma*
dtype0*
_output_shapes	
:?
?
!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrt0batch_normalization/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes	
:?
?
#batch_normalization/batchnorm/mul_1Mulconcatenate/concat!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:??????????
?
#batch_normalization/batchnorm/mul_2Mulbatch_normalization/cond/Merge!batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:?
?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOpbatch_normalization/beta*
dtype0*
_output_shapes	
:?
?
!batch_normalization/batchnorm/subSub,batch_normalization/batchnorm/ReadVariableOp#batch_normalization/batchnorm/mul_2*
T0*
_output_shapes	
:?
?
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*
T0*(
_output_shapes
:??????????
?
dropout/cond/SwitchSwitch(batch_normalization/keras_learning_phase(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: : 
Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
T0
*
_output_shapes
: 
k
dropout/cond/pred_idIdentity(batch_normalization/keras_learning_phase*
T0
*
_output_shapes
: 
{
dropout/cond/dropout/keep_probConst^dropout/cond/switch_t*
valueB
 *??L=*
dtype0*
_output_shapes
: 
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
?
!dropout/cond/dropout/Shape/SwitchSwitch#batch_normalization/batchnorm/add_1dropout/cond/pred_id*
T0*<
_output_shapes*
(:??????????:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*
T0*
dtype0*(
_output_shapes
:??????????*
seed2 *

seed 
?
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:??????????
?
dropout/cond/dropout/addAdddropout/cond/dropout/keep_prob#dropout/cond/dropout/random_uniform*
T0*(
_output_shapes
:??????????
p
dropout/cond/dropout/FloorFloordropout/cond/dropout/add*
T0*(
_output_shapes
:??????????
?
dropout/cond/dropout/divRealDiv#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:??????????
?
dropout/cond/dropout/mulMuldropout/cond/dropout/divdropout/cond/dropout/Floor*
T0*(
_output_shapes
:??????????
r
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*
T0*(
_output_shapes
:??????????
?
dropout/cond/Identity/SwitchSwitch#batch_normalization/batchnorm/add_1dropout/cond/pred_id*
T0*<
_output_shapes*
(:??????????:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul*
T0*
N**
_output_shapes
:??????????: 
?
2Prediction/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:*$
_class
loc:@Prediction/kernel
?
0Prediction/kernel/Initializer/random_uniform/minConst*
valueB
 *N???*
dtype0*
_output_shapes
: *$
_class
loc:@Prediction/kernel
?
0Prediction/kernel/Initializer/random_uniform/maxConst*
valueB
 *N??=*
dtype0*
_output_shapes
: *$
_class
loc:@Prediction/kernel
?
:Prediction/kernel/Initializer/random_uniform/RandomUniformRandomUniform2Prediction/kernel/Initializer/random_uniform/shape*
seed2 *$
_class
loc:@Prediction/kernel*
T0*
_output_shapes
:	?*
dtype0*

seed 
?
0Prediction/kernel/Initializer/random_uniform/subSub0Prediction/kernel/Initializer/random_uniform/max0Prediction/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *$
_class
loc:@Prediction/kernel
?
0Prediction/kernel/Initializer/random_uniform/mulMul:Prediction/kernel/Initializer/random_uniform/RandomUniform0Prediction/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes
:	?*$
_class
loc:@Prediction/kernel
?
,Prediction/kernel/Initializer/random_uniformAdd0Prediction/kernel/Initializer/random_uniform/mul0Prediction/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
:	?*$
_class
loc:@Prediction/kernel
?
Prediction/kernelVarHandleOp*"
shared_namePrediction/kernel*$
_class
loc:@Prediction/kernel*
_output_shapes
: *
dtype0*
	container *
shape:	?
s
2Prediction/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpPrediction/kernel*
_output_shapes
: 
?
Prediction/kernel/AssignAssignVariableOpPrediction/kernel,Prediction/kernel/Initializer/random_uniform*
dtype0*$
_class
loc:@Prediction/kernel
?
%Prediction/kernel/Read/ReadVariableOpReadVariableOpPrediction/kernel*
dtype0*
_output_shapes
:	?*$
_class
loc:@Prediction/kernel
?
!Prediction/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*"
_class
loc:@Prediction/bias
?
Prediction/biasVarHandleOp* 
shared_namePrediction/bias*"
_class
loc:@Prediction/bias*
_output_shapes
: *
dtype0*
	container *
shape:
o
0Prediction/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpPrediction/bias*
_output_shapes
: 
?
Prediction/bias/AssignAssignVariableOpPrediction/bias!Prediction/bias/Initializer/zeros*
dtype0*"
_class
loc:@Prediction/bias
?
#Prediction/bias/Read/ReadVariableOpReadVariableOpPrediction/bias*
dtype0*
_output_shapes
:*"
_class
loc:@Prediction/bias
s
 Prediction/MatMul/ReadVariableOpReadVariableOpPrediction/kernel*
dtype0*
_output_shapes
:	?
?
Prediction/MatMulMatMuldropout/cond/Merge Prediction/MatMul/ReadVariableOp*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????
m
!Prediction/BiasAdd/ReadVariableOpReadVariableOpPrediction/bias*
dtype0*
_output_shapes
:
?
Prediction/BiasAddBiasAddPrediction/MatMul!Prediction/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:?????????
c
Prediction/SoftmaxSoftmaxPrediction/BiasAdd*
T0*'
_output_shapes
:?????????
?
$RMSprop/lr/Initializer/initial_valueConst*
valueB
 *o?:*
dtype0*
_output_shapes
: *
_class
loc:@RMSprop/lr
?

RMSprop/lrVarHandleOp*
shared_name
RMSprop/lr*
_class
loc:@RMSprop/lr*
_output_shapes
: *
dtype0*
	container *
shape: 
e
+RMSprop/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOp
RMSprop/lr*
_output_shapes
: 
?
RMSprop/lr/AssignAssignVariableOp
RMSprop/lr$RMSprop/lr/Initializer/initial_value*
dtype0*
_class
loc:@RMSprop/lr
?
RMSprop/lr/Read/ReadVariableOpReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: *
_class
loc:@RMSprop/lr
?
%RMSprop/rho/Initializer/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: *
_class
loc:@RMSprop/rho
?
RMSprop/rhoVarHandleOp*
shared_nameRMSprop/rho*
_class
loc:@RMSprop/rho*
_output_shapes
: *
dtype0*
	container *
shape: 
g
,RMSprop/rho/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/rho*
_output_shapes
: 
?
RMSprop/rho/AssignAssignVariableOpRMSprop/rho%RMSprop/rho/Initializer/initial_value*
dtype0*
_class
loc:@RMSprop/rho
?
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: *
_class
loc:@RMSprop/rho
?
'RMSprop/decay/Initializer/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: * 
_class
loc:@RMSprop/decay
?
RMSprop/decayVarHandleOp*
shared_nameRMSprop/decay* 
_class
loc:@RMSprop/decay*
_output_shapes
: *
dtype0*
	container *
shape: 
k
.RMSprop/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/decay*
_output_shapes
: 
?
RMSprop/decay/AssignAssignVariableOpRMSprop/decay'RMSprop/decay/Initializer/initial_value*
dtype0* 
_class
loc:@RMSprop/decay
?
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
dtype0*
_output_shapes
: * 
_class
loc:@RMSprop/decay
?
,RMSprop/iterations/Initializer/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: *%
_class
loc:@RMSprop/iterations
?
RMSprop/iterationsVarHandleOp*#
shared_nameRMSprop/iterations*%
_class
loc:@RMSprop/iterations*
_output_shapes
: *
dtype0	*
	container *
shape: 
u
3RMSprop/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpRMSprop/iterations*
_output_shapes
: 
?
RMSprop/iterations/AssignAssignVariableOpRMSprop/iterations,RMSprop/iterations/Initializer/initial_value*
dtype0	*%
_class
loc:@RMSprop/iterations
?
&RMSprop/iterations/Read/ReadVariableOpReadVariableOpRMSprop/iterations*
dtype0	*
_output_shapes
: *%
_class
loc:@RMSprop/iterations
?
Prediction_targetPlaceholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
R
ConstConst*
valueB*  ??*
dtype0*
_output_shapes
:
?
Prediction_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:?????????*
shape:?????????
l
*loss/Prediction_loss/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
loss/Prediction_loss/SumSumPrediction/Softmax*loss/Prediction_loss/Sum/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:?????????*

Tidx0
?
loss/Prediction_loss/truedivRealDivPrediction/Softmaxloss/Prediction_loss/Sum*
T0*'
_output_shapes
:?????????
_
loss/Prediction_loss/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
_
loss/Prediction_loss/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
x
loss/Prediction_loss/subSubloss/Prediction_loss/sub/xloss/Prediction_loss/Const*
T0*
_output_shapes
: 
?
*loss/Prediction_loss/clip_by_value/MinimumMinimumloss/Prediction_loss/truedivloss/Prediction_loss/sub*
T0*'
_output_shapes
:?????????
?
"loss/Prediction_loss/clip_by_valueMaximum*loss/Prediction_loss/clip_by_value/Minimumloss/Prediction_loss/Const*
T0*'
_output_shapes
:?????????
u
loss/Prediction_loss/LogLog"loss/Prediction_loss/clip_by_value*
T0*'
_output_shapes
:?????????
~
loss/Prediction_loss/mulMulPrediction_targetloss/Prediction_loss/Log*
T0*'
_output_shapes
:?????????
n
,loss/Prediction_loss/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
loss/Prediction_loss/Sum_1Sumloss/Prediction_loss/mul,loss/Prediction_loss/Sum_1/reduction_indices*
	keep_dims( *
T0*#
_output_shapes
:?????????*

Tidx0
i
loss/Prediction_loss/NegNegloss/Prediction_loss/Sum_1*
T0*#
_output_shapes
:?????????
?
Iloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shapeShapePrediction_sample_weights*
T0*
out_type0*
_output_shapes
:
?
Hloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
?
Hloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/Prediction_loss/Neg*
T0*
out_type0*
_output_shapes
:
?
Gloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
?
Gloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
?
Eloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalarEqualGloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar/xHloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
?
Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchEloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalarEloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
?
Sloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentitySloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
?
Sloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityQloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
?
Rloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityEloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
?
Sloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchEloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalarRloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*
_output_shapes
: : *X
_classN
LJloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar
?
qloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualxloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchzloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
?
xloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchGloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/rankRloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*
_output_shapes
: : *Z
_classP
NLloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/values/rank
?
zloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchHloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/rankRloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*
_output_shapes
: : *[
_classQ
OMloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/rank
?
kloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchqloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
?
mloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitymloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
?
mloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitykloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
?
lloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityqloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstn^loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDims?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchHloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shapeRloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0* 
_output_shapes
::*[
_classQ
OMloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switch?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchlloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0* 
_output_shapes
::*[
_classQ
OMloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstn^loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstn^loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
?
loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFill?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:*

index_type0
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstn^loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
?
|loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstn^loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDims?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes

:
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchIloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shapeRloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0* 
_output_shapes
::*\
_classR
PNloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switch?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchlloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0* 
_output_shapes
::*\
_classR
PNloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1|loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*
validate_indices(*<
_output_shapes*
(:?????????:?????????:*
set_operationa-b
?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSize?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
?
wloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstn^loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
?
uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualwloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
?
mloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchqloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_output_shapes
: : *?
_classz
xvloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
?
jloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergemloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
?
Ploss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergejloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeUloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
?
Aloss/Prediction_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
?
Closs/Prediction_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
?
Closs/Prediction_loss/broadcast_weights/assert_broadcastable/Const_2Const*,
value#B! BPrediction_sample_weights:0*
dtype0*
_output_shapes
: 
?
Closs/Prediction_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
?
Closs/Prediction_loss/broadcast_weights/assert_broadcastable/Const_4Const*+
value"B  Bloss/Prediction_loss/Neg:0*
dtype0*
_output_shapes
: 
?
Closs/Prediction_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
?
Nloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchPloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergePloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
?
Ploss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityPloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
?
Ploss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityNloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
?
Oloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityPloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
?
Lloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpQ^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
?
Zloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityPloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tM^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*
_output_shapes
: *c
_classY
WUloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
?
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstQ^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
?
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstQ^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
?
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstQ^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*,
value#B! BPrediction_sample_weights:0*
dtype0*
_output_shapes
: 
?
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstQ^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
?
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstQ^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*+
value"B  Bloss/Prediction_loss/Neg:0*
dtype0*
_output_shapes
: 
?
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstQ^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
?
Nloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertUloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchUloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
?
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchPloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeOloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*
_output_shapes
: : *c
_classY
WUloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge
?
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchIloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0* 
_output_shapes
::*\
_classR
PNloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape
?
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchHloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shapeOloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0* 
_output_shapes
::*[
_classQ
OMloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape
?
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchEloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalarOloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*
_output_shapes
: : *X
_classN
LJloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar
?
\loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityPloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fO^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*
_output_shapes
: *c
_classY
WUloc:@loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f
?
Mloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMerge\loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Zloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
?
6loss/Prediction_loss/broadcast_weights/ones_like/ShapeShapeloss/Prediction_loss/NegN^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
?
6loss/Prediction_loss/broadcast_weights/ones_like/ConstConstN^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
0loss/Prediction_loss/broadcast_weights/ones_likeFill6loss/Prediction_loss/broadcast_weights/ones_like/Shape6loss/Prediction_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:?????????*

index_type0
?
&loss/Prediction_loss/broadcast_weightsMulPrediction_sample_weights0loss/Prediction_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:?????????
?
loss/Prediction_loss/Mul_1Mulloss/Prediction_loss/Neg&loss/Prediction_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
f
loss/Prediction_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
loss/Prediction_loss/Sum_2Sumloss/Prediction_loss/Mul_1loss/Prediction_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
f
loss/Prediction_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
?
loss/Prediction_loss/Sum_3Sum&loss/Prediction_loss/broadcast_weightsloss/Prediction_loss/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
?
loss/Prediction_loss/truediv_1RealDivloss/Prediction_loss/Sum_2loss/Prediction_loss/Sum_3*
T0*
_output_shapes
: 
d
loss/Prediction_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
loss/Prediction_loss/GreaterGreaterloss/Prediction_loss/Sum_3loss/Prediction_loss/zeros_like*
T0*
_output_shapes
: 
?
loss/Prediction_loss/SelectSelectloss/Prediction_loss/Greaterloss/Prediction_loss/truediv_1loss/Prediction_loss/zeros_like*
T0*
_output_shapes
: 
_
loss/Prediction_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
?
loss/Prediction_loss/MeanMeanloss/Prediction_loss/Selectloss/Prediction_loss/Const_3*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
O

loss/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
W
loss/mulMul
loss/mul/xloss/Prediction_loss/Mean*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMaxArgMaxPrediction_targetmetrics/acc/ArgMax/dimension*
output_type0	*
T0*#
_output_shapes
:?????????*

Tidx0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMax_1ArgMaxPrediction/Softmaxmetrics/acc/ArgMax_1/dimension*
output_type0	*
T0*#
_output_shapes
:?????????*

Tidx0
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:?????????
x
metrics/acc/CastCastmetrics/acc/Equal*

DstT0*#
_output_shapes
:?????????*
Truncate( *

SrcT0

[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
?
 training/RMSprop/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
?
$training/RMSprop/gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: *
_class
loc:@loss/mul
?
training/RMSprop/gradients/FillFill training/RMSprop/gradients/Shape$training/RMSprop/gradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0*
_class
loc:@loss/mul
?
,training/RMSprop/gradients/loss/mul_grad/MulMultraining/RMSprop/gradients/Fillloss/Prediction_loss/Mean*
T0*
_output_shapes
: *
_class
loc:@loss/mul
?
.training/RMSprop/gradients/loss/mul_grad/Mul_1Multraining/RMSprop/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: *
_class
loc:@loss/mul
?
Gtraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: *,
_class"
 loc:@loss/Prediction_loss/Mean
?
Atraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/ReshapeReshape.training/RMSprop/gradients/loss/mul_grad/Mul_1Gtraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: *,
_class"
 loc:@loss/Prediction_loss/Mean
?
?training/RMSprop/gradients/loss/Prediction_loss/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: *,
_class"
 loc:@loss/Prediction_loss/Mean
?
>training/RMSprop/gradients/loss/Prediction_loss/Mean_grad/TileTileAtraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/Reshape?training/RMSprop/gradients/loss/Prediction_loss/Mean_grad/Const*
T0*
_output_shapes
: *

Tmultiples0*,
_class"
 loc:@loss/Prediction_loss/Mean
?
Atraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/Const_1Const*
valueB
 *  ??*
dtype0*
_output_shapes
: *,
_class"
 loc:@loss/Prediction_loss/Mean
?
Atraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/truedivRealDiv>training/RMSprop/gradients/loss/Prediction_loss/Mean_grad/TileAtraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/Const_1*
T0*
_output_shapes
: *,
_class"
 loc:@loss/Prediction_loss/Mean
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@loss/Prediction_loss/Select
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Select_grad/SelectSelectloss/Prediction_loss/GreaterAtraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/truedivFtraining/RMSprop/gradients/loss/Prediction_loss/Select_grad/zeros_like*
T0*
_output_shapes
: *.
_class$
" loc:@loss/Prediction_loss/Select
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/Select_grad/Select_1Selectloss/Prediction_loss/GreaterFtraining/RMSprop/gradients/loss/Prediction_loss/Select_grad/zeros_likeAtraining/RMSprop/gradients/loss/Prediction_loss/Mean_grad/truediv*
T0*
_output_shapes
: *.
_class$
" loc:@loss/Prediction_loss/Select
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Ttraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/ShapeFtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/RealDivRealDivBtraining/RMSprop/gradients/loss/Prediction_loss/Select_grad/Selectloss/Prediction_loss/Sum_3*
T0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/SumSumFtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/RealDivTtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/ReshapeReshapeBtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/SumDtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/NegNegloss/Prediction_loss/Sum_2*
T0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Htraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/RealDiv_1RealDivBtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Negloss/Prediction_loss/Sum_3*
T0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Htraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/RealDiv_2RealDivHtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/RealDiv_1loss/Prediction_loss/Sum_3*
T0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/mulMulBtraining/RMSprop/gradients/loss/Prediction_loss/Select_grad/SelectHtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/RealDiv_2*
T0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Sum_1SumBtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/mulVtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Htraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Reshape_1ReshapeDtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Sum_1Ftraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *1
_class'
%#loc:@loss/Prediction_loss/truediv_1
?
Htraining/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Sum_2
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/ReshapeReshapeFtraining/RMSprop/gradients/loss/Prediction_loss/truediv_1_grad/ReshapeHtraining/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Sum_2
?
@training/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/ShapeShapeloss/Prediction_loss/Mul_1*
T0*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Sum_2
?
?training/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/TileTileBtraining/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/Reshape@training/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/Shape*
T0*#
_output_shapes
:?????????*

Tmultiples0*-
_class#
!loc:@loss/Prediction_loss/Sum_2
?
@training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/ShapeShapeloss/Prediction_loss/Neg*
T0*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Shape_1Shape&loss/Prediction_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
Ptraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs@training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/ShapeBtraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
>training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/MulMul?training/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/Tile&loss/Prediction_loss/broadcast_weights*
T0*#
_output_shapes
:?????????*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
>training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/SumSum>training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/MulPtraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/ReshapeReshape>training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Sum@training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
@training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Mul_1Mulloss/Prediction_loss/Neg?training/RMSprop/gradients/loss/Prediction_loss/Sum_2_grad/Tile*
T0*#
_output_shapes
:?????????*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
@training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Sum_1Sum@training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Mul_1Rtraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Reshape_1Reshape@training/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Sum_1Btraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:?????????*-
_class#
!loc:@loss/Prediction_loss/Mul_1
?
<training/RMSprop/gradients/loss/Prediction_loss/Neg_grad/NegNegBtraining/RMSprop/gradients/loss/Prediction_loss/Mul_1_grad/Reshape*
T0*#
_output_shapes
:?????????*+
_class!
loc:@loss/Prediction_loss/Neg
?
@training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/ShapeShapeloss/Prediction_loss/mul*
T0*
out_type0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
>training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/addAdd,loss/Prediction_loss/Sum_1/reduction_indices?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Size*
T0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
>training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/modFloorMod>training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/add?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Size*
T0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
@training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/rangeRangeFtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/range/start?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/SizeFtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Etraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/FillFillBtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Shape_1Etraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Htraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/DynamicStitchDynamicStitch@training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/range>training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/mod@training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Shape?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Fill*
T0*
N*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/MaximumMaximumHtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/DynamicStitchDtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Maximum/y*
T0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Ctraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/floordivFloorDiv@training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/ShapeBtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Maximum*
T0*
_output_shapes
:*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/ReshapeReshape<training/RMSprop/gradients/loss/Prediction_loss/Neg_grad/NegHtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/TileTileBtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/ReshapeCtraining/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/floordiv*
T0*'
_output_shapes
:?????????*

Tmultiples0*-
_class#
!loc:@loss/Prediction_loss/Sum_1
?
>training/RMSprop/gradients/loss/Prediction_loss/mul_grad/ShapeShapePrediction_target*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@loss/Prediction_loss/mul
?
@training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Shape_1Shapeloss/Prediction_loss/Log*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@loss/Prediction_loss/mul
?
Ntraining/RMSprop/gradients/loss/Prediction_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Shape@training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*+
_class!
loc:@loss/Prediction_loss/mul
?
<training/RMSprop/gradients/loss/Prediction_loss/mul_grad/MulMul?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Tileloss/Prediction_loss/Log*
T0*'
_output_shapes
:?????????*+
_class!
loc:@loss/Prediction_loss/mul
?
<training/RMSprop/gradients/loss/Prediction_loss/mul_grad/SumSum<training/RMSprop/gradients/loss/Prediction_loss/mul_grad/MulNtraining/RMSprop/gradients/loss/Prediction_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss/Prediction_loss/mul
?
@training/RMSprop/gradients/loss/Prediction_loss/mul_grad/ReshapeReshape<training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Sum>training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Shape*
T0*
Tshape0*0
_output_shapes
:??????????????????*+
_class!
loc:@loss/Prediction_loss/mul
?
>training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Mul_1MulPrediction_target?training/RMSprop/gradients/loss/Prediction_loss/Sum_1_grad/Tile*
T0*'
_output_shapes
:?????????*+
_class!
loc:@loss/Prediction_loss/mul
?
>training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Sum_1Sum>training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Mul_1Ptraining/RMSprop/gradients/loss/Prediction_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss/Prediction_loss/mul
?
Btraining/RMSprop/gradients/loss/Prediction_loss/mul_grad/Reshape_1Reshape>training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Sum_1@training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????*+
_class!
loc:@loss/Prediction_loss/mul
?
Ctraining/RMSprop/gradients/loss/Prediction_loss/Log_grad/Reciprocal
Reciprocal"loss/Prediction_loss/clip_by_valueC^training/RMSprop/gradients/loss/Prediction_loss/mul_grad/Reshape_1*
T0*'
_output_shapes
:?????????*+
_class!
loc:@loss/Prediction_loss/Log
?
<training/RMSprop/gradients/loss/Prediction_loss/Log_grad/mulMulBtraining/RMSprop/gradients/loss/Prediction_loss/mul_grad/Reshape_1Ctraining/RMSprop/gradients/loss/Prediction_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:?????????*+
_class!
loc:@loss/Prediction_loss/Log
?
Htraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/ShapeShape*loss/Prediction_loss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Jtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Jtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Shape_2Shape<training/RMSprop/gradients/loss/Prediction_loss/Log_grad/mul*
T0*
out_type0*
_output_shapes
:*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Ntraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Htraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/zerosFillJtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Shape_2Ntraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:?????????*

index_type0*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Otraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/GreaterEqualGreaterEqual*loss/Prediction_loss/clip_by_value/Minimumloss/Prediction_loss/Const*
T0*'
_output_shapes
:?????????*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Xtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/ShapeJtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Itraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/SelectSelectOtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/GreaterEqual<training/RMSprop/gradients/loss/Prediction_loss/Log_grad/mulHtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:?????????*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Ktraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Select_1SelectOtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/GreaterEqualHtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/zeros<training/RMSprop/gradients/loss/Prediction_loss/Log_grad/mul*
T0*'
_output_shapes
:?????????*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/SumSumItraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/SelectXtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Jtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/ReshapeReshapeFtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/SumHtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Htraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Sum_1SumKtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Select_1Ztraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Ltraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Reshape_1ReshapeHtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Sum_1Jtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *5
_class+
)'loc:@loss/Prediction_loss/clip_by_value
?
Ptraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/ShapeShapeloss/Prediction_loss/truediv*
T0*
out_type0*
_output_shapes
:*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Rtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Rtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Shape_2ShapeJtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Reshape*
T0*
out_type0*
_output_shapes
:*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Vtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Ptraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/zerosFillRtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Shape_2Vtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:?????????*

index_type0*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Ttraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/Prediction_loss/truedivloss/Prediction_loss/sub*
T0*'
_output_shapes
:?????????*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
`training/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsPtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/ShapeRtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Qtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/SelectSelectTtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/LessEqualJtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/ReshapePtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:?????????*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Straining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Select_1SelectTtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/LessEqualPtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/zerosJtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value_grad/Reshape*
T0*'
_output_shapes
:?????????*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Ntraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/SumSumQtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Select`training/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Rtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/ReshapeReshapeNtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/SumPtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Ptraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Sum_1SumStraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Select_1btraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Ttraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Reshape_1ReshapePtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Sum_1Rtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *=
_class3
1/loc:@loss/Prediction_loss/clip_by_value/Minimum
?
Btraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/ShapeShapePrediction/Softmax*
T0*
out_type0*
_output_shapes
:*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Shape_1Shapeloss/Prediction_loss/Sum*
T0*
out_type0*
_output_shapes
:*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Rtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/ShapeDtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/RealDivRealDivRtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/Reshapeloss/Prediction_loss/Sum*
T0*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
@training/RMSprop/gradients/loss/Prediction_loss/truediv_grad/SumSumDtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/RealDivRtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/ReshapeReshape@training/RMSprop/gradients/loss/Prediction_loss/truediv_grad/SumBtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
@training/RMSprop/gradients/loss/Prediction_loss/truediv_grad/NegNegPrediction/Softmax*
T0*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/RealDiv_1RealDiv@training/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Negloss/Prediction_loss/Sum*
T0*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/RealDiv_2RealDivFtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/RealDiv_1loss/Prediction_loss/Sum*
T0*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
@training/RMSprop/gradients/loss/Prediction_loss/truediv_grad/mulMulRtraining/RMSprop/gradients/loss/Prediction_loss/clip_by_value/Minimum_grad/ReshapeFtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/RealDiv_2*
T0*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Btraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Sum_1Sum@training/RMSprop/gradients/loss/Prediction_loss/truediv_grad/mulTtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Reshape_1ReshapeBtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Sum_1Dtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
>training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/ShapeShapePrediction/Softmax*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@loss/Prediction_loss/Sum
?
=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
<training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/addAdd*loss/Prediction_loss/Sum/reduction_indices=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Size*
T0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
<training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/modFloorMod<training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/add=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Size*
T0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
@training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
Dtraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
>training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/rangeRangeDtraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/range/start=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/SizeDtraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@loss/Prediction_loss/Sum
?
Ctraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/FillFill@training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Shape_1Ctraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*+
_class!
loc:@loss/Prediction_loss/Sum
?
Ftraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/DynamicStitchDynamicStitch>training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/range<training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/mod>training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Shape=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Fill*
T0*
N*
_output_shapes
:*+
_class!
loc:@loss/Prediction_loss/Sum
?
Btraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@loss/Prediction_loss/Sum
?
@training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/MaximumMaximumFtraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/DynamicStitchBtraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Maximum/y*
T0*
_output_shapes
:*+
_class!
loc:@loss/Prediction_loss/Sum
?
Atraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/floordivFloorDiv>training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Shape@training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Maximum*
T0*
_output_shapes
:*+
_class!
loc:@loss/Prediction_loss/Sum
?
@training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/ReshapeReshapeFtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Reshape_1Ftraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????*+
_class!
loc:@loss/Prediction_loss/Sum
?
=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/TileTile@training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/ReshapeAtraining/RMSprop/gradients/loss/Prediction_loss/Sum_grad/floordiv*
T0*'
_output_shapes
:?????????*

Tmultiples0*+
_class!
loc:@loss/Prediction_loss/Sum
?
training/RMSprop/gradients/AddNAddNDtraining/RMSprop/gradients/loss/Prediction_loss/truediv_grad/Reshape=training/RMSprop/gradients/loss/Prediction_loss/Sum_grad/Tile*
T0*
N*'
_output_shapes
:?????????*/
_class%
#!loc:@loss/Prediction_loss/truediv
?
6training/RMSprop/gradients/Prediction/Softmax_grad/mulMultraining/RMSprop/gradients/AddNPrediction/Softmax*
T0*'
_output_shapes
:?????????*%
_class
loc:@Prediction/Softmax
?
Htraining/RMSprop/gradients/Prediction/Softmax_grad/Sum/reduction_indicesConst*
valueB :
?????????*
dtype0*
_output_shapes
: *%
_class
loc:@Prediction/Softmax
?
6training/RMSprop/gradients/Prediction/Softmax_grad/SumSum6training/RMSprop/gradients/Prediction/Softmax_grad/mulHtraining/RMSprop/gradients/Prediction/Softmax_grad/Sum/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:?????????*

Tidx0*%
_class
loc:@Prediction/Softmax
?
6training/RMSprop/gradients/Prediction/Softmax_grad/subSubtraining/RMSprop/gradients/AddN6training/RMSprop/gradients/Prediction/Softmax_grad/Sum*
T0*'
_output_shapes
:?????????*%
_class
loc:@Prediction/Softmax
?
8training/RMSprop/gradients/Prediction/Softmax_grad/mul_1Mul6training/RMSprop/gradients/Prediction/Softmax_grad/subPrediction/Softmax*
T0*'
_output_shapes
:?????????*%
_class
loc:@Prediction/Softmax
?
>training/RMSprop/gradients/Prediction/BiasAdd_grad/BiasAddGradBiasAddGrad8training/RMSprop/gradients/Prediction/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:*%
_class
loc:@Prediction/BiasAdd
?
8training/RMSprop/gradients/Prediction/MatMul_grad/MatMulMatMul8training/RMSprop/gradients/Prediction/Softmax_grad/mul_1 Prediction/MatMul/ReadVariableOp*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:??????????*$
_class
loc:@Prediction/MatMul
?
:training/RMSprop/gradients/Prediction/MatMul_grad/MatMul_1MatMuldropout/cond/Merge8training/RMSprop/gradients/Prediction/Softmax_grad/mul_1*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	?*$
_class
loc:@Prediction/MatMul
?
<training/RMSprop/gradients/dropout/cond/Merge_grad/cond_gradSwitch8training/RMSprop/gradients/Prediction/MatMul_grad/MatMuldropout/cond/pred_id*
T0*<
_output_shapes*
(:??????????:??????????*$
_class
loc:@Prediction/MatMul
?
>training/RMSprop/gradients/dropout/cond/dropout/mul_grad/ShapeShapedropout/cond/dropout/div*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/mul
?
@training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Shape_1Shapedropout/cond/dropout/Floor*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/mul
?
Ntraining/RMSprop/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs>training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Shape@training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*+
_class!
loc:@dropout/cond/dropout/mul
?
<training/RMSprop/gradients/dropout/cond/dropout/mul_grad/MulMul>training/RMSprop/gradients/dropout/cond/Merge_grad/cond_grad:1dropout/cond/dropout/Floor*
T0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/mul
?
<training/RMSprop/gradients/dropout/cond/dropout/mul_grad/SumSum<training/RMSprop/gradients/dropout/cond/dropout/mul_grad/MulNtraining/RMSprop/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/mul
?
@training/RMSprop/gradients/dropout/cond/dropout/mul_grad/ReshapeReshape<training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Sum>training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/mul
?
>training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Mul_1Muldropout/cond/dropout/div>training/RMSprop/gradients/dropout/cond/Merge_grad/cond_grad:1*
T0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/mul
?
>training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Sum_1Sum>training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Mul_1Ptraining/RMSprop/gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/mul
?
Btraining/RMSprop/gradients/dropout/cond/dropout/mul_grad/Reshape_1Reshape>training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Sum_1@training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/mul
?
!training/RMSprop/gradients/SwitchSwitch#batch_normalization/batchnorm/add_1dropout/cond/pred_id*
T0*<
_output_shapes*
(:??????????:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
#training/RMSprop/gradients/IdentityIdentity#training/RMSprop/gradients/Switch:1*
T0*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
"training/RMSprop/gradients/Shape_1Shape#training/RMSprop/gradients/Switch:1*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
&training/RMSprop/gradients/zeros/ConstConst$^training/RMSprop/gradients/Identity*
valueB
 *    *
dtype0*
_output_shapes
: *6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
 training/RMSprop/gradients/zerosFill"training/RMSprop/gradients/Shape_1&training/RMSprop/gradients/zeros/Const*
T0*(
_output_shapes
:??????????*

index_type0*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Ftraining/RMSprop/gradients/dropout/cond/Identity/Switch_grad/cond_gradMerge<training/RMSprop/gradients/dropout/cond/Merge_grad/cond_grad training/RMSprop/gradients/zeros*
T0*
N**
_output_shapes
:??????????: *6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
>training/RMSprop/gradients/dropout/cond/dropout/div_grad/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@dropout/cond/dropout/div
?
@training/RMSprop/gradients/dropout/cond/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *+
_class!
loc:@dropout/cond/dropout/div
?
Ntraining/RMSprop/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs>training/RMSprop/gradients/dropout/cond/dropout/div_grad/Shape@training/RMSprop/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*+
_class!
loc:@dropout/cond/dropout/div
?
@training/RMSprop/gradients/dropout/cond/dropout/div_grad/RealDivRealDiv@training/RMSprop/gradients/dropout/cond/dropout/mul_grad/Reshapedropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/div
?
<training/RMSprop/gradients/dropout/cond/dropout/div_grad/SumSum@training/RMSprop/gradients/dropout/cond/dropout/div_grad/RealDivNtraining/RMSprop/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/div
?
@training/RMSprop/gradients/dropout/cond/dropout/div_grad/ReshapeReshape<training/RMSprop/gradients/dropout/cond/dropout/div_grad/Sum>training/RMSprop/gradients/dropout/cond/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/div
?
<training/RMSprop/gradients/dropout/cond/dropout/div_grad/NegNeg#dropout/cond/dropout/Shape/Switch:1*
T0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/div
?
Btraining/RMSprop/gradients/dropout/cond/dropout/div_grad/RealDiv_1RealDiv<training/RMSprop/gradients/dropout/cond/dropout/div_grad/Negdropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/div
?
Btraining/RMSprop/gradients/dropout/cond/dropout/div_grad/RealDiv_2RealDivBtraining/RMSprop/gradients/dropout/cond/dropout/div_grad/RealDiv_1dropout/cond/dropout/keep_prob*
T0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/div
?
<training/RMSprop/gradients/dropout/cond/dropout/div_grad/mulMul@training/RMSprop/gradients/dropout/cond/dropout/mul_grad/ReshapeBtraining/RMSprop/gradients/dropout/cond/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:??????????*+
_class!
loc:@dropout/cond/dropout/div
?
>training/RMSprop/gradients/dropout/cond/dropout/div_grad/Sum_1Sum<training/RMSprop/gradients/dropout/cond/dropout/div_grad/mulPtraining/RMSprop/gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*+
_class!
loc:@dropout/cond/dropout/div
?
Btraining/RMSprop/gradients/dropout/cond/dropout/div_grad/Reshape_1Reshape>training/RMSprop/gradients/dropout/cond/dropout/div_grad/Sum_1@training/RMSprop/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *+
_class!
loc:@dropout/cond/dropout/div
?
#training/RMSprop/gradients/Switch_1Switch#batch_normalization/batchnorm/add_1dropout/cond/pred_id*
T0*<
_output_shapes*
(:??????????:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
%training/RMSprop/gradients/Identity_1Identity#training/RMSprop/gradients/Switch_1*
T0*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
"training/RMSprop/gradients/Shape_2Shape#training/RMSprop/gradients/Switch_1*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
(training/RMSprop/gradients/zeros_1/ConstConst&^training/RMSprop/gradients/Identity_1*
valueB
 *    *
dtype0*
_output_shapes
: *6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
"training/RMSprop/gradients/zeros_1Fill"training/RMSprop/gradients/Shape_2(training/RMSprop/gradients/zeros_1/Const*
T0*(
_output_shapes
:??????????*

index_type0*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Ktraining/RMSprop/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_gradMerge"training/RMSprop/gradients/zeros_1@training/RMSprop/gradients/dropout/cond/dropout/div_grad/Reshape*
T0*
N**
_output_shapes
:??????????: *6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
!training/RMSprop/gradients/AddN_1AddNFtraining/RMSprop/gradients/dropout/cond/Identity/Switch_grad/cond_gradKtraining/RMSprop/gradients/dropout/cond/dropout/Shape/Switch_grad/cond_grad*
T0*
N*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/ShapeShape#batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Ktraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Ytraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/ShapeKtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Gtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/SumSum!training/RMSprop/gradients/AddN_1Ytraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Ktraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeGtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/SumItraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Sum!training/RMSprop/gradients/AddN_1[training/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Mtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeItraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Sum_1Ktraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/batchnorm/add_1
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/ShapeShapeconcatenate/concat*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Ktraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Ytraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/ShapeKtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Gtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/MulMulKtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Reshape!batch_normalization/batchnorm/mul*
T0*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Gtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/SumSumGtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/MulYtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Ktraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeGtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/SumItraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1Mulconcatenate/concatKtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Reshape*
T0*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1SumItraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Mul_1[training/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Mtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeItraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Sum_1Ktraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Etraining/RMSprop/gradients/batch_normalization/batchnorm/sub_grad/NegNegMtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes	
:?*4
_class*
(&loc:@batch_normalization/batchnorm/sub
?
Gtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_2_grad/MulMulEtraining/RMSprop/gradients/batch_normalization/batchnorm/sub_grad/Neg!batch_normalization/batchnorm/mul*
T0*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/batchnorm/mul_2
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1MulEtraining/RMSprop/gradients/batch_normalization/batchnorm/sub_grad/Negbatch_normalization/cond/Merge*
T0*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/batchnorm/mul_2
?
Htraining/RMSprop/gradients/batch_normalization/cond/Merge_grad/cond_gradSwitchGtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_2_grad/Mul batch_normalization/cond/pred_id*
T0*"
_output_shapes
:?:?*6
_class,
*(loc:@batch_normalization/batchnorm/mul_2
?
!training/RMSprop/gradients/AddN_2AddNMtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/Reshape_1Itraining/RMSprop/gradients/batch_normalization/batchnorm/mul_2_grad/Mul_1*
T0*
N*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
Etraining/RMSprop/gradients/batch_normalization/batchnorm/mul_grad/MulMul!training/RMSprop/gradients/AddN_20batch_normalization/batchnorm/mul/ReadVariableOp*
T0*
_output_shapes	
:?*4
_class*
(&loc:@batch_normalization/batchnorm/mul
?
Gtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_grad/Mul_1Mul!training/RMSprop/gradients/AddN_2#batch_normalization/batchnorm/Rsqrt*
T0*
_output_shapes	
:?*4
_class*
(&loc:@batch_normalization/batchnorm/mul
?
#training/RMSprop/gradients/Switch_2Switch#batch_normalization/moments/Squeeze batch_normalization/cond/pred_id*
T0*"
_output_shapes
:?:?*6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
%training/RMSprop/gradients/Identity_2Identity#training/RMSprop/gradients/Switch_2*
T0*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
"training/RMSprop/gradients/Shape_3Shape#training/RMSprop/gradients/Switch_2*
T0*
out_type0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
(training/RMSprop/gradients/zeros_2/ConstConst&^training/RMSprop/gradients/Identity_2*
valueB
 *    *
dtype0*
_output_shapes
: *6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
"training/RMSprop/gradients/zeros_2Fill"training/RMSprop/gradients/Shape_3(training/RMSprop/gradients/zeros_2/Const*
T0*
_output_shapes	
:?*

index_type0*6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
Ktraining/RMSprop/gradients/batch_normalization/cond/Switch_1_grad/cond_gradMerge"training/RMSprop/gradients/zeros_2Jtraining/RMSprop/gradients/batch_normalization/cond/Merge_grad/cond_grad:1*
T0*
N*
_output_shapes
	:?: *6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
Mtraining/RMSprop/gradients/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad#batch_normalization/batchnorm/RsqrtEtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_grad/Mul*
T0*
_output_shapes	
:?*6
_class,
*(loc:@batch_normalization/batchnorm/Rsqrt
?
Itraining/RMSprop/gradients/batch_normalization/moments/Squeeze_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
Ktraining/RMSprop/gradients/batch_normalization/moments/Squeeze_grad/ReshapeReshapeKtraining/RMSprop/gradients/batch_normalization/cond/Switch_1_grad/cond_gradItraining/RMSprop/gradients/batch_normalization/moments/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes
:	?*6
_class,
*(loc:@batch_normalization/moments/Squeeze
?
Gtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/ShapeConst*
valueB:?*
dtype0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization/batchnorm/add
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization/batchnorm/add
?
Wtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsGtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/ShapeItraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*4
_class*
(&loc:@batch_normalization/batchnorm/add
?
Etraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/SumSumMtraining/RMSprop/gradients/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradWtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes	
:?*

Tidx0*4
_class*
(&loc:@batch_normalization/batchnorm/add
?
Itraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/ReshapeReshapeEtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/SumGtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Shape*
T0*
Tshape0*
_output_shapes	
:?*4
_class*
(&loc:@batch_normalization/batchnorm/add
?
Gtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Sum_1SumMtraining/RMSprop/gradients/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradYtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*4
_class*
(&loc:@batch_normalization/batchnorm/add
?
Ktraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Sum_1Itraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization/batchnorm/add
?
Jtraining/RMSprop/gradients/batch_normalization/cond_1/Merge_grad/cond_gradSwitchItraining/RMSprop/gradients/batch_normalization/batchnorm/add_grad/Reshape"batch_normalization/cond_1/pred_id*
T0*"
_output_shapes
:?:?*4
_class*
(&loc:@batch_normalization/batchnorm/add
?
#training/RMSprop/gradients/Switch_3Switch%batch_normalization/moments/Squeeze_1"batch_normalization/cond_1/pred_id*
T0*"
_output_shapes
:?:?*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
%training/RMSprop/gradients/Identity_3Identity#training/RMSprop/gradients/Switch_3*
T0*
_output_shapes	
:?*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
"training/RMSprop/gradients/Shape_4Shape#training/RMSprop/gradients/Switch_3*
T0*
out_type0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
(training/RMSprop/gradients/zeros_3/ConstConst&^training/RMSprop/gradients/Identity_3*
valueB
 *    *
dtype0*
_output_shapes
: *8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
"training/RMSprop/gradients/zeros_3Fill"training/RMSprop/gradients/Shape_4(training/RMSprop/gradients/zeros_3/Const*
T0*
_output_shapes	
:?*

index_type0*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
Mtraining/RMSprop/gradients/batch_normalization/cond_1/Switch_1_grad/cond_gradMerge"training/RMSprop/gradients/zeros_3Ltraining/RMSprop/gradients/batch_normalization/cond_1/Merge_grad/cond_grad:1*
T0*
N*
_output_shapes
	:?: *8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
Ktraining/RMSprop/gradients/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
Mtraining/RMSprop/gradients/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeMtraining/RMSprop/gradients/batch_normalization/cond_1/Switch_1_grad/cond_gradKtraining/RMSprop/gradients/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:	?*8
_class.
,*loc:@batch_normalization/moments/Squeeze_1
?
Jtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ShapeShape-batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Itraining/RMSprop/gradients/batch_normalization/moments/variance_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Htraining/RMSprop/gradients/batch_normalization/moments/variance_grad/addAdd6batch_normalization/moments/variance/reduction_indicesItraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Size*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Htraining/RMSprop/gradients/batch_normalization/moments/variance_grad/modFloorModHtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/addItraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Size*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ptraining/RMSprop/gradients/batch_normalization/moments/variance_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Ptraining/RMSprop/gradients/batch_normalization/moments/variance_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Jtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/rangeRangePtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/range/startItraining/RMSprop/gradients/batch_normalization/moments/variance_grad/SizePtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/range/delta*
_output_shapes
:*

Tidx0*7
_class-
+)loc:@batch_normalization/moments/variance
?
Otraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Itraining/RMSprop/gradients/batch_normalization/moments/variance_grad/FillFillLtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Shape_1Otraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Fill/value*
T0*
_output_shapes
:*

index_type0*7
_class-
+)loc:@batch_normalization/moments/variance
?
Rtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/DynamicStitchDynamicStitchJtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/rangeHtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/modJtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ShapeItraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Fill*
T0*
N*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ntraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/MaximumMaximumRtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/DynamicStitchNtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Maximum/y*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Mtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/floordivFloorDivJtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ShapeLtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Maximum*
T0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ReshapeReshapeMtraining/RMSprop/gradients/batch_normalization/moments/Squeeze_1_grad/ReshapeRtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????*7
_class-
+)loc:@batch_normalization/moments/variance
?
Itraining/RMSprop/gradients/batch_normalization/moments/variance_grad/TileTileLtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ReshapeMtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/floordiv*
T0*0
_output_shapes
:??????????????????*

Tmultiples0*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Shape_2Shape-batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Shape_3Const*
valueB"      *
dtype0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Jtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Itraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ProdProdLtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Shape_2Jtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ktraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Prod_1ProdLtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Shape_3Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ptraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Ntraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Maximum_1MaximumKtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Prod_1Ptraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Maximum_1/y*
T0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Otraining/RMSprop/gradients/batch_normalization/moments/variance_grad/floordiv_1FloorDivItraining/RMSprop/gradients/batch_normalization/moments/variance_grad/ProdNtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Maximum_1*
T0*
_output_shapes
: *7
_class-
+)loc:@batch_normalization/moments/variance
?
Itraining/RMSprop/gradients/batch_normalization/moments/variance_grad/CastCastOtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/floordiv_1*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0*7
_class-
+)loc:@batch_normalization/moments/variance
?
Ltraining/RMSprop/gradients/batch_normalization/moments/variance_grad/truedivRealDivItraining/RMSprop/gradients/batch_normalization/moments/variance_grad/TileItraining/RMSprop/gradients/batch_normalization/moments/variance_grad/Cast*
T0*(
_output_shapes
:??????????*7
_class-
+)loc:@batch_normalization/moments/variance
?
Straining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/ShapeShapeconcatenate/concat*
T0*
out_type0*
_output_shapes
:*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Utraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
ctraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsStraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/ShapeUtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Ttraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/scalarConstM^training/RMSprop/gradients/batch_normalization/moments/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: *@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Qtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/mulMulTtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/scalarLtraining/RMSprop/gradients/batch_normalization/moments/variance_grad/truediv*
T0*(
_output_shapes
:??????????*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Qtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/subSubconcatenate/concat(batch_normalization/moments/StopGradientM^training/RMSprop/gradients/batch_normalization/moments/variance_grad/truediv*
T0*(
_output_shapes
:??????????*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Straining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/mul_1MulQtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/mulQtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/sub*
T0*(
_output_shapes
:??????????*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Qtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/SumSumStraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/mul_1ctraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Utraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/ReshapeReshapeQtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/SumStraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Straining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Sum_1SumStraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/mul_1etraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Wtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Reshape_1ReshapeStraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Sum_1Utraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	?*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Qtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/NegNegWtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes
:	?*@
_class6
42loc:@batch_normalization/moments/SquaredDifference
?
Ftraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ShapeShapeconcatenate/concat*
T0*
out_type0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Etraining/RMSprop/gradients/batch_normalization/moments/mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Dtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/addAdd2batch_normalization/moments/mean/reduction_indicesEtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Size*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Dtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/modFloorModDtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/addEtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Size*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Ltraining/RMSprop/gradients/batch_normalization/moments/mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Ltraining/RMSprop/gradients/batch_normalization/moments/mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Ftraining/RMSprop/gradients/batch_normalization/moments/mean_grad/rangeRangeLtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/range/startEtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/SizeLtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/range/delta*
_output_shapes
:*

Tidx0*3
_class)
'%loc:@batch_normalization/moments/mean
?
Ktraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Etraining/RMSprop/gradients/batch_normalization/moments/mean_grad/FillFillHtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Shape_1Ktraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Fill/value*
T0*
_output_shapes
:*

index_type0*3
_class)
'%loc:@batch_normalization/moments/mean
?
Ntraining/RMSprop/gradients/batch_normalization/moments/mean_grad/DynamicStitchDynamicStitchFtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/rangeDtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/modFtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ShapeEtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Fill*
T0*
N*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Jtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/MaximumMaximumNtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/DynamicStitchJtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Maximum/y*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Itraining/RMSprop/gradients/batch_normalization/moments/mean_grad/floordivFloorDivFtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ShapeHtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Maximum*
T0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ReshapeReshapeKtraining/RMSprop/gradients/batch_normalization/moments/Squeeze_grad/ReshapeNtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:??????????????????*3
_class)
'%loc:@batch_normalization/moments/mean
?
Etraining/RMSprop/gradients/batch_normalization/moments/mean_grad/TileTileHtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ReshapeItraining/RMSprop/gradients/batch_normalization/moments/mean_grad/floordiv*
T0*0
_output_shapes
:??????????????????*

Tmultiples0*3
_class)
'%loc:@batch_normalization/moments/mean
?
Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Shape_2Shapeconcatenate/concat*
T0*
out_type0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Shape_3Const*
valueB"      *
dtype0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Ftraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Etraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ProdProdHtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Shape_2Ftraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*3
_class)
'%loc:@batch_normalization/moments/mean
?
Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:*3
_class)
'%loc:@batch_normalization/moments/mean
?
Gtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Prod_1ProdHtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Shape_3Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*3
_class)
'%loc:@batch_normalization/moments/mean
?
Ltraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Jtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Maximum_1MaximumGtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Prod_1Ltraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Maximum_1/y*
T0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Ktraining/RMSprop/gradients/batch_normalization/moments/mean_grad/floordiv_1FloorDivEtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/ProdJtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Maximum_1*
T0*
_output_shapes
: *3
_class)
'%loc:@batch_normalization/moments/mean
?
Etraining/RMSprop/gradients/batch_normalization/moments/mean_grad/CastCastKtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/floordiv_1*

DstT0*
_output_shapes
: *
Truncate( *

SrcT0*3
_class)
'%loc:@batch_normalization/moments/mean
?
Htraining/RMSprop/gradients/batch_normalization/moments/mean_grad/truedivRealDivEtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/TileEtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/Cast*
T0*(
_output_shapes
:??????????*3
_class)
'%loc:@batch_normalization/moments/mean
?
!training/RMSprop/gradients/AddN_3AddNKtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_1_grad/ReshapeUtraining/RMSprop/gradients/batch_normalization/moments/SquaredDifference_grad/ReshapeHtraining/RMSprop/gradients/batch_normalization/moments/mean_grad/truediv*
T0*
N*(
_output_shapes
:??????????*6
_class,
*(loc:@batch_normalization/batchnorm/mul_1
?
7training/RMSprop/gradients/concatenate/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: *%
_class
loc:@concatenate/concat
?
6training/RMSprop/gradients/concatenate/concat_grad/modFloorModconcatenate/concat/axis7training/RMSprop/gradients/concatenate/concat_grad/Rank*
T0*
_output_shapes
: *%
_class
loc:@concatenate/concat
?
8training/RMSprop/gradients/concatenate/concat_grad/ShapeShapeglobal_max_pooling1d_1/Max*
T0*
out_type0*
_output_shapes
:*%
_class
loc:@concatenate/concat
?
9training/RMSprop/gradients/concatenate/concat_grad/ShapeNShapeNglobal_max_pooling1d_1/Maxglobal_max_pooling1d/Max*
T0*
out_type0*
N* 
_output_shapes
::*%
_class
loc:@concatenate/concat
?
?training/RMSprop/gradients/concatenate/concat_grad/ConcatOffsetConcatOffset6training/RMSprop/gradients/concatenate/concat_grad/mod9training/RMSprop/gradients/concatenate/concat_grad/ShapeN;training/RMSprop/gradients/concatenate/concat_grad/ShapeN:1*
N* 
_output_shapes
::*%
_class
loc:@concatenate/concat
?
8training/RMSprop/gradients/concatenate/concat_grad/SliceSlice!training/RMSprop/gradients/AddN_3?training/RMSprop/gradients/concatenate/concat_grad/ConcatOffset9training/RMSprop/gradients/concatenate/concat_grad/ShapeN*
Index0*
T0*(
_output_shapes
:??????????*%
_class
loc:@concatenate/concat
?
:training/RMSprop/gradients/concatenate/concat_grad/Slice_1Slice!training/RMSprop/gradients/AddN_3Atraining/RMSprop/gradients/concatenate/concat_grad/ConcatOffset:1;training/RMSprop/gradients/concatenate/concat_grad/ShapeN:1*
Index0*
T0*(
_output_shapes
:??????????*%
_class
loc:@concatenate/concat
?
@training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/ShapeShapeconv1d_1/Relu*
T0*
out_type0*
_output_shapes
:*-
_class#
!loc:@global_max_pooling1d_1/Max
?
?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *-
_class#
!loc:@global_max_pooling1d_1/Max
?
>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/addAdd,global_max_pooling1d_1/Max/reduction_indices?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Size*
T0*
_output_shapes
: *-
_class#
!loc:@global_max_pooling1d_1/Max
?
>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/modFloorMod>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/add?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Size*
T0*
_output_shapes
: *-
_class#
!loc:@global_max_pooling1d_1/Max
?
Btraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *-
_class#
!loc:@global_max_pooling1d_1/Max
?
Ftraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *-
_class#
!loc:@global_max_pooling1d_1/Max
?
Ftraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *-
_class#
!loc:@global_max_pooling1d_1/Max
?
@training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/rangeRangeFtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/range/start?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/SizeFtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/range/delta*
_output_shapes
:*

Tidx0*-
_class#
!loc:@global_max_pooling1d_1/Max
?
Etraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *-
_class#
!loc:@global_max_pooling1d_1/Max
?
?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/FillFillBtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Shape_1Etraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*-
_class#
!loc:@global_max_pooling1d_1/Max
?
Htraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/DynamicStitchDynamicStitch@training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/range>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/mod@training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Shape?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Fill*
T0*
N*
_output_shapes
:*-
_class#
!loc:@global_max_pooling1d_1/Max
?
Btraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/ReshapeReshapeglobal_max_pooling1d_1/MaxHtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/DynamicStitch*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????*-
_class#
!loc:@global_max_pooling1d_1/Max
?
Dtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Reshape_1Reshape8training/RMSprop/gradients/concatenate/concat_grad/SliceHtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/DynamicStitch*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????*-
_class#
!loc:@global_max_pooling1d_1/Max
?
@training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/EqualEqualBtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Reshapeconv1d_1/Relu*
T0*-
_output_shapes
:???????????*-
_class#
!loc:@global_max_pooling1d_1/Max
?
?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/CastCast@training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Equal*

DstT0*-
_output_shapes
:???????????*
Truncate( *

SrcT0
*-
_class#
!loc:@global_max_pooling1d_1/Max
?
>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/SumSum?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Cast,global_max_pooling1d_1/Max/reduction_indices*
	keep_dims( *
T0*(
_output_shapes
:??????????*

Tidx0*-
_class#
!loc:@global_max_pooling1d_1/Max
?
Dtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Reshape_2Reshape>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/SumHtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/DynamicStitch*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????*-
_class#
!loc:@global_max_pooling1d_1/Max
?
>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/divRealDiv?training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/CastDtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Reshape_2*
T0*-
_output_shapes
:???????????*-
_class#
!loc:@global_max_pooling1d_1/Max
?
>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/mulMul>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/divDtraining/RMSprop/gradients/global_max_pooling1d_1/Max_grad/Reshape_1*
T0*-
_output_shapes
:???????????*-
_class#
!loc:@global_max_pooling1d_1/Max
?
>training/RMSprop/gradients/global_max_pooling1d/Max_grad/ShapeShapeconv1d/Relu*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@global_max_pooling1d/Max
?
=training/RMSprop/gradients/global_max_pooling1d/Max_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@global_max_pooling1d/Max
?
<training/RMSprop/gradients/global_max_pooling1d/Max_grad/addAdd*global_max_pooling1d/Max/reduction_indices=training/RMSprop/gradients/global_max_pooling1d/Max_grad/Size*
T0*
_output_shapes
: *+
_class!
loc:@global_max_pooling1d/Max
?
<training/RMSprop/gradients/global_max_pooling1d/Max_grad/modFloorMod<training/RMSprop/gradients/global_max_pooling1d/Max_grad/add=training/RMSprop/gradients/global_max_pooling1d/Max_grad/Size*
T0*
_output_shapes
: *+
_class!
loc:@global_max_pooling1d/Max
?
@training/RMSprop/gradients/global_max_pooling1d/Max_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: *+
_class!
loc:@global_max_pooling1d/Max
?
Dtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *+
_class!
loc:@global_max_pooling1d/Max
?
Dtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@global_max_pooling1d/Max
?
>training/RMSprop/gradients/global_max_pooling1d/Max_grad/rangeRangeDtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/range/start=training/RMSprop/gradients/global_max_pooling1d/Max_grad/SizeDtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/range/delta*
_output_shapes
:*

Tidx0*+
_class!
loc:@global_max_pooling1d/Max
?
Ctraining/RMSprop/gradients/global_max_pooling1d/Max_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: *+
_class!
loc:@global_max_pooling1d/Max
?
=training/RMSprop/gradients/global_max_pooling1d/Max_grad/FillFill@training/RMSprop/gradients/global_max_pooling1d/Max_grad/Shape_1Ctraining/RMSprop/gradients/global_max_pooling1d/Max_grad/Fill/value*
T0*
_output_shapes
: *

index_type0*+
_class!
loc:@global_max_pooling1d/Max
?
Ftraining/RMSprop/gradients/global_max_pooling1d/Max_grad/DynamicStitchDynamicStitch>training/RMSprop/gradients/global_max_pooling1d/Max_grad/range<training/RMSprop/gradients/global_max_pooling1d/Max_grad/mod>training/RMSprop/gradients/global_max_pooling1d/Max_grad/Shape=training/RMSprop/gradients/global_max_pooling1d/Max_grad/Fill*
T0*
N*
_output_shapes
:*+
_class!
loc:@global_max_pooling1d/Max
?
@training/RMSprop/gradients/global_max_pooling1d/Max_grad/ReshapeReshapeglobal_max_pooling1d/MaxFtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/DynamicStitch*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????*+
_class!
loc:@global_max_pooling1d/Max
?
Btraining/RMSprop/gradients/global_max_pooling1d/Max_grad/Reshape_1Reshape:training/RMSprop/gradients/concatenate/concat_grad/Slice_1Ftraining/RMSprop/gradients/global_max_pooling1d/Max_grad/DynamicStitch*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????*+
_class!
loc:@global_max_pooling1d/Max
?
>training/RMSprop/gradients/global_max_pooling1d/Max_grad/EqualEqual@training/RMSprop/gradients/global_max_pooling1d/Max_grad/Reshapeconv1d/Relu*
T0*-
_output_shapes
:???????????*+
_class!
loc:@global_max_pooling1d/Max
?
=training/RMSprop/gradients/global_max_pooling1d/Max_grad/CastCast>training/RMSprop/gradients/global_max_pooling1d/Max_grad/Equal*

DstT0*-
_output_shapes
:???????????*
Truncate( *

SrcT0
*+
_class!
loc:@global_max_pooling1d/Max
?
<training/RMSprop/gradients/global_max_pooling1d/Max_grad/SumSum=training/RMSprop/gradients/global_max_pooling1d/Max_grad/Cast*global_max_pooling1d/Max/reduction_indices*
	keep_dims( *
T0*(
_output_shapes
:??????????*

Tidx0*+
_class!
loc:@global_max_pooling1d/Max
?
Btraining/RMSprop/gradients/global_max_pooling1d/Max_grad/Reshape_2Reshape<training/RMSprop/gradients/global_max_pooling1d/Max_grad/SumFtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/DynamicStitch*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????*+
_class!
loc:@global_max_pooling1d/Max
?
<training/RMSprop/gradients/global_max_pooling1d/Max_grad/divRealDiv=training/RMSprop/gradients/global_max_pooling1d/Max_grad/CastBtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/Reshape_2*
T0*-
_output_shapes
:???????????*+
_class!
loc:@global_max_pooling1d/Max
?
<training/RMSprop/gradients/global_max_pooling1d/Max_grad/mulMul<training/RMSprop/gradients/global_max_pooling1d/Max_grad/divBtraining/RMSprop/gradients/global_max_pooling1d/Max_grad/Reshape_1*
T0*-
_output_shapes
:???????????*+
_class!
loc:@global_max_pooling1d/Max
?
6training/RMSprop/gradients/conv1d_1/Relu_grad/ReluGradReluGrad>training/RMSprop/gradients/global_max_pooling1d_1/Max_grad/mulconv1d_1/Relu*
T0*-
_output_shapes
:???????????* 
_class
loc:@conv1d_1/Relu
?
4training/RMSprop/gradients/conv1d/Relu_grad/ReluGradReluGrad<training/RMSprop/gradients/global_max_pooling1d/Max_grad/mulconv1d/Relu*
T0*-
_output_shapes
:???????????*
_class
loc:@conv1d/Relu
?
<training/RMSprop/gradients/conv1d_1/BiasAdd_grad/BiasAddGradBiasAddGrad6training/RMSprop/gradients/conv1d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?*#
_class
loc:@conv1d_1/BiasAdd
?
:training/RMSprop/gradients/conv1d/BiasAdd_grad/BiasAddGradBiasAddGrad4training/RMSprop/gradients/conv1d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:?*!
_class
loc:@conv1d/BiasAdd
?
=training/RMSprop/gradients/conv1d_1/conv1d/Squeeze_grad/ShapeShapeconv1d_1/conv1d/Conv2D*
T0*
out_type0*
_output_shapes
:**
_class 
loc:@conv1d_1/conv1d/Squeeze
?
?training/RMSprop/gradients/conv1d_1/conv1d/Squeeze_grad/ReshapeReshape6training/RMSprop/gradients/conv1d_1/Relu_grad/ReluGrad=training/RMSprop/gradients/conv1d_1/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*1
_output_shapes
:???????????**
_class 
loc:@conv1d_1/conv1d/Squeeze
?
;training/RMSprop/gradients/conv1d/conv1d/Squeeze_grad/ShapeShapeconv1d/conv1d/Conv2D*
T0*
out_type0*
_output_shapes
:*(
_class
loc:@conv1d/conv1d/Squeeze
?
=training/RMSprop/gradients/conv1d/conv1d/Squeeze_grad/ReshapeReshape4training/RMSprop/gradients/conv1d/Relu_grad/ReluGrad;training/RMSprop/gradients/conv1d/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*1
_output_shapes
:???????????*(
_class
loc:@conv1d/conv1d/Squeeze
?
=training/RMSprop/gradients/conv1d_1/conv1d/Conv2D_grad/ShapeNShapeNconv1d_1/conv1d/ExpandDimsconv1d_1/conv1d/ExpandDims_1*
T0*
out_type0*
N* 
_output_shapes
::*)
_class
loc:@conv1d_1/conv1d/Conv2D
?
Jtraining/RMSprop/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=training/RMSprop/gradients/conv1d_1/conv1d/Conv2D_grad/ShapeNconv1d_1/conv1d/ExpandDims_1?training/RMSprop/gradients/conv1d_1/conv1d/Squeeze_grad/Reshape*
strides
*
	dilations
*)
_class
loc:@conv1d_1/conv1d/Conv2D*
T0*
data_formatNHWC*
paddingVALID*1
_output_shapes
:???????????*
use_cudnn_on_gpu(
?
Ktraining/RMSprop/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1d_1/conv1d/ExpandDims?training/RMSprop/gradients/conv1d_1/conv1d/Conv2D_grad/ShapeN:1?training/RMSprop/gradients/conv1d_1/conv1d/Squeeze_grad/Reshape*
strides
*
	dilations
*)
_class
loc:@conv1d_1/conv1d/Conv2D*
T0*
data_formatNHWC*
paddingVALID*(
_output_shapes
:??*
use_cudnn_on_gpu(
?
;training/RMSprop/gradients/conv1d/conv1d/Conv2D_grad/ShapeNShapeNconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
T0*
out_type0*
N* 
_output_shapes
::*'
_class
loc:@conv1d/conv1d/Conv2D
?
Htraining/RMSprop/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput;training/RMSprop/gradients/conv1d/conv1d/Conv2D_grad/ShapeNconv1d/conv1d/ExpandDims_1=training/RMSprop/gradients/conv1d/conv1d/Squeeze_grad/Reshape*
strides
*
	dilations
*'
_class
loc:@conv1d/conv1d/Conv2D*
T0*
data_formatNHWC*
paddingVALID*1
_output_shapes
:???????????*
use_cudnn_on_gpu(
?
Itraining/RMSprop/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1d/conv1d/ExpandDims=training/RMSprop/gradients/conv1d/conv1d/Conv2D_grad/ShapeN:1=training/RMSprop/gradients/conv1d/conv1d/Squeeze_grad/Reshape*
strides
*
	dilations
*'
_class
loc:@conv1d/conv1d/Conv2D*
T0*
data_formatNHWC*
paddingVALID*(
_output_shapes
:??*
use_cudnn_on_gpu(
?
@training/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_grad/ShapeShape%embedding/embedding_lookup/Identity_2*
T0*
out_type0*
_output_shapes
:*-
_class#
!loc:@conv1d_1/conv1d/ExpandDims
?
Btraining/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_grad/ReshapeReshapeJtraining/RMSprop/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropInput@training/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_grad/Shape*
T0*
Tshape0*-
_output_shapes
:???????????*-
_class#
!loc:@conv1d_1/conv1d/ExpandDims
?
Btraining/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:*/
_class%
#!loc:@conv1d_1/conv1d/ExpandDims_1
?
Dtraining/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_1_grad/ReshapeReshapeKtraining/RMSprop/gradients/conv1d_1/conv1d/Conv2D_grad/Conv2DBackpropFilterBtraining/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*$
_output_shapes
:??*/
_class%
#!loc:@conv1d_1/conv1d/ExpandDims_1
?
>training/RMSprop/gradients/conv1d/conv1d/ExpandDims_grad/ShapeShape%embedding/embedding_lookup/Identity_2*
T0*
out_type0*
_output_shapes
:*+
_class!
loc:@conv1d/conv1d/ExpandDims
?
@training/RMSprop/gradients/conv1d/conv1d/ExpandDims_grad/ReshapeReshapeHtraining/RMSprop/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropInput>training/RMSprop/gradients/conv1d/conv1d/ExpandDims_grad/Shape*
T0*
Tshape0*-
_output_shapes
:???????????*+
_class!
loc:@conv1d/conv1d/ExpandDims
?
@training/RMSprop/gradients/conv1d/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:*-
_class#
!loc:@conv1d/conv1d/ExpandDims_1
?
Btraining/RMSprop/gradients/conv1d/conv1d/ExpandDims_1_grad/ReshapeReshapeItraining/RMSprop/gradients/conv1d/conv1d/Conv2D_grad/Conv2DBackpropFilter@training/RMSprop/gradients/conv1d/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*$
_output_shapes
:??*-
_class#
!loc:@conv1d/conv1d/ExpandDims_1
?
!training/RMSprop/gradients/AddN_4AddNBtraining/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_grad/Reshape@training/RMSprop/gradients/conv1d/conv1d/ExpandDims_grad/Reshape*
T0*
N*-
_output_shapes
:???????????*-
_class#
!loc:@conv1d_1/conv1d/ExpandDims
?
Htraining/RMSprop/gradients/embedding/embedding_lookup_grad/VariableShapeVariableShapeembedding/embeddings*
out_type0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
?training/RMSprop/gradients/embedding/embedding_lookup_grad/SizeSizeFeatures*
T0*
out_type0*
_output_shapes
: *A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Itraining/RMSprop/gradients/embedding/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: *A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Etraining/RMSprop/gradients/embedding/embedding_lookup_grad/ExpandDims
ExpandDims?training/RMSprop/gradients/embedding/embedding_lookup_grad/SizeItraining/RMSprop/gradients/embedding/embedding_lookup_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Ntraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Ptraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Ptraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Htraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_sliceStridedSliceHtraining/RMSprop/gradients/embedding/embedding_lookup_grad/VariableShapeNtraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_slice/stackPtraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_slice/stack_1Ptraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_slice/stack_2*
Index0*
end_mask*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp*
T0*
shrink_axis_mask *
new_axis_mask *

begin_mask *
_output_shapes
:*
ellipsis_mask 
?
Ftraining/RMSprop/gradients/embedding/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: *A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Atraining/RMSprop/gradients/embedding/embedding_lookup_grad/concatConcatV2Etraining/RMSprop/gradients/embedding/embedding_lookup_grad/ExpandDimsHtraining/RMSprop/gradients/embedding/embedding_lookup_grad/strided_sliceFtraining/RMSprop/gradients/embedding/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Btraining/RMSprop/gradients/embedding/embedding_lookup_grad/ReshapeReshape!training/RMSprop/gradients/AddN_4Atraining/RMSprop/gradients/embedding/embedding_lookup_grad/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
?
Dtraining/RMSprop/gradients/embedding/embedding_lookup_grad/Reshape_1ReshapeFeaturesEtraining/RMSprop/gradients/embedding/embedding_lookup_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:?????????*A
_class7
53loc:@embedding/embedding_lookup/Read/ReadVariableOp
w
&training/RMSprop/zeros/shape_as_tensorConst*
valueB"X     *
dtype0*
_output_shapes
:
a
training/RMSprop/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/RMSprop/zerosFill&training/RMSprop/zeros/shape_as_tensortraining/RMSprop/zeros/Const*
T0* 
_output_shapes
:
??*

index_type0
?
training/RMSprop/VariableVarHandleOp**
shared_nametraining/RMSprop/Variable*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
: *
dtype0*
	container *
shape:
??
?
:training/RMSprop/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable*
_output_shapes
: 
?
 training/RMSprop/Variable/AssignAssignVariableOptraining/RMSprop/Variabletraining/RMSprop/zeros*
dtype0*,
_class"
 loc:@training/RMSprop/Variable
?
-training/RMSprop/Variable/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable*
dtype0* 
_output_shapes
:
??*,
_class"
 loc:@training/RMSprop/Variable
}
(training/RMSprop/zeros_1/shape_as_tensorConst*!
valueB"         *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/RMSprop/zeros_1Fill(training/RMSprop/zeros_1/shape_as_tensortraining/RMSprop/zeros_1/Const*
T0*$
_output_shapes
:??*

index_type0
?
training/RMSprop/Variable_1VarHandleOp*,
shared_nametraining/RMSprop/Variable_1*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
: *
dtype0*
	container *
shape:??
?
<training/RMSprop/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_1*
_output_shapes
: 
?
"training/RMSprop/Variable_1/AssignAssignVariableOptraining/RMSprop/Variable_1training/RMSprop/zeros_1*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_1
?
/training/RMSprop/Variable_1/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_1*
dtype0*$
_output_shapes
:??*.
_class$
" loc:@training/RMSprop/Variable_1
g
training/RMSprop/zeros_2Const*
valueB?*    *
dtype0*
_output_shapes	
:?
?
training/RMSprop/Variable_2VarHandleOp*,
shared_nametraining/RMSprop/Variable_2*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes
: *
dtype0*
	container *
shape:?
?
<training/RMSprop/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_2*
_output_shapes
: 
?
"training/RMSprop/Variable_2/AssignAssignVariableOptraining/RMSprop/Variable_2training/RMSprop/zeros_2*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_2
?
/training/RMSprop/Variable_2/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_2*
dtype0*
_output_shapes	
:?*.
_class$
" loc:@training/RMSprop/Variable_2
}
(training/RMSprop/zeros_3/shape_as_tensorConst*!
valueB"         *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/RMSprop/zeros_3Fill(training/RMSprop/zeros_3/shape_as_tensortraining/RMSprop/zeros_3/Const*
T0*$
_output_shapes
:??*

index_type0
?
training/RMSprop/Variable_3VarHandleOp*,
shared_nametraining/RMSprop/Variable_3*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
: *
dtype0*
	container *
shape:??
?
<training/RMSprop/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_3*
_output_shapes
: 
?
"training/RMSprop/Variable_3/AssignAssignVariableOptraining/RMSprop/Variable_3training/RMSprop/zeros_3*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_3
?
/training/RMSprop/Variable_3/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_3*
dtype0*$
_output_shapes
:??*.
_class$
" loc:@training/RMSprop/Variable_3
g
training/RMSprop/zeros_4Const*
valueB?*    *
dtype0*
_output_shapes	
:?
?
training/RMSprop/Variable_4VarHandleOp*,
shared_nametraining/RMSprop/Variable_4*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes
: *
dtype0*
	container *
shape:?
?
<training/RMSprop/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_4*
_output_shapes
: 
?
"training/RMSprop/Variable_4/AssignAssignVariableOptraining/RMSprop/Variable_4training/RMSprop/zeros_4*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_4
?
/training/RMSprop/Variable_4/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_4*
dtype0*
_output_shapes	
:?*.
_class$
" loc:@training/RMSprop/Variable_4
s
(training/RMSprop/zeros_5/shape_as_tensorConst*
valueB:?*
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/RMSprop/zeros_5Fill(training/RMSprop/zeros_5/shape_as_tensortraining/RMSprop/zeros_5/Const*
T0*
_output_shapes	
:?*

index_type0
?
training/RMSprop/Variable_5VarHandleOp*,
shared_nametraining/RMSprop/Variable_5*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
: *
dtype0*
	container *
shape:?
?
<training/RMSprop/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_5*
_output_shapes
: 
?
"training/RMSprop/Variable_5/AssignAssignVariableOptraining/RMSprop/Variable_5training/RMSprop/zeros_5*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_5
?
/training/RMSprop/Variable_5/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_5*
dtype0*
_output_shapes	
:?*.
_class$
" loc:@training/RMSprop/Variable_5
s
(training/RMSprop/zeros_6/shape_as_tensorConst*
valueB:?*
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/RMSprop/zeros_6Fill(training/RMSprop/zeros_6/shape_as_tensortraining/RMSprop/zeros_6/Const*
T0*
_output_shapes	
:?*

index_type0
?
training/RMSprop/Variable_6VarHandleOp*,
shared_nametraining/RMSprop/Variable_6*.
_class$
" loc:@training/RMSprop/Variable_6*
_output_shapes
: *
dtype0*
	container *
shape:?
?
<training/RMSprop/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_6*
_output_shapes
: 
?
"training/RMSprop/Variable_6/AssignAssignVariableOptraining/RMSprop/Variable_6training/RMSprop/zeros_6*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_6
?
/training/RMSprop/Variable_6/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_6*
dtype0*
_output_shapes	
:?*.
_class$
" loc:@training/RMSprop/Variable_6
y
(training/RMSprop/zeros_7/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
c
training/RMSprop/zeros_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
training/RMSprop/zeros_7Fill(training/RMSprop/zeros_7/shape_as_tensortraining/RMSprop/zeros_7/Const*
T0*
_output_shapes
:	?*

index_type0
?
training/RMSprop/Variable_7VarHandleOp*,
shared_nametraining/RMSprop/Variable_7*.
_class$
" loc:@training/RMSprop/Variable_7*
_output_shapes
: *
dtype0*
	container *
shape:	?
?
<training/RMSprop/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_7*
_output_shapes
: 
?
"training/RMSprop/Variable_7/AssignAssignVariableOptraining/RMSprop/Variable_7training/RMSprop/zeros_7*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_7
?
/training/RMSprop/Variable_7/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_7*
dtype0*
_output_shapes
:	?*.
_class$
" loc:@training/RMSprop/Variable_7
e
training/RMSprop/zeros_8Const*
valueB*    *
dtype0*
_output_shapes
:
?
training/RMSprop/Variable_8VarHandleOp*,
shared_nametraining/RMSprop/Variable_8*.
_class$
" loc:@training/RMSprop/Variable_8*
_output_shapes
: *
dtype0*
	container *
shape:
?
<training/RMSprop/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/RMSprop/Variable_8*
_output_shapes
: 
?
"training/RMSprop/Variable_8/AssignAssignVariableOptraining/RMSprop/Variable_8training/RMSprop/zeros_8*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_8
?
/training/RMSprop/Variable_8/Read/ReadVariableOpReadVariableOptraining/RMSprop/Variable_8*
dtype0*
_output_shapes
:*.
_class$
" loc:@training/RMSprop/Variable_8
X
training/RMSprop/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
t
$training/RMSprop/AssignAddVariableOpAssignAddVariableOpRMSprop/iterationstraining/RMSprop/Const*
dtype0	
?
training/RMSprop/ReadVariableOpReadVariableOpRMSprop/iterations%^training/RMSprop/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
e
!training/RMSprop/ReadVariableOp_1ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

#training/RMSprop/mul/ReadVariableOpReadVariableOptraining/RMSprop/Variable*
dtype0* 
_output_shapes
:
??
?
training/RMSprop/mulMul!training/RMSprop/ReadVariableOp_1#training/RMSprop/mul/ReadVariableOp*
T0* 
_output_shapes
:
??
e
!training/RMSprop/ReadVariableOp_2ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
[
training/RMSprop/sub/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
w
training/RMSprop/subSubtraining/RMSprop/sub/x!training/RMSprop/ReadVariableOp_2*
T0*
_output_shapes
: 
u
+training/RMSprop/Square/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-training/RMSprop/Square/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-training/RMSprop/Square/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
%training/RMSprop/Square/strided_sliceStridedSliceHtraining/RMSprop/gradients/embedding/embedding_lookup_grad/VariableShape+training/RMSprop/Square/strided_slice/stack-training/RMSprop/Square/strided_slice/stack_1-training/RMSprop/Square/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 
?
training/RMSprop/Square/xUnsortedSegmentSumBtraining/RMSprop/gradients/embedding/embedding_lookup_grad/ReshapeDtraining/RMSprop/gradients/embedding/embedding_lookup_grad/Reshape_1%training/RMSprop/Square/strided_slice*
T0*0
_output_shapes
:??????????????????*
Tindices0*
Tnumsegments0
w
training/RMSprop/SquareSquaretraining/RMSprop/Square/x*
T0*0
_output_shapes
:??????????????????
?
training/RMSprop/mul_1Multraining/RMSprop/subtraining/RMSprop/Square*
T0*0
_output_shapes
:??????????????????
t
training/RMSprop/addAddtraining/RMSprop/multraining/RMSprop/mul_1*
T0* 
_output_shapes
:
??
s
!training/RMSprop/AssignVariableOpAssignVariableOptraining/RMSprop/Variabletraining/RMSprop/add*
dtype0
?
!training/RMSprop/ReadVariableOp_3ReadVariableOptraining/RMSprop/Variable"^training/RMSprop/AssignVariableOp*
dtype0* 
_output_shapes
:
??
d
!training/RMSprop/ReadVariableOp_4ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
t
*training/RMSprop/mul_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,training/RMSprop/mul_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,training/RMSprop/mul_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
$training/RMSprop/mul_2/strided_sliceStridedSliceHtraining/RMSprop/gradients/embedding/embedding_lookup_grad/VariableShape*training/RMSprop/mul_2/strided_slice/stack,training/RMSprop/mul_2/strided_slice/stack_1,training/RMSprop/mul_2/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*
new_axis_mask *

begin_mask *
_output_shapes
: *
ellipsis_mask 
?
training/RMSprop/mul_2/yUnsortedSegmentSumBtraining/RMSprop/gradients/embedding/embedding_lookup_grad/ReshapeDtraining/RMSprop/gradients/embedding/embedding_lookup_grad/Reshape_1$training/RMSprop/mul_2/strided_slice*
T0*0
_output_shapes
:??????????????????*
Tindices0*
Tnumsegments0
?
training/RMSprop/mul_2Mul!training/RMSprop/ReadVariableOp_4training/RMSprop/mul_2/y*
T0*0
_output_shapes
:??????????????????
]
training/RMSprop/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_2Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
&training/RMSprop/clip_by_value/MinimumMinimumtraining/RMSprop/addtraining/RMSprop/Const_2*
T0* 
_output_shapes
:
??
?
training/RMSprop/clip_by_valueMaximum&training/RMSprop/clip_by_value/Minimumtraining/RMSprop/Const_1*
T0* 
_output_shapes
:
??
h
training/RMSprop/SqrtSqrttraining/RMSprop/clip_by_value*
T0* 
_output_shapes
:
??
]
training/RMSprop/add_1/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
y
training/RMSprop/add_1Addtraining/RMSprop/Sqrttraining/RMSprop/add_1/y*
T0* 
_output_shapes
:
??
~
training/RMSprop/truedivRealDivtraining/RMSprop/mul_2training/RMSprop/add_1*
T0* 
_output_shapes
:
??
x
!training/RMSprop/ReadVariableOp_5ReadVariableOpembedding/embeddings*
dtype0* 
_output_shapes
:
??
?
training/RMSprop/sub_1Sub!training/RMSprop/ReadVariableOp_5training/RMSprop/truediv*
T0* 
_output_shapes
:
??
r
#training/RMSprop/AssignVariableOp_1AssignVariableOpembedding/embeddingstraining/RMSprop/sub_1*
dtype0
?
!training/RMSprop/ReadVariableOp_6ReadVariableOpembedding/embeddings$^training/RMSprop/AssignVariableOp_1*
dtype0* 
_output_shapes
:
??
e
!training/RMSprop/ReadVariableOp_7ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
?
%training/RMSprop/mul_3/ReadVariableOpReadVariableOptraining/RMSprop/Variable_1*
dtype0*$
_output_shapes
:??
?
training/RMSprop/mul_3Mul!training/RMSprop/ReadVariableOp_7%training/RMSprop/mul_3/ReadVariableOp*
T0*$
_output_shapes
:??
e
!training/RMSprop/ReadVariableOp_8ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_2/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
{
training/RMSprop/sub_2Subtraining/RMSprop/sub_2/x!training/RMSprop/ReadVariableOp_8*
T0*
_output_shapes
: 
?
training/RMSprop/Square_1SquareDtraining/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:??

training/RMSprop/mul_4Multraining/RMSprop/sub_2training/RMSprop/Square_1*
T0*$
_output_shapes
:??
|
training/RMSprop/add_2Addtraining/RMSprop/mul_3training/RMSprop/mul_4*
T0*$
_output_shapes
:??
y
#training/RMSprop/AssignVariableOp_2AssignVariableOptraining/RMSprop/Variable_1training/RMSprop/add_2*
dtype0
?
!training/RMSprop/ReadVariableOp_9ReadVariableOptraining/RMSprop/Variable_1$^training/RMSprop/AssignVariableOp_2*
dtype0*$
_output_shapes
:??
e
"training/RMSprop/ReadVariableOp_10ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_5Mul"training/RMSprop/ReadVariableOp_10Dtraining/RMSprop/gradients/conv1d_1/conv1d/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:??
]
training/RMSprop/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_4Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_1/MinimumMinimumtraining/RMSprop/add_2training/RMSprop/Const_4*
T0*$
_output_shapes
:??
?
 training/RMSprop/clip_by_value_1Maximum(training/RMSprop/clip_by_value_1/Minimumtraining/RMSprop/Const_3*
T0*$
_output_shapes
:??
p
training/RMSprop/Sqrt_1Sqrt training/RMSprop/clip_by_value_1*
T0*$
_output_shapes
:??
]
training/RMSprop/add_3/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 

training/RMSprop/add_3Addtraining/RMSprop/Sqrt_1training/RMSprop/add_3/y*
T0*$
_output_shapes
:??
?
training/RMSprop/truediv_1RealDivtraining/RMSprop/mul_5training/RMSprop/add_3*
T0*$
_output_shapes
:??
x
"training/RMSprop/ReadVariableOp_11ReadVariableOpconv1d_1/kernel*
dtype0*$
_output_shapes
:??
?
training/RMSprop/sub_3Sub"training/RMSprop/ReadVariableOp_11training/RMSprop/truediv_1*
T0*$
_output_shapes
:??
m
#training/RMSprop/AssignVariableOp_3AssignVariableOpconv1d_1/kerneltraining/RMSprop/sub_3*
dtype0
?
"training/RMSprop/ReadVariableOp_12ReadVariableOpconv1d_1/kernel$^training/RMSprop/AssignVariableOp_3*
dtype0*$
_output_shapes
:??
f
"training/RMSprop/ReadVariableOp_13ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
~
%training/RMSprop/mul_6/ReadVariableOpReadVariableOptraining/RMSprop/Variable_2*
dtype0*
_output_shapes	
:?
?
training/RMSprop/mul_6Mul"training/RMSprop/ReadVariableOp_13%training/RMSprop/mul_6/ReadVariableOp*
T0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_14ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_4/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_4Subtraining/RMSprop/sub_4/x"training/RMSprop/ReadVariableOp_14*
T0*
_output_shapes
: 
?
training/RMSprop/Square_2Square<training/RMSprop/gradients/conv1d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:?
v
training/RMSprop/mul_7Multraining/RMSprop/sub_4training/RMSprop/Square_2*
T0*
_output_shapes	
:?
s
training/RMSprop/add_4Addtraining/RMSprop/mul_6training/RMSprop/mul_7*
T0*
_output_shapes	
:?
y
#training/RMSprop/AssignVariableOp_4AssignVariableOptraining/RMSprop/Variable_2training/RMSprop/add_4*
dtype0
?
"training/RMSprop/ReadVariableOp_15ReadVariableOptraining/RMSprop/Variable_2$^training/RMSprop/AssignVariableOp_4*
dtype0*
_output_shapes	
:?
e
"training/RMSprop/ReadVariableOp_16ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_8Mul"training/RMSprop/ReadVariableOp_16<training/RMSprop/gradients/conv1d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:?
]
training/RMSprop/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_6Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_2/MinimumMinimumtraining/RMSprop/add_4training/RMSprop/Const_6*
T0*
_output_shapes	
:?
?
 training/RMSprop/clip_by_value_2Maximum(training/RMSprop/clip_by_value_2/Minimumtraining/RMSprop/Const_5*
T0*
_output_shapes	
:?
g
training/RMSprop/Sqrt_2Sqrt training/RMSprop/clip_by_value_2*
T0*
_output_shapes	
:?
]
training/RMSprop/add_5/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
v
training/RMSprop/add_5Addtraining/RMSprop/Sqrt_2training/RMSprop/add_5/y*
T0*
_output_shapes	
:?
{
training/RMSprop/truediv_2RealDivtraining/RMSprop/mul_8training/RMSprop/add_5*
T0*
_output_shapes	
:?
m
"training/RMSprop/ReadVariableOp_17ReadVariableOpconv1d_1/bias*
dtype0*
_output_shapes	
:?
?
training/RMSprop/sub_5Sub"training/RMSprop/ReadVariableOp_17training/RMSprop/truediv_2*
T0*
_output_shapes	
:?
k
#training/RMSprop/AssignVariableOp_5AssignVariableOpconv1d_1/biastraining/RMSprop/sub_5*
dtype0
?
"training/RMSprop/ReadVariableOp_18ReadVariableOpconv1d_1/bias$^training/RMSprop/AssignVariableOp_5*
dtype0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_19ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
?
%training/RMSprop/mul_9/ReadVariableOpReadVariableOptraining/RMSprop/Variable_3*
dtype0*$
_output_shapes
:??
?
training/RMSprop/mul_9Mul"training/RMSprop/ReadVariableOp_19%training/RMSprop/mul_9/ReadVariableOp*
T0*$
_output_shapes
:??
f
"training/RMSprop/ReadVariableOp_20ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_6/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_6Subtraining/RMSprop/sub_6/x"training/RMSprop/ReadVariableOp_20*
T0*
_output_shapes
: 
?
training/RMSprop/Square_3SquareBtraining/RMSprop/gradients/conv1d/conv1d/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:??
?
training/RMSprop/mul_10Multraining/RMSprop/sub_6training/RMSprop/Square_3*
T0*$
_output_shapes
:??
}
training/RMSprop/add_6Addtraining/RMSprop/mul_9training/RMSprop/mul_10*
T0*$
_output_shapes
:??
y
#training/RMSprop/AssignVariableOp_6AssignVariableOptraining/RMSprop/Variable_3training/RMSprop/add_6*
dtype0
?
"training/RMSprop/ReadVariableOp_21ReadVariableOptraining/RMSprop/Variable_3$^training/RMSprop/AssignVariableOp_6*
dtype0*$
_output_shapes
:??
e
"training/RMSprop/ReadVariableOp_22ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_11Mul"training/RMSprop/ReadVariableOp_22Btraining/RMSprop/gradients/conv1d/conv1d/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:??
]
training/RMSprop/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_8Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_3/MinimumMinimumtraining/RMSprop/add_6training/RMSprop/Const_8*
T0*$
_output_shapes
:??
?
 training/RMSprop/clip_by_value_3Maximum(training/RMSprop/clip_by_value_3/Minimumtraining/RMSprop/Const_7*
T0*$
_output_shapes
:??
p
training/RMSprop/Sqrt_3Sqrt training/RMSprop/clip_by_value_3*
T0*$
_output_shapes
:??
]
training/RMSprop/add_7/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 

training/RMSprop/add_7Addtraining/RMSprop/Sqrt_3training/RMSprop/add_7/y*
T0*$
_output_shapes
:??
?
training/RMSprop/truediv_3RealDivtraining/RMSprop/mul_11training/RMSprop/add_7*
T0*$
_output_shapes
:??
v
"training/RMSprop/ReadVariableOp_23ReadVariableOpconv1d/kernel*
dtype0*$
_output_shapes
:??
?
training/RMSprop/sub_7Sub"training/RMSprop/ReadVariableOp_23training/RMSprop/truediv_3*
T0*$
_output_shapes
:??
k
#training/RMSprop/AssignVariableOp_7AssignVariableOpconv1d/kerneltraining/RMSprop/sub_7*
dtype0
?
"training/RMSprop/ReadVariableOp_24ReadVariableOpconv1d/kernel$^training/RMSprop/AssignVariableOp_7*
dtype0*$
_output_shapes
:??
f
"training/RMSprop/ReadVariableOp_25ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

&training/RMSprop/mul_12/ReadVariableOpReadVariableOptraining/RMSprop/Variable_4*
dtype0*
_output_shapes	
:?
?
training/RMSprop/mul_12Mul"training/RMSprop/ReadVariableOp_25&training/RMSprop/mul_12/ReadVariableOp*
T0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_26ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
]
training/RMSprop/sub_8/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
|
training/RMSprop/sub_8Subtraining/RMSprop/sub_8/x"training/RMSprop/ReadVariableOp_26*
T0*
_output_shapes
: 
?
training/RMSprop/Square_4Square:training/RMSprop/gradients/conv1d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:?
w
training/RMSprop/mul_13Multraining/RMSprop/sub_8training/RMSprop/Square_4*
T0*
_output_shapes	
:?
u
training/RMSprop/add_8Addtraining/RMSprop/mul_12training/RMSprop/mul_13*
T0*
_output_shapes	
:?
y
#training/RMSprop/AssignVariableOp_8AssignVariableOptraining/RMSprop/Variable_4training/RMSprop/add_8*
dtype0
?
"training/RMSprop/ReadVariableOp_27ReadVariableOptraining/RMSprop/Variable_4$^training/RMSprop/AssignVariableOp_8*
dtype0*
_output_shapes	
:?
e
"training/RMSprop/ReadVariableOp_28ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_14Mul"training/RMSprop/ReadVariableOp_28:training/RMSprop/gradients/conv1d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:?
]
training/RMSprop/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_10Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_4/MinimumMinimumtraining/RMSprop/add_8training/RMSprop/Const_10*
T0*
_output_shapes	
:?
?
 training/RMSprop/clip_by_value_4Maximum(training/RMSprop/clip_by_value_4/Minimumtraining/RMSprop/Const_9*
T0*
_output_shapes	
:?
g
training/RMSprop/Sqrt_4Sqrt training/RMSprop/clip_by_value_4*
T0*
_output_shapes	
:?
]
training/RMSprop/add_9/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
v
training/RMSprop/add_9Addtraining/RMSprop/Sqrt_4training/RMSprop/add_9/y*
T0*
_output_shapes	
:?
|
training/RMSprop/truediv_4RealDivtraining/RMSprop/mul_14training/RMSprop/add_9*
T0*
_output_shapes	
:?
k
"training/RMSprop/ReadVariableOp_29ReadVariableOpconv1d/bias*
dtype0*
_output_shapes	
:?
?
training/RMSprop/sub_9Sub"training/RMSprop/ReadVariableOp_29training/RMSprop/truediv_4*
T0*
_output_shapes	
:?
i
#training/RMSprop/AssignVariableOp_9AssignVariableOpconv1d/biastraining/RMSprop/sub_9*
dtype0
?
"training/RMSprop/ReadVariableOp_30ReadVariableOpconv1d/bias$^training/RMSprop/AssignVariableOp_9*
dtype0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_31ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

&training/RMSprop/mul_15/ReadVariableOpReadVariableOptraining/RMSprop/Variable_5*
dtype0*
_output_shapes	
:?
?
training/RMSprop/mul_15Mul"training/RMSprop/ReadVariableOp_31&training/RMSprop/mul_15/ReadVariableOp*
T0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_32ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
^
training/RMSprop/sub_10/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
~
training/RMSprop/sub_10Subtraining/RMSprop/sub_10/x"training/RMSprop/ReadVariableOp_32*
T0*
_output_shapes
: 
?
training/RMSprop/Square_5SquareGtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes	
:?
x
training/RMSprop/mul_16Multraining/RMSprop/sub_10training/RMSprop/Square_5*
T0*
_output_shapes	
:?
v
training/RMSprop/add_10Addtraining/RMSprop/mul_15training/RMSprop/mul_16*
T0*
_output_shapes	
:?
{
$training/RMSprop/AssignVariableOp_10AssignVariableOptraining/RMSprop/Variable_5training/RMSprop/add_10*
dtype0
?
"training/RMSprop/ReadVariableOp_33ReadVariableOptraining/RMSprop/Variable_5%^training/RMSprop/AssignVariableOp_10*
dtype0*
_output_shapes	
:?
e
"training/RMSprop/ReadVariableOp_34ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_17Mul"training/RMSprop/ReadVariableOp_34Gtraining/RMSprop/gradients/batch_normalization/batchnorm/mul_grad/Mul_1*
T0*
_output_shapes	
:?
^
training/RMSprop/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_12Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_5/MinimumMinimumtraining/RMSprop/add_10training/RMSprop/Const_12*
T0*
_output_shapes	
:?
?
 training/RMSprop/clip_by_value_5Maximum(training/RMSprop/clip_by_value_5/Minimumtraining/RMSprop/Const_11*
T0*
_output_shapes	
:?
g
training/RMSprop/Sqrt_5Sqrt training/RMSprop/clip_by_value_5*
T0*
_output_shapes	
:?
^
training/RMSprop/add_11/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
x
training/RMSprop/add_11Addtraining/RMSprop/Sqrt_5training/RMSprop/add_11/y*
T0*
_output_shapes	
:?
}
training/RMSprop/truediv_5RealDivtraining/RMSprop/mul_17training/RMSprop/add_11*
T0*
_output_shapes	
:?
y
"training/RMSprop/ReadVariableOp_35ReadVariableOpbatch_normalization/gamma*
dtype0*
_output_shapes	
:?
?
training/RMSprop/sub_11Sub"training/RMSprop/ReadVariableOp_35training/RMSprop/truediv_5*
T0*
_output_shapes	
:?
y
$training/RMSprop/AssignVariableOp_11AssignVariableOpbatch_normalization/gammatraining/RMSprop/sub_11*
dtype0
?
"training/RMSprop/ReadVariableOp_36ReadVariableOpbatch_normalization/gamma%^training/RMSprop/AssignVariableOp_11*
dtype0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_37ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 

&training/RMSprop/mul_18/ReadVariableOpReadVariableOptraining/RMSprop/Variable_6*
dtype0*
_output_shapes	
:?
?
training/RMSprop/mul_18Mul"training/RMSprop/ReadVariableOp_37&training/RMSprop/mul_18/ReadVariableOp*
T0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_38ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
^
training/RMSprop/sub_12/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
~
training/RMSprop/sub_12Subtraining/RMSprop/sub_12/x"training/RMSprop/ReadVariableOp_38*
T0*
_output_shapes
: 
?
training/RMSprop/Square_6SquareMtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes	
:?
x
training/RMSprop/mul_19Multraining/RMSprop/sub_12training/RMSprop/Square_6*
T0*
_output_shapes	
:?
v
training/RMSprop/add_12Addtraining/RMSprop/mul_18training/RMSprop/mul_19*
T0*
_output_shapes	
:?
{
$training/RMSprop/AssignVariableOp_12AssignVariableOptraining/RMSprop/Variable_6training/RMSprop/add_12*
dtype0
?
"training/RMSprop/ReadVariableOp_39ReadVariableOptraining/RMSprop/Variable_6%^training/RMSprop/AssignVariableOp_12*
dtype0*
_output_shapes	
:?
e
"training/RMSprop/ReadVariableOp_40ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_20Mul"training/RMSprop/ReadVariableOp_40Mtraining/RMSprop/gradients/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0*
_output_shapes	
:?
^
training/RMSprop/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_14Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_6/MinimumMinimumtraining/RMSprop/add_12training/RMSprop/Const_14*
T0*
_output_shapes	
:?
?
 training/RMSprop/clip_by_value_6Maximum(training/RMSprop/clip_by_value_6/Minimumtraining/RMSprop/Const_13*
T0*
_output_shapes	
:?
g
training/RMSprop/Sqrt_6Sqrt training/RMSprop/clip_by_value_6*
T0*
_output_shapes	
:?
^
training/RMSprop/add_13/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
x
training/RMSprop/add_13Addtraining/RMSprop/Sqrt_6training/RMSprop/add_13/y*
T0*
_output_shapes	
:?
}
training/RMSprop/truediv_6RealDivtraining/RMSprop/mul_20training/RMSprop/add_13*
T0*
_output_shapes	
:?
x
"training/RMSprop/ReadVariableOp_41ReadVariableOpbatch_normalization/beta*
dtype0*
_output_shapes	
:?
?
training/RMSprop/sub_13Sub"training/RMSprop/ReadVariableOp_41training/RMSprop/truediv_6*
T0*
_output_shapes	
:?
x
$training/RMSprop/AssignVariableOp_13AssignVariableOpbatch_normalization/betatraining/RMSprop/sub_13*
dtype0
?
"training/RMSprop/ReadVariableOp_42ReadVariableOpbatch_normalization/beta%^training/RMSprop/AssignVariableOp_13*
dtype0*
_output_shapes	
:?
f
"training/RMSprop/ReadVariableOp_43ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
?
&training/RMSprop/mul_21/ReadVariableOpReadVariableOptraining/RMSprop/Variable_7*
dtype0*
_output_shapes
:	?
?
training/RMSprop/mul_21Mul"training/RMSprop/ReadVariableOp_43&training/RMSprop/mul_21/ReadVariableOp*
T0*
_output_shapes
:	?
f
"training/RMSprop/ReadVariableOp_44ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
^
training/RMSprop/sub_14/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
~
training/RMSprop/sub_14Subtraining/RMSprop/sub_14/x"training/RMSprop/ReadVariableOp_44*
T0*
_output_shapes
: 
?
training/RMSprop/Square_7Square:training/RMSprop/gradients/Prediction/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	?
|
training/RMSprop/mul_22Multraining/RMSprop/sub_14training/RMSprop/Square_7*
T0*
_output_shapes
:	?
z
training/RMSprop/add_14Addtraining/RMSprop/mul_21training/RMSprop/mul_22*
T0*
_output_shapes
:	?
{
$training/RMSprop/AssignVariableOp_14AssignVariableOptraining/RMSprop/Variable_7training/RMSprop/add_14*
dtype0
?
"training/RMSprop/ReadVariableOp_45ReadVariableOptraining/RMSprop/Variable_7%^training/RMSprop/AssignVariableOp_14*
dtype0*
_output_shapes
:	?
e
"training/RMSprop/ReadVariableOp_46ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_23Mul"training/RMSprop/ReadVariableOp_46:training/RMSprop/gradients/Prediction/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	?
^
training/RMSprop/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_16Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_7/MinimumMinimumtraining/RMSprop/add_14training/RMSprop/Const_16*
T0*
_output_shapes
:	?
?
 training/RMSprop/clip_by_value_7Maximum(training/RMSprop/clip_by_value_7/Minimumtraining/RMSprop/Const_15*
T0*
_output_shapes
:	?
k
training/RMSprop/Sqrt_7Sqrt training/RMSprop/clip_by_value_7*
T0*
_output_shapes
:	?
^
training/RMSprop/add_15/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
|
training/RMSprop/add_15Addtraining/RMSprop/Sqrt_7training/RMSprop/add_15/y*
T0*
_output_shapes
:	?
?
training/RMSprop/truediv_7RealDivtraining/RMSprop/mul_23training/RMSprop/add_15*
T0*
_output_shapes
:	?
u
"training/RMSprop/ReadVariableOp_47ReadVariableOpPrediction/kernel*
dtype0*
_output_shapes
:	?
?
training/RMSprop/sub_15Sub"training/RMSprop/ReadVariableOp_47training/RMSprop/truediv_7*
T0*
_output_shapes
:	?
q
$training/RMSprop/AssignVariableOp_15AssignVariableOpPrediction/kerneltraining/RMSprop/sub_15*
dtype0
?
"training/RMSprop/ReadVariableOp_48ReadVariableOpPrediction/kernel%^training/RMSprop/AssignVariableOp_15*
dtype0*
_output_shapes
:	?
f
"training/RMSprop/ReadVariableOp_49ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
~
&training/RMSprop/mul_24/ReadVariableOpReadVariableOptraining/RMSprop/Variable_8*
dtype0*
_output_shapes
:
?
training/RMSprop/mul_24Mul"training/RMSprop/ReadVariableOp_49&training/RMSprop/mul_24/ReadVariableOp*
T0*
_output_shapes
:
f
"training/RMSprop/ReadVariableOp_50ReadVariableOpRMSprop/rho*
dtype0*
_output_shapes
: 
^
training/RMSprop/sub_16/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
~
training/RMSprop/sub_16Subtraining/RMSprop/sub_16/x"training/RMSprop/ReadVariableOp_50*
T0*
_output_shapes
: 
?
training/RMSprop/Square_8Square>training/RMSprop/gradients/Prediction/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
w
training/RMSprop/mul_25Multraining/RMSprop/sub_16training/RMSprop/Square_8*
T0*
_output_shapes
:
u
training/RMSprop/add_16Addtraining/RMSprop/mul_24training/RMSprop/mul_25*
T0*
_output_shapes
:
{
$training/RMSprop/AssignVariableOp_16AssignVariableOptraining/RMSprop/Variable_8training/RMSprop/add_16*
dtype0
?
"training/RMSprop/ReadVariableOp_51ReadVariableOptraining/RMSprop/Variable_8%^training/RMSprop/AssignVariableOp_16*
dtype0*
_output_shapes
:
e
"training/RMSprop/ReadVariableOp_52ReadVariableOp
RMSprop/lr*
dtype0*
_output_shapes
: 
?
training/RMSprop/mul_26Mul"training/RMSprop/ReadVariableOp_52>training/RMSprop/gradients/Prediction/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
^
training/RMSprop/Const_17Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_18Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
(training/RMSprop/clip_by_value_8/MinimumMinimumtraining/RMSprop/add_16training/RMSprop/Const_18*
T0*
_output_shapes
:
?
 training/RMSprop/clip_by_value_8Maximum(training/RMSprop/clip_by_value_8/Minimumtraining/RMSprop/Const_17*
T0*
_output_shapes
:
f
training/RMSprop/Sqrt_8Sqrt training/RMSprop/clip_by_value_8*
T0*
_output_shapes
:
^
training/RMSprop/add_17/yConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
w
training/RMSprop/add_17Addtraining/RMSprop/Sqrt_8training/RMSprop/add_17/y*
T0*
_output_shapes
:
|
training/RMSprop/truediv_8RealDivtraining/RMSprop/mul_26training/RMSprop/add_17*
T0*
_output_shapes
:
n
"training/RMSprop/ReadVariableOp_53ReadVariableOpPrediction/bias*
dtype0*
_output_shapes
:
?
training/RMSprop/sub_17Sub"training/RMSprop/ReadVariableOp_53training/RMSprop/truediv_8*
T0*
_output_shapes
:
o
$training/RMSprop/AssignVariableOp_17AssignVariableOpPrediction/biastraining/RMSprop/sub_17*
dtype0
?
"training/RMSprop/ReadVariableOp_54ReadVariableOpPrediction/bias%^training/RMSprop/AssignVariableOp_17*
dtype0*
_output_shapes
:
?
training/group_depsNoOp!^batch_normalization/cond_2/Merge!^batch_normalization/cond_3/Merge	^loss/mul^metrics/acc/Mean ^training/RMSprop/ReadVariableOp#^training/RMSprop/ReadVariableOp_12#^training/RMSprop/ReadVariableOp_15#^training/RMSprop/ReadVariableOp_18#^training/RMSprop/ReadVariableOp_21#^training/RMSprop/ReadVariableOp_24#^training/RMSprop/ReadVariableOp_27"^training/RMSprop/ReadVariableOp_3#^training/RMSprop/ReadVariableOp_30#^training/RMSprop/ReadVariableOp_33#^training/RMSprop/ReadVariableOp_36#^training/RMSprop/ReadVariableOp_39#^training/RMSprop/ReadVariableOp_42#^training/RMSprop/ReadVariableOp_45#^training/RMSprop/ReadVariableOp_48#^training/RMSprop/ReadVariableOp_51#^training/RMSprop/ReadVariableOp_54"^training/RMSprop/ReadVariableOp_6"^training/RMSprop/ReadVariableOp_9
0

group_depsNoOp	^loss/mul^metrics/acc/Mean
O
VarIsInitializedOpVarIsInitializedOpconv1d/kernel*
_output_shapes
: 
g
VarIsInitializedOp_1VarIsInitializedOp#batch_normalization/moving_variance*
_output_shapes
: 
]
VarIsInitializedOp_2VarIsInitializedOptraining/RMSprop/Variable*
_output_shapes
: 
N
VarIsInitializedOp_3VarIsInitializedOp
RMSprop/lr*
_output_shapes
: 
O
VarIsInitializedOp_4VarIsInitializedOpRMSprop/rho*
_output_shapes
: 
Q
VarIsInitializedOp_5VarIsInitializedOpRMSprop/decay*
_output_shapes
: 
V
VarIsInitializedOp_6VarIsInitializedOpRMSprop/iterations*
_output_shapes
: 
O
VarIsInitializedOp_7VarIsInitializedOpconv1d/bias*
_output_shapes
: 
_
VarIsInitializedOp_8VarIsInitializedOptraining/RMSprop/Variable_1*
_output_shapes
: 
_
VarIsInitializedOp_9VarIsInitializedOptraining/RMSprop/Variable_2*
_output_shapes
: 
`
VarIsInitializedOp_10VarIsInitializedOptraining/RMSprop/Variable_8*
_output_shapes
: 
`
VarIsInitializedOp_11VarIsInitializedOptraining/RMSprop/Variable_7*
_output_shapes
: 
^
VarIsInitializedOp_12VarIsInitializedOpbatch_normalization/gamma*
_output_shapes
: 
`
VarIsInitializedOp_13VarIsInitializedOptraining/RMSprop/Variable_5*
_output_shapes
: 
V
VarIsInitializedOp_14VarIsInitializedOpPrediction/kernel*
_output_shapes
: 
R
VarIsInitializedOp_15VarIsInitializedOpconv1d_1/bias*
_output_shapes
: 
T
VarIsInitializedOp_16VarIsInitializedOpconv1d_1/kernel*
_output_shapes
: 
d
VarIsInitializedOp_17VarIsInitializedOpbatch_normalization/moving_mean*
_output_shapes
: 
`
VarIsInitializedOp_18VarIsInitializedOptraining/RMSprop/Variable_4*
_output_shapes
: 
`
VarIsInitializedOp_19VarIsInitializedOptraining/RMSprop/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_20VarIsInitializedOpbatch_normalization/beta*
_output_shapes
: 
`
VarIsInitializedOp_21VarIsInitializedOptraining/RMSprop/Variable_3*
_output_shapes
: 
T
VarIsInitializedOp_22VarIsInitializedOpPrediction/bias*
_output_shapes
: 
Y
VarIsInitializedOp_23VarIsInitializedOpembedding/embeddings*
_output_shapes
: 
?
initNoOp^Prediction/bias/Assign^Prediction/kernel/Assign^RMSprop/decay/Assign^RMSprop/iterations/Assign^RMSprop/lr/Assign^RMSprop/rho/Assign ^batch_normalization/beta/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign^conv1d/bias/Assign^conv1d/kernel/Assign^conv1d_1/bias/Assign^conv1d_1/kernel/Assign^embedding/embeddings/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign#^training/RMSprop/Variable_5/Assign#^training/RMSprop/Variable_6/Assign#^training/RMSprop/Variable_7/Assign#^training/RMSprop/Variable_8/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_6b364afd97d54df798327e6cc5b7c715/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?BPrediction/biasBPrediction/kernelBRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBconv1d/biasBconv1d/kernelBconv1d_1/biasBconv1d_1/kernelBembedding/embeddingsBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5Btraining/RMSprop/Variable_6Btraining/RMSprop/Variable_7Btraining/RMSprop/Variable_8*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices#Prediction/bias/Read/ReadVariableOp%Prediction/kernel/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp&RMSprop/iterations/Read/ReadVariableOpRMSprop/lr/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp-training/RMSprop/Variable/Read/ReadVariableOp/training/RMSprop/Variable_1/Read/ReadVariableOp/training/RMSprop/Variable_2/Read/ReadVariableOp/training/RMSprop/Variable_3/Read/ReadVariableOp/training/RMSprop/Variable_4/Read/ReadVariableOp/training/RMSprop/Variable_5/Read/ReadVariableOp/training/RMSprop/Variable_6/Read/ReadVariableOp/training/RMSprop/Variable_7/Read/ReadVariableOp/training/RMSprop/Variable_8/Read/ReadVariableOp*&
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
T0*
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B?BPrediction/biasBPrediction/kernelBRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBconv1d/biasBconv1d/kernelBconv1d_1/biasBconv1d_1/kernelBembedding/embeddingsBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5Btraining/RMSprop/Variable_6Btraining/RMSprop/Variable_7Btraining/RMSprop/Variable_8*
dtype0*
_output_shapes
:
?
save/RestoreV2/shape_and_slicesConst*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*&
dtypes
2	*t
_output_shapesb
`::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
X
save/AssignVariableOpAssignVariableOpPrediction/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
\
save/AssignVariableOp_1AssignVariableOpPrediction/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpRMSprop/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
]
save/AssignVariableOp_3AssignVariableOpRMSprop/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
U
save/AssignVariableOp_4AssignVariableOp
RMSprop/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
V
save/AssignVariableOp_5AssignVariableOpRMSprop/rhosave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
c
save/AssignVariableOp_6AssignVariableOpbatch_normalization/betasave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
d
save/AssignVariableOp_7AssignVariableOpbatch_normalization/gammasave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
j
save/AssignVariableOp_8AssignVariableOpbatch_normalization/moving_meansave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
o
save/AssignVariableOp_9AssignVariableOp#batch_normalization/moving_variancesave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
X
save/AssignVariableOp_10AssignVariableOpconv1d/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
Z
save/AssignVariableOp_11AssignVariableOpconv1d/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Z
save/AssignVariableOp_12AssignVariableOpconv1d_1/biassave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
\
save/AssignVariableOp_13AssignVariableOpconv1d_1/kernelsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
a
save/AssignVariableOp_14AssignVariableOpembedding/embeddingssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
f
save/AssignVariableOp_15AssignVariableOptraining/RMSprop/Variablesave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
h
save/AssignVariableOp_16AssignVariableOptraining/RMSprop/Variable_1save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
h
save/AssignVariableOp_17AssignVariableOptraining/RMSprop/Variable_2save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
h
save/AssignVariableOp_18AssignVariableOptraining/RMSprop/Variable_3save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
h
save/AssignVariableOp_19AssignVariableOptraining/RMSprop/Variable_4save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
h
save/AssignVariableOp_20AssignVariableOptraining/RMSprop/Variable_5save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
h
save/AssignVariableOp_21AssignVariableOptraining/RMSprop/Variable_6save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
h
save/AssignVariableOp_22AssignVariableOptraining/RMSprop/Variable_7save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
h
save/AssignVariableOp_23AssignVariableOptraining/RMSprop/Variable_8save/Identity_24*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
trainable_variables??
?
embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
|
conv1d/kernel:0conv1d/kernel/Assign#conv1d/kernel/Read/ReadVariableOp:0(2*conv1d/kernel/Initializer/random_uniform:08
k
conv1d/bias:0conv1d/bias/Assign!conv1d/bias/Read/ReadVariableOp:0(2conv1d/bias/Initializer/zeros:08
?
conv1d_1/kernel:0conv1d_1/kernel/Assign%conv1d_1/kernel/Read/ReadVariableOp:0(2,conv1d_1/kernel/Initializer/random_uniform:08
s
conv1d_1/bias:0conv1d_1/bias/Assign#conv1d_1/bias/Read/ReadVariableOp:0(2!conv1d_1/bias/Initializer/zeros:08
?
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08
?
batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
?
Prediction/kernel:0Prediction/kernel/Assign'Prediction/kernel/Read/ReadVariableOp:0(2.Prediction/kernel/Initializer/random_uniform:08
{
Prediction/bias:0Prediction/bias/Assign%Prediction/bias/Read/ReadVariableOp:0(2#Prediction/bias/Initializer/zeros:08
o
RMSprop/lr:0RMSprop/lr/Assign RMSprop/lr/Read/ReadVariableOp:0(2&RMSprop/lr/Initializer/initial_value:08
s
RMSprop/rho:0RMSprop/rho/Assign!RMSprop/rho/Read/ReadVariableOp:0(2'RMSprop/rho/Initializer/initial_value:08
{
RMSprop/decay:0RMSprop/decay/Assign#RMSprop/decay/Read/ReadVariableOp:0(2)RMSprop/decay/Initializer/initial_value:08
?
RMSprop/iterations:0RMSprop/iterations/Assign(RMSprop/iterations/Read/ReadVariableOp:0(2.RMSprop/iterations/Initializer/initial_value:08
?
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign/training/RMSprop/Variable/Read/ReadVariableOp:0(2training/RMSprop/zeros:08
?
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign1training/RMSprop/Variable_1/Read/ReadVariableOp:0(2training/RMSprop/zeros_1:08
?
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign1training/RMSprop/Variable_2/Read/ReadVariableOp:0(2training/RMSprop/zeros_2:08
?
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign1training/RMSprop/Variable_3/Read/ReadVariableOp:0(2training/RMSprop/zeros_3:08
?
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign1training/RMSprop/Variable_4/Read/ReadVariableOp:0(2training/RMSprop/zeros_4:08
?
training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign1training/RMSprop/Variable_5/Read/ReadVariableOp:0(2training/RMSprop/zeros_5:08
?
training/RMSprop/Variable_6:0"training/RMSprop/Variable_6/Assign1training/RMSprop/Variable_6/Read/ReadVariableOp:0(2training/RMSprop/zeros_6:08
?
training/RMSprop/Variable_7:0"training/RMSprop/Variable_7/Assign1training/RMSprop/Variable_7/Read/ReadVariableOp:0(2training/RMSprop/zeros_7:08
?
training/RMSprop/Variable_8:0"training/RMSprop/Variable_8/Assign1training/RMSprop/Variable_8/Read/ReadVariableOp:0(2training/RMSprop/zeros_8:08"??
cond_context????
?
"batch_normalization/cond/cond_text"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_t:0 *?
#batch_normalization/cond/Switch_1:0
#batch_normalization/cond/Switch_1:1
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_t:0
%batch_normalization/moments/Squeeze:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0L
%batch_normalization/moments/Squeeze:0#batch_normalization/cond/Switch_1:1
?
$batch_normalization/cond/cond_text_1"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_f:0*?
0batch_normalization/cond/ReadVariableOp/Switch:0
)batch_normalization/cond/ReadVariableOp:0
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_f:0
!batch_normalization/moving_mean:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0U
!batch_normalization/moving_mean:00batch_normalization/cond/ReadVariableOp/Switch:0
?
$batch_normalization/cond_1/cond_text$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_t:0 *?
%batch_normalization/cond_1/Switch_1:0
%batch_normalization/cond_1/Switch_1:1
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_t:0
'batch_normalization/moments/Squeeze_1:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0P
'batch_normalization/moments/Squeeze_1:0%batch_normalization/cond_1/Switch_1:1
?
&batch_normalization/cond_1/cond_text_1$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_f:0*?
2batch_normalization/cond_1/ReadVariableOp/Switch:0
+batch_normalization/cond_1/ReadVariableOp:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_f:0
%batch_normalization/moving_variance:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0[
%batch_normalization/moving_variance:02batch_normalization/cond_1/ReadVariableOp/Switch:0
?
$batch_normalization/cond_2/cond_text$batch_normalization/cond_2/pred_id:0%batch_normalization/cond_2/switch_t:0 *?
 batch_normalization/cond/Merge:0
5batch_normalization/cond_2/AssignMovingAvg/Identity:0
Gbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1
@batch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp:0
;batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp:0
=batch_normalization/cond_2/AssignMovingAvg/ReadVariableOp_1:0
2batch_normalization/cond_2/AssignMovingAvg/decay:0
0batch_normalization/cond_2/AssignMovingAvg/mul:0
7batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1
0batch_normalization/cond_2/AssignMovingAvg/sub:0
+batch_normalization/cond_2/ReadVariableOp:0
$batch_normalization/cond_2/pred_id:0
%batch_normalization/cond_2/switch_t:0
!batch_normalization/moving_mean:0[
 batch_normalization/cond/Merge:07batch_normalization/cond_2/AssignMovingAvg/sub/Switch:1l
!batch_normalization/moving_mean:0Gbatch_normalization/cond_2/AssignMovingAvg/Read/ReadVariableOp/Switch:1L
$batch_normalization/cond_2/pred_id:0$batch_normalization/cond_2/pred_id:0
?
&batch_normalization/cond_2/cond_text_1$batch_normalization/cond_2/pred_id:0%batch_normalization/cond_2/switch_f:0*?
4batch_normalization/cond_2/ReadVariableOp_1/Switch:0
-batch_normalization/cond_2/ReadVariableOp_1:0
$batch_normalization/cond_2/pred_id:0
%batch_normalization/cond_2/switch_f:0
!batch_normalization/moving_mean:0Y
!batch_normalization/moving_mean:04batch_normalization/cond_2/ReadVariableOp_1/Switch:0L
$batch_normalization/cond_2/pred_id:0$batch_normalization/cond_2/pred_id:0
?
$batch_normalization/cond_3/cond_text$batch_normalization/cond_3/pred_id:0%batch_normalization/cond_3/switch_t:0 *?
"batch_normalization/cond_1/Merge:0
5batch_normalization/cond_3/AssignMovingAvg/Identity:0
Gbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1
@batch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp:0
;batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp:0
=batch_normalization/cond_3/AssignMovingAvg/ReadVariableOp_1:0
2batch_normalization/cond_3/AssignMovingAvg/decay:0
0batch_normalization/cond_3/AssignMovingAvg/mul:0
7batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1
0batch_normalization/cond_3/AssignMovingAvg/sub:0
+batch_normalization/cond_3/ReadVariableOp:0
$batch_normalization/cond_3/pred_id:0
%batch_normalization/cond_3/switch_t:0
%batch_normalization/moving_variance:0]
"batch_normalization/cond_1/Merge:07batch_normalization/cond_3/AssignMovingAvg/sub/Switch:1p
%batch_normalization/moving_variance:0Gbatch_normalization/cond_3/AssignMovingAvg/Read/ReadVariableOp/Switch:1L
$batch_normalization/cond_3/pred_id:0$batch_normalization/cond_3/pred_id:0
?
&batch_normalization/cond_3/cond_text_1$batch_normalization/cond_3/pred_id:0%batch_normalization/cond_3/switch_f:0*?
4batch_normalization/cond_3/ReadVariableOp_1/Switch:0
-batch_normalization/cond_3/ReadVariableOp_1:0
$batch_normalization/cond_3/pred_id:0
%batch_normalization/cond_3/switch_f:0
%batch_normalization/moving_variance:0]
%batch_normalization/moving_variance:04batch_normalization/cond_3/ReadVariableOp_1/Switch:0L
$batch_normalization/cond_3/pred_id:0$batch_normalization/cond_3/pred_id:0
?
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *?
%batch_normalization/batchnorm/add_1:0
dropout/cond/dropout/Floor:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/add:0
dropout/cond/dropout/div:0
 dropout/cond/dropout/keep_prob:0
dropout/cond/dropout/mul:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/pred_id:0
dropout/cond/switch_t:0L
%batch_normalization/batchnorm/add_1:0#dropout/cond/dropout/Shape/Switch:10
dropout/cond/pred_id:0dropout/cond/pred_id:0
?
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*?
%batch_normalization/batchnorm/add_1:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:0G
%batch_normalization/batchnorm/add_1:0dropout/cond/Identity/Switch:00
dropout/cond/pred_id:0dropout/cond/pred_id:0
?
Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textTloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *?
Gloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0?
Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0?
Gloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar:0Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
?Y
Vloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*?(
lloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
lloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
mloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
mloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
yloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
zloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
|loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
sloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Uloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Iloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/rank:0
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape:0
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Kloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/rank:0|loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0?
Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0?
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape:0?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?
Iloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/rank:0zloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0?
Kloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape:0?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02?#
?#
nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textnloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *?!
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
yloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape:0
Kloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0?
nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0?
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape:0?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1?
?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0?
Kloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape:0?loss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:12?

?

ploss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*?
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
sloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0?
sloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0oloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0?
nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
?
Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textQloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Rloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *?
\loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Rloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0?
Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
?
Sloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Rloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*?
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Yloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Yloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Yloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
^loss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Rloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Gloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape:0
Kloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape:0?
Rloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Wloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0?
Jloss/Prediction_loss/broadcast_weights/assert_broadcastable/values/shape:0Yloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0?
Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0?
Gloss/Prediction_loss/broadcast_weights/assert_broadcastable/is_scalar:0Yloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0?
Kloss/Prediction_loss/broadcast_weights/assert_broadcastable/weights/shape:0Yloss/Prediction_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0"?
	variables??
?
embedding/embeddings:0embedding/embeddings/Assign*embedding/embeddings/Read/ReadVariableOp:0(21embedding/embeddings/Initializer/random_uniform:08
|
conv1d/kernel:0conv1d/kernel/Assign#conv1d/kernel/Read/ReadVariableOp:0(2*conv1d/kernel/Initializer/random_uniform:08
k
conv1d/bias:0conv1d/bias/Assign!conv1d/bias/Read/ReadVariableOp:0(2conv1d/bias/Initializer/zeros:08
?
conv1d_1/kernel:0conv1d_1/kernel/Assign%conv1d_1/kernel/Read/ReadVariableOp:0(2,conv1d_1/kernel/Initializer/random_uniform:08
s
conv1d_1/bias:0conv1d_1/bias/Assign#conv1d_1/bias/Read/ReadVariableOp:0(2!conv1d_1/bias/Initializer/zeros:08
?
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08
?
batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
?
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign5batch_normalization/moving_mean/Read/ReadVariableOp:0(23batch_normalization/moving_mean/Initializer/zeros:0
?
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign9batch_normalization/moving_variance/Read/ReadVariableOp:0(26batch_normalization/moving_variance/Initializer/ones:0
?
Prediction/kernel:0Prediction/kernel/Assign'Prediction/kernel/Read/ReadVariableOp:0(2.Prediction/kernel/Initializer/random_uniform:08
{
Prediction/bias:0Prediction/bias/Assign%Prediction/bias/Read/ReadVariableOp:0(2#Prediction/bias/Initializer/zeros:08
o
RMSprop/lr:0RMSprop/lr/Assign RMSprop/lr/Read/ReadVariableOp:0(2&RMSprop/lr/Initializer/initial_value:08
s
RMSprop/rho:0RMSprop/rho/Assign!RMSprop/rho/Read/ReadVariableOp:0(2'RMSprop/rho/Initializer/initial_value:08
{
RMSprop/decay:0RMSprop/decay/Assign#RMSprop/decay/Read/ReadVariableOp:0(2)RMSprop/decay/Initializer/initial_value:08
?
RMSprop/iterations:0RMSprop/iterations/Assign(RMSprop/iterations/Read/ReadVariableOp:0(2.RMSprop/iterations/Initializer/initial_value:08
?
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign/training/RMSprop/Variable/Read/ReadVariableOp:0(2training/RMSprop/zeros:08
?
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign1training/RMSprop/Variable_1/Read/ReadVariableOp:0(2training/RMSprop/zeros_1:08
?
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign1training/RMSprop/Variable_2/Read/ReadVariableOp:0(2training/RMSprop/zeros_2:08
?
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign1training/RMSprop/Variable_3/Read/ReadVariableOp:0(2training/RMSprop/zeros_3:08
?
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign1training/RMSprop/Variable_4/Read/ReadVariableOp:0(2training/RMSprop/zeros_4:08
?
training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign1training/RMSprop/Variable_5/Read/ReadVariableOp:0(2training/RMSprop/zeros_5:08
?
training/RMSprop/Variable_6:0"training/RMSprop/Variable_6/Assign1training/RMSprop/Variable_6/Read/ReadVariableOp:0(2training/RMSprop/zeros_6:08
?
training/RMSprop/Variable_7:0"training/RMSprop/Variable_7/Assign1training/RMSprop/Variable_7/Read/ReadVariableOp:0(2training/RMSprop/zeros_7:08
?
training/RMSprop/Variable_8:0"training/RMSprop/Variable_8/Assign1training/RMSprop/Variable_8/Read/ReadVariableOp:0(2training/RMSprop/zeros_8:08*?
serving_default?
.
Features"

Features:0??????????9

Prediction+
Prediction/Softmax:0?????????tensorflow/serving/predict