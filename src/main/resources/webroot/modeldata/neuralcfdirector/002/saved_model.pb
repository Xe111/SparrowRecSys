��
� � 
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
q
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
�
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
�
SparseSegmentMean	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
G
Where

input"T	
index	"'
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758܏
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:�*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:�*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:�*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:�*
dtype0
{
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namefalse_negatives_1
t
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes	
:�*
dtype0
{
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namefalse_positives_1
t
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes	
:�*
dtype0
y
true_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nametrue_negatives_1
r
$true_negatives_1/Read/ReadVariableOpReadVariableOptrue_negatives_1*
_output_shapes	
:�*
dtype0
y
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nametrue_positives_1
r
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes	
:�*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/v/dense_2/kernel

)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes

:
*
dtype0
�
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/m/dense_2/kernel

)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes

:
*
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:
*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:
*
dtype0
�
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

:

*
dtype0
�
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

:

*
dtype0
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:
*
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:
*
dtype0
�
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_nameAdam/v/dense/kernel
{
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes

:
*
dtype0
�
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_nameAdam/m/dense/kernel
{
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes

:
*
dtype0
�
:Adam/v/dense_features_1/userId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��
*K
shared_name<:Adam/v/dense_features_1/userId_embedding/embedding_weights
�
NAdam/v/dense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp:Adam/v/dense_features_1/userId_embedding/embedding_weights* 
_output_shapes
:
��
*
dtype0
�
:Adam/m/dense_features_1/userId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��
*K
shared_name<:Adam/m/dense_features_1/userId_embedding/embedding_weights
�
NAdam/m/dense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp:Adam/m/dense_features_1/userId_embedding/embedding_weights* 
_output_shapes
:
��
*
dtype0
�
<Adam/v/dense_features/directorId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*M
shared_name><Adam/v/dense_features/directorId_embedding/embedding_weights
�
PAdam/v/dense_features/directorId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp<Adam/v/dense_features/directorId_embedding/embedding_weights*
_output_shapes
:	�
*
dtype0
�
<Adam/m/dense_features/directorId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*M
shared_name><Adam/m/dense_features/directorId_embedding/embedding_weights
�
PAdam/m/dense_features/directorId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp<Adam/m/dense_features/directorId_embedding/embedding_weights*
_output_shapes
:	�
*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:

*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:
*
dtype0
�
3dense_features_1/userId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��
*D
shared_name53dense_features_1/userId_embedding/embedding_weights
�
Gdense_features_1/userId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp3dense_features_1/userId_embedding/embedding_weights* 
_output_shapes
:
��
*
dtype0
�
5dense_features/directorId_embedding/embedding_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*F
shared_name75dense_features/directorId_embedding/embedding_weights
�
Idense_features/directorId_embedding/embedding_weights/Read/ReadVariableOpReadVariableOp5dense_features/directorId_embedding/embedding_weights*
_output_shapes
:	�
*
dtype0
u
serving_default_directorIdPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
q
serving_default_userIdPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_directorIdserving_default_userId5dense_features/directorId_embedding/embedding_weights3dense_features_1/userId_embedding/embedding_weightsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_281628

NoOpNoOp
�K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�K
value�KB�K B�K
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources
*&directorId_embedding/embedding_weights*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_feature_columns
"
_resources
&#"userId_embedding/embedding_weights*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias*
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias*
<
0
#1
02
13
84
95
@6
A7*
<
0
#1
02
13
84
95
@6
A7*
* 
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
6
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_3* 
* 
�
O
_variables
P_iterations
Q_learning_rate
R_index_dict
S
_momentums
T_velocities
U_update_step_xla*

Vserving_default* 

0*

0*
* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

\trace_0
]trace_1* 

^trace_0
_trace_1* 
* 
* 
��
VARIABLE_VALUE5dense_features/directorId_embedding/embedding_weightsWlayer_with_weights-0/directorId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*

#0*

#0*
* 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

etrace_0
ftrace_1* 

gtrace_0
htrace_1* 
* 
* 
��
VARIABLE_VALUE3dense_features_1/userId_embedding/embedding_weightsSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

ntrace_0* 

otrace_0* 

00
11*

00
11*
* 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

utrace_0* 

vtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

@0
A1*
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*
$
�0
�1
�2
�3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
P0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
z
�	variables
�	keras_api
�true_positives
�true_negatives
�false_positives
�false_negatives*
z
�	variables
�	keras_api
�true_positives
�true_negatives
�false_positives
�false_negatives*
��
VARIABLE_VALUE<Adam/m/dense_features/directorId_embedding/embedding_weights1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/v/dense_features/directorId_embedding/embedding_weights1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE:Adam/m/dense_features_1/userId_embedding/embedding_weights1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE:Adam/v/dense_features_1/userId_embedding/embedding_weights1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/dense/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/dense/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�	variables*
ga
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEtrue_negatives_1=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
$
�0
�1
�2
�3*

�	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5dense_features/directorId_embedding/embedding_weights3dense_features_1/userId_embedding/embedding_weightsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	iterationlearning_rate<Adam/m/dense_features/directorId_embedding/embedding_weights<Adam/v/dense_features/directorId_embedding/embedding_weights:Adam/m/dense_features_1/userId_embedding/embedding_weights:Adam/v/dense_features_1/userId_embedding/embedding_weightsAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotal_1count_1totalcounttrue_positives_1true_negatives_1false_positives_1false_negatives_1true_positivestrue_negativesfalse_positivesfalse_negativesConst*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_282745
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename5dense_features/directorId_embedding/embedding_weights3dense_features_1/userId_embedding/embedding_weightsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	iterationlearning_rate<Adam/m/dense_features/directorId_embedding/embedding_weights<Adam/v/dense_features/directorId_embedding/embedding_weights:Adam/m/dense_features_1/userId_embedding/embedding_weights:Adam/v/dense_features_1/userId_embedding/embedding_weightsAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotal_1count_1totalcounttrue_positives_1true_negatives_1false_positives_1false_negatives_1true_positivestrue_negativesfalse_positivesfalse_negatives*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_282869��
�

�
A__inference_dense_layer_call_and_return_conditional_losses_281150

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_281184

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
$__inference_signature_wrapper_281628

directorid

userid
unknown:	�

	unknown_0:
��

	unknown_1:

	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
directoriduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_280947o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:KG
#
_output_shapes
:���������
 
_user_specified_nameuserId:O K
#
_output_shapes
:���������
$
_user_specified_name
directorId
�
q
G__inference_concatenate_layer_call_and_return_conditional_losses_281137

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������
:���������
:OK
'
_output_shapes
:���������

 
_user_specified_nameinputs:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�}
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282335
features_directorid
features_useridm
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282295:
��

identity��RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupj
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
userId_embedding/ExpandDims
ExpandDimsfeatures_userid(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������z
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:���������
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:���������z
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282295LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282295*'
_output_shapes
:���������
*
dtype0�
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282295*'
_output_shapes
:���������
�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
::���
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��n
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOpS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
�
�
1__inference_dense_features_1_layer_call_fn_282242
features_directorid
features_userid
unknown:
��

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_directoridfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
�|
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281126
features

features_1m
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281086:
��

identity��RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupj
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
userId_embedding/ExpandDims
ExpandDims
features_1(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������z
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:���������
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:���������z
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281086LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281086*'
_output_shapes
:���������
*
dtype0�
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281086*'
_output_shapes
:���������
�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
::���
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��n
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOpS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:MI
#
_output_shapes
:���������
"
_user_specified_name
features:M I
#
_output_shapes
:���������
"
_user_specified_name
features
�
�
1__inference_dense_features_1_layer_call_fn_282250
features_directorid
features_userid
unknown:
��

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_directoridfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281367o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
�
�
/__inference_dense_features_layer_call_fn_282056
features_directorid
features_userid
unknown:	�

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_directoridfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_281037o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
��
�
A__inference_model_layer_call_and_return_conditional_losses_281860
inputs_directorid
inputs_userid�
pdense_features_directorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281717:	�
~
jdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281797:
��
6
$dense_matmul_readvariableop_resource:
3
%dense_biasadd_readvariableop_resource:
8
&dense_1_matmul_readvariableop_resource:

5
'dense_1_biasadd_readvariableop_resource:
8
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�idense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup�cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup}
2dense_features/directorId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
.dense_features/directorId_embedding/ExpandDims
ExpandDimsinputs_directorid;dense_features/directorId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Bdense_features/directorId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
<dense_features/directorId_embedding/to_sparse_input/NotEqualNotEqual7dense_features/directorId_embedding/ExpandDims:output:0Kdense_features/directorId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
;dense_features/directorId_embedding/to_sparse_input/indicesWhere@dense_features/directorId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
:dense_features/directorId_embedding/to_sparse_input/valuesGatherNd7dense_features/directorId_embedding/ExpandDims:output:0Cdense_features/directorId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
?dense_features/directorId_embedding/to_sparse_input/dense_shapeShape7dense_features/directorId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
*dense_features/directorId_embedding/valuesCastCdense_features/directorId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
Ldense_features/directorId_embedding/directorId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Kdense_features/directorId_embedding/directorId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Fdense_features/directorId_embedding/directorId_embedding_weights/SliceSliceHdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0Udense_features/directorId_embedding/directorId_embedding_weights/Slice/begin:output:0Tdense_features/directorId_embedding/directorId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Fdense_features/directorId_embedding/directorId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Edense_features/directorId_embedding/directorId_embedding_weights/ProdProdOdense_features/directorId_embedding/directorId_embedding_weights/Slice:output:0Odense_features/directorId_embedding/directorId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Qdense_features/directorId_embedding/directorId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Ndense_features/directorId_embedding/directorId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Idense_features/directorId_embedding/directorId_embedding_weights/GatherV2GatherV2Hdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0Zdense_features/directorId_embedding/directorId_embedding_weights/GatherV2/indices:output:0Wdense_features/directorId_embedding/directorId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Gdense_features/directorId_embedding/directorId_embedding_weights/Cast/xPackNdense_features/directorId_embedding/directorId_embedding_weights/Prod:output:0Rdense_features/directorId_embedding/directorId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Ndense_features/directorId_embedding/directorId_embedding_weights/SparseReshapeSparseReshapeCdense_features/directorId_embedding/to_sparse_input/indices:index:0Hdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0Pdense_features/directorId_embedding/directorId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wdense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/IdentityIdentity.dense_features/directorId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
Odense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Mdense_features/directorId_embedding/directorId_embedding_weights/GreaterEqualGreaterEqual`dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0Xdense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Fdense_features/directorId_embedding/directorId_embedding_weights/WhereWhereQdense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Ndense_features/directorId_embedding/directorId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hdense_features/directorId_embedding/directorId_embedding_weights/ReshapeReshapeNdense_features/directorId_embedding/directorId_embedding_weights/Where:index:0Wdense_features/directorId_embedding/directorId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Pdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1GatherV2_dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape:output_indices:0Qdense_features/directorId_embedding/directorId_embedding_weights/Reshape:output:0Ydense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Pdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2GatherV2`dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0Qdense_features/directorId_embedding/directorId_embedding_weights/Reshape:output:0Ydense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Idense_features/directorId_embedding/directorId_embedding_weights/IdentityIdentity]dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
hdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1:output:0Tdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2:output:0Rdense_features/directorId_embedding/directorId_embedding_weights/Identity:output:0cdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
ldense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
ndense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
ndense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
fdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceydense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0udense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
_dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/UniqueUniquexdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
idense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherpdense_features_directorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281717cdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*�
_classy
wuloc:@dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281717*'
_output_shapes
:���������
*
dtype0�
rdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityrdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*�
_classy
wuloc:@dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281717*'
_output_shapes
:���������
�
tdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity{dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
Xdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0edense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:idx:0odense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
Pdense_features/directorId_embedding/directorId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Jdense_features/directorId_embedding/directorId_embedding_weights/Reshape_1Reshape~dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ydense_features/directorId_embedding/directorId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Fdense_features/directorId_embedding/directorId_embedding_weights/ShapeShapeadense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
Tdense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Vdense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vdense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ndense_features/directorId_embedding/directorId_embedding_weights/strided_sliceStridedSliceOdense_features/directorId_embedding/directorId_embedding_weights/Shape:output:0]dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack:output:0_dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_1:output:0_dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Hdense_features/directorId_embedding/directorId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdense_features/directorId_embedding/directorId_embedding_weights/stackPackQdense_features/directorId_embedding/directorId_embedding_weights/stack/0:output:0Wdense_features/directorId_embedding/directorId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Edense_features/directorId_embedding/directorId_embedding_weights/TileTileSdense_features/directorId_embedding/directorId_embedding_weights/Reshape_1:output:0Odense_features/directorId_embedding/directorId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
Kdense_features/directorId_embedding/directorId_embedding_weights/zeros_like	ZerosLikeadense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
@dense_features/directorId_embedding/directorId_embedding_weightsSelectNdense_features/directorId_embedding/directorId_embedding_weights/Tile:output:0Odense_features/directorId_embedding/directorId_embedding_weights/zeros_like:y:0adense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Gdense_features/directorId_embedding/directorId_embedding_weights/Cast_1CastHdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Ndense_features/directorId_embedding/directorId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Mdense_features/directorId_embedding/directorId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Hdense_features/directorId_embedding/directorId_embedding_weights/Slice_1SliceKdense_features/directorId_embedding/directorId_embedding_weights/Cast_1:y:0Wdense_features/directorId_embedding/directorId_embedding_weights/Slice_1/begin:output:0Vdense_features/directorId_embedding/directorId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Hdense_features/directorId_embedding/directorId_embedding_weights/Shape_1ShapeIdense_features/directorId_embedding/directorId_embedding_weights:output:0*
T0*
_output_shapes
::���
Ndense_features/directorId_embedding/directorId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Mdense_features/directorId_embedding/directorId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hdense_features/directorId_embedding/directorId_embedding_weights/Slice_2SliceQdense_features/directorId_embedding/directorId_embedding_weights/Shape_1:output:0Wdense_features/directorId_embedding/directorId_embedding_weights/Slice_2/begin:output:0Vdense_features/directorId_embedding/directorId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Ldense_features/directorId_embedding/directorId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gdense_features/directorId_embedding/directorId_embedding_weights/concatConcatV2Qdense_features/directorId_embedding/directorId_embedding_weights/Slice_1:output:0Qdense_features/directorId_embedding/directorId_embedding_weights/Slice_2:output:0Udense_features/directorId_embedding/directorId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Jdense_features/directorId_embedding/directorId_embedding_weights/Reshape_2ReshapeIdense_features/directorId_embedding/directorId_embedding_weights:output:0Pdense_features/directorId_embedding/directorId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
)dense_features/directorId_embedding/ShapeShapeSdense_features/directorId_embedding/directorId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::���
7dense_features/directorId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9dense_features/directorId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9dense_features/directorId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1dense_features/directorId_embedding/strided_sliceStridedSlice2dense_features/directorId_embedding/Shape:output:0@dense_features/directorId_embedding/strided_slice/stack:output:0Bdense_features/directorId_embedding/strided_slice/stack_1:output:0Bdense_features/directorId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3dense_features/directorId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
1dense_features/directorId_embedding/Reshape/shapePack:dense_features/directorId_embedding/strided_slice:output:0<dense_features/directorId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
+dense_features/directorId_embedding/ReshapeReshapeSdense_features/directorId_embedding/directorId_embedding_weights/Reshape_2:output:0:dense_features/directorId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
k
 dense_features/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
dense_features/concat/concatIdentity4dense_features/directorId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
{
0dense_features_1/userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_userid9dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackHdense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshapeSparseReshapeAdense_features_1/userId_embedding/to_sparse_input/indices:index:0Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity,dense_features_1/userId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualZdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Rdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
@dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereKdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeHdense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Qdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Cdense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentityWdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0]dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherjdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281797]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281797*'
_output_shapes
:���������
*
dtype0�
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281797*'
_output_shapes
:���������
�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityudense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0_dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshapexdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
@dense_features_1/userId_embedding/userId_embedding_weights/ShapeShape[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?dense_features_1/userId_embedding/userId_embedding_weights/TileTileMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Idense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLike[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
:dense_features_1/userId_embedding/userId_embedding_weightsSelectHdense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Idense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
::���
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Adense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Odense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
'dense_features_1/userId_embedding/ShapeShapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��
5dense_features_1/userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_1/userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
m
"dense_features_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2%dense_features/concat/concat:output:0'dense_features_1/concat/concat:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOpj^dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupd^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2�
idense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupidense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_userid:V R
#
_output_shapes
:���������
+
_user_specified_nameinputs_directorid
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_282473

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�}
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282420
features_directorid
features_useridm
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282380:
��

identity��RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupj
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
userId_embedding/ExpandDims
ExpandDimsfeatures_userid(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������z
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:���������
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:���������z
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282380LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282380*'
_output_shapes
:���������
*
dtype0�
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282380*'
_output_shapes
:���������
�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
::���
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��n
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOpS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
�
�
A__inference_model_layer_call_and_return_conditional_losses_281419

inputs
inputs_1(
dense_features_281396:	�
+
dense_features_1_281399:
��

dense_281403:

dense_281405:
 
dense_1_281408:


dense_1_281410:
 
dense_2_281413:

dense_2_281415:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_281396*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_281037�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_1_281399*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281126�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_281137�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_281403dense_281405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_281150�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_281408dense_1_281410*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_281167�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_281413dense_2_281415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_281184w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
A__inference_model_layer_call_and_return_conditional_losses_282048
inputs_directorid
inputs_userid�
pdense_features_directorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281905:	�
~
jdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281985:
��
6
$dense_matmul_readvariableop_resource:
3
%dense_biasadd_readvariableop_resource:
8
&dense_1_matmul_readvariableop_resource:

5
'dense_1_biasadd_readvariableop_resource:
8
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�idense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup�cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup}
2dense_features/directorId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
.dense_features/directorId_embedding/ExpandDims
ExpandDimsinputs_directorid;dense_features/directorId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Bdense_features/directorId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
<dense_features/directorId_embedding/to_sparse_input/NotEqualNotEqual7dense_features/directorId_embedding/ExpandDims:output:0Kdense_features/directorId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
;dense_features/directorId_embedding/to_sparse_input/indicesWhere@dense_features/directorId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
:dense_features/directorId_embedding/to_sparse_input/valuesGatherNd7dense_features/directorId_embedding/ExpandDims:output:0Cdense_features/directorId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
?dense_features/directorId_embedding/to_sparse_input/dense_shapeShape7dense_features/directorId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
*dense_features/directorId_embedding/valuesCastCdense_features/directorId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
Ldense_features/directorId_embedding/directorId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Kdense_features/directorId_embedding/directorId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Fdense_features/directorId_embedding/directorId_embedding_weights/SliceSliceHdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0Udense_features/directorId_embedding/directorId_embedding_weights/Slice/begin:output:0Tdense_features/directorId_embedding/directorId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Fdense_features/directorId_embedding/directorId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Edense_features/directorId_embedding/directorId_embedding_weights/ProdProdOdense_features/directorId_embedding/directorId_embedding_weights/Slice:output:0Odense_features/directorId_embedding/directorId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Qdense_features/directorId_embedding/directorId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Ndense_features/directorId_embedding/directorId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Idense_features/directorId_embedding/directorId_embedding_weights/GatherV2GatherV2Hdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0Zdense_features/directorId_embedding/directorId_embedding_weights/GatherV2/indices:output:0Wdense_features/directorId_embedding/directorId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Gdense_features/directorId_embedding/directorId_embedding_weights/Cast/xPackNdense_features/directorId_embedding/directorId_embedding_weights/Prod:output:0Rdense_features/directorId_embedding/directorId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Ndense_features/directorId_embedding/directorId_embedding_weights/SparseReshapeSparseReshapeCdense_features/directorId_embedding/to_sparse_input/indices:index:0Hdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0Pdense_features/directorId_embedding/directorId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wdense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/IdentityIdentity.dense_features/directorId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
Odense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Mdense_features/directorId_embedding/directorId_embedding_weights/GreaterEqualGreaterEqual`dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0Xdense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Fdense_features/directorId_embedding/directorId_embedding_weights/WhereWhereQdense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Ndense_features/directorId_embedding/directorId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hdense_features/directorId_embedding/directorId_embedding_weights/ReshapeReshapeNdense_features/directorId_embedding/directorId_embedding_weights/Where:index:0Wdense_features/directorId_embedding/directorId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Pdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1GatherV2_dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape:output_indices:0Qdense_features/directorId_embedding/directorId_embedding_weights/Reshape:output:0Ydense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Pdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2GatherV2`dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0Qdense_features/directorId_embedding/directorId_embedding_weights/Reshape:output:0Ydense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Idense_features/directorId_embedding/directorId_embedding_weights/IdentityIdentity]dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
hdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1:output:0Tdense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2:output:0Rdense_features/directorId_embedding/directorId_embedding_weights/Identity:output:0cdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
ldense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
ndense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
ndense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
fdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceydense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0udense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
_dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/UniqueUniquexdense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
idense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherpdense_features_directorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281905cdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*�
_classy
wuloc:@dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281905*'
_output_shapes
:���������
*
dtype0�
rdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityrdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*�
_classy
wuloc:@dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281905*'
_output_shapes
:���������
�
tdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity{dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
Xdense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0edense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:idx:0odense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
Pdense_features/directorId_embedding/directorId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Jdense_features/directorId_embedding/directorId_embedding_weights/Reshape_1Reshape~dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ydense_features/directorId_embedding/directorId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Fdense_features/directorId_embedding/directorId_embedding_weights/ShapeShapeadense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
Tdense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Vdense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vdense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ndense_features/directorId_embedding/directorId_embedding_weights/strided_sliceStridedSliceOdense_features/directorId_embedding/directorId_embedding_weights/Shape:output:0]dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack:output:0_dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_1:output:0_dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Hdense_features/directorId_embedding/directorId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdense_features/directorId_embedding/directorId_embedding_weights/stackPackQdense_features/directorId_embedding/directorId_embedding_weights/stack/0:output:0Wdense_features/directorId_embedding/directorId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Edense_features/directorId_embedding/directorId_embedding_weights/TileTileSdense_features/directorId_embedding/directorId_embedding_weights/Reshape_1:output:0Odense_features/directorId_embedding/directorId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
Kdense_features/directorId_embedding/directorId_embedding_weights/zeros_like	ZerosLikeadense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
@dense_features/directorId_embedding/directorId_embedding_weightsSelectNdense_features/directorId_embedding/directorId_embedding_weights/Tile:output:0Odense_features/directorId_embedding/directorId_embedding_weights/zeros_like:y:0adense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Gdense_features/directorId_embedding/directorId_embedding_weights/Cast_1CastHdense_features/directorId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Ndense_features/directorId_embedding/directorId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Mdense_features/directorId_embedding/directorId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Hdense_features/directorId_embedding/directorId_embedding_weights/Slice_1SliceKdense_features/directorId_embedding/directorId_embedding_weights/Cast_1:y:0Wdense_features/directorId_embedding/directorId_embedding_weights/Slice_1/begin:output:0Vdense_features/directorId_embedding/directorId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Hdense_features/directorId_embedding/directorId_embedding_weights/Shape_1ShapeIdense_features/directorId_embedding/directorId_embedding_weights:output:0*
T0*
_output_shapes
::���
Ndense_features/directorId_embedding/directorId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Mdense_features/directorId_embedding/directorId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hdense_features/directorId_embedding/directorId_embedding_weights/Slice_2SliceQdense_features/directorId_embedding/directorId_embedding_weights/Shape_1:output:0Wdense_features/directorId_embedding/directorId_embedding_weights/Slice_2/begin:output:0Vdense_features/directorId_embedding/directorId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Ldense_features/directorId_embedding/directorId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gdense_features/directorId_embedding/directorId_embedding_weights/concatConcatV2Qdense_features/directorId_embedding/directorId_embedding_weights/Slice_1:output:0Qdense_features/directorId_embedding/directorId_embedding_weights/Slice_2:output:0Udense_features/directorId_embedding/directorId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Jdense_features/directorId_embedding/directorId_embedding_weights/Reshape_2ReshapeIdense_features/directorId_embedding/directorId_embedding_weights:output:0Pdense_features/directorId_embedding/directorId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
)dense_features/directorId_embedding/ShapeShapeSdense_features/directorId_embedding/directorId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::���
7dense_features/directorId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9dense_features/directorId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9dense_features/directorId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1dense_features/directorId_embedding/strided_sliceStridedSlice2dense_features/directorId_embedding/Shape:output:0@dense_features/directorId_embedding/strided_slice/stack:output:0Bdense_features/directorId_embedding/strided_slice/stack_1:output:0Bdense_features/directorId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3dense_features/directorId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
1dense_features/directorId_embedding/Reshape/shapePack:dense_features/directorId_embedding/strided_slice:output:0<dense_features/directorId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
+dense_features/directorId_embedding/ReshapeReshapeSdense_features/directorId_embedding/directorId_embedding_weights/Reshape_2:output:0:dense_features/directorId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
k
 dense_features/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
dense_features/concat/concatIdentity4dense_features/directorId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
{
0dense_features_1/userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
,dense_features_1/userId_embedding/ExpandDims
ExpandDimsinputs_userid9dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
@dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
:dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual5dense_features_1/userId_embedding/ExpandDims:output:0Idense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
9dense_features_1/userId_embedding/to_sparse_input/indicesWhere>dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
8dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd5dense_features_1/userId_embedding/ExpandDims:output:0Adense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
=dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape5dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
(dense_features_1/userId_embedding/valuesCastAdense_features_1/userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
Fdense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Edense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
@dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Odense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
@dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
?dense_features_1/userId_embedding/userId_embedding_weights/ProdProdIdense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Idense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Kdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Hdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Cdense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Tdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Adense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackHdense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/SparseReshapeSparseReshapeAdense_features_1/userId_embedding/to_sparse_input/indices:index:0Fdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Qdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity,dense_features_1/userId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
Idense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Gdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualZdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Rdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
@dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereKdense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Hdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeHdense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Qdense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2Ydense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Jdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Edense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2Zdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Sdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Cdense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentityWdense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Tdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
bdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNdense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Ndense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Ldense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0]dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
fdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
hdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
`dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicesdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0odense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0qdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Ydense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquerdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherjdense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281985]dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281985*'
_output_shapes
:���������
*
dtype0�
ldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityldense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*}
_classs
qoloc:@dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281985*'
_output_shapes
:���������
�
ndense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identityudense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
Rdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0_dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0idense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
Jdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshapexdense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Sdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
@dense_features_1/userId_embedding/userId_embedding_weights/ShapeShape[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
Ndense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Pdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Hdense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceIdense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0Wdense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0Ydense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Bdense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
@dense_features_1/userId_embedding/userId_embedding_weights/stackPackKdense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
?dense_features_1/userId_embedding/userId_embedding_weights/TileTileMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Idense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
Edense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLike[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
:dense_features_1/userId_embedding/userId_embedding_weightsSelectHdense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Idense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0[dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Adense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastFdense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceEdense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Bdense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
::���
Hdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Gdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Bdense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceKdense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Qdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Pdense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Fdense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Adense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Kdense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Odense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ddense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeCdense_features_1/userId_embedding/userId_embedding_weights:output:0Jdense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
'dense_features_1/userId_embedding/ShapeShapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��
5dense_features_1/userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/dense_features_1/userId_embedding/strided_sliceStridedSlice0dense_features_1/userId_embedding/Shape:output:0>dense_features_1/userId_embedding/strided_slice/stack:output:0@dense_features_1/userId_embedding/strided_slice/stack_1:output:0@dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features_1/userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
/dense_features_1/userId_embedding/Reshape/shapePack8dense_features_1/userId_embedding/strided_slice:output:0:dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
)dense_features_1/userId_embedding/ReshapeReshapeMdense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:08dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
m
"dense_features_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
dense_features_1/concat/concatIdentity2dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2%dense_features/concat/concat:output:0'dense_features_1/concat/concat:output:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOpj^dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupd^dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2�
idense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupidense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
cdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupcdense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_userid:V R
#
_output_shapes
:���������
+
_user_specified_nameinputs_directorid
�
�
A__inference_model_layer_call_and_return_conditional_losses_281388

directorid

userid(
dense_features_281280:	�
+
dense_features_1_281368:
��

dense_281372:

dense_281374:
 
dense_1_281377:


dense_1_281379:
 
dense_2_281382:

dense_2_281384:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCall
directoriduseriddense_features_281280*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_281279�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCall
directoriduseriddense_features_1_281368*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281367�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_281137�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_281372dense_281374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_281150�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_281377dense_1_281379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_281167�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_281382dense_2_281384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_281184w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:KG
#
_output_shapes
:���������
 
_user_specified_nameuserId:O K
#
_output_shapes
:���������
$
_user_specified_name
directorId
�
s
G__inference_concatenate_layer_call_and_return_conditional_losses_282433
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������
:���������
:QM
'
_output_shapes
:���������

"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������

"
_user_specified_name
inputs_0
�
�
(__inference_dense_1_layer_call_fn_282462

inputs
unknown:


	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_281167o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
��
�
J__inference_dense_features_layer_call_and_return_conditional_losses_282149
features_directorid
features_useridt
adirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282109:	�

identity��ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupn
#directorId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
directorId_embedding/ExpandDims
ExpandDimsfeatures_directorid,directorId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������~
3directorId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
-directorId_embedding/to_sparse_input/NotEqualNotEqual(directorId_embedding/ExpandDims:output:0<directorId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
,directorId_embedding/to_sparse_input/indicesWhere1directorId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
+directorId_embedding/to_sparse_input/valuesGatherNd(directorId_embedding/ExpandDims:output:04directorId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
0directorId_embedding/to_sparse_input/dense_shapeShape(directorId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
directorId_embedding/valuesCast4directorId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
=directorId_embedding/directorId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
<directorId_embedding/directorId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
7directorId_embedding/directorId_embedding_weights/SliceSlice9directorId_embedding/to_sparse_input/dense_shape:output:0FdirectorId_embedding/directorId_embedding_weights/Slice/begin:output:0EdirectorId_embedding/directorId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
7directorId_embedding/directorId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
6directorId_embedding/directorId_embedding_weights/ProdProd@directorId_embedding/directorId_embedding_weights/Slice:output:0@directorId_embedding/directorId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
BdirectorId_embedding/directorId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
?directorId_embedding/directorId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:directorId_embedding/directorId_embedding_weights/GatherV2GatherV29directorId_embedding/to_sparse_input/dense_shape:output:0KdirectorId_embedding/directorId_embedding_weights/GatherV2/indices:output:0HdirectorId_embedding/directorId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
8directorId_embedding/directorId_embedding_weights/Cast/xPack?directorId_embedding/directorId_embedding_weights/Prod:output:0CdirectorId_embedding/directorId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/SparseReshapeSparseReshape4directorId_embedding/to_sparse_input/indices:index:09directorId_embedding/to_sparse_input/dense_shape:output:0AdirectorId_embedding/directorId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
HdirectorId_embedding/directorId_embedding_weights/SparseReshape/IdentityIdentitydirectorId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
@directorId_embedding/directorId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
>directorId_embedding/directorId_embedding_weights/GreaterEqualGreaterEqualQdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0IdirectorId_embedding/directorId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/WhereWhereBdirectorId_embedding/directorId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
?directorId_embedding/directorId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/ReshapeReshape?directorId_embedding/directorId_embedding_weights/Where:index:0HdirectorId_embedding/directorId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_1GatherV2PdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_indices:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_2GatherV2QdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
:directorId_embedding/directorId_embedding_weights/IdentityIdentityNdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
KdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
YdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsEdirectorId_embedding/directorId_embedding_weights/GatherV2_1:output:0EdirectorId_embedding/directorId_embedding_weights/GatherV2_2:output:0CdirectorId_embedding/directorId_embedding_weights/Identity:output:0TdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
]directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
WdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicejdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0fdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
PdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/UniqueUniqueidirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatheradirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282109TdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282109*'
_output_shapes
:���������
*
dtype0�
cdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitycdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282109*'
_output_shapes
:���������
�
edirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityldirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
IdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanndirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0VdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:idx:0`directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
AdirectorId_embedding/directorId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
;directorId_embedding/directorId_embedding_weights/Reshape_1ReshapeodirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0JdirectorId_embedding/directorId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/ShapeShapeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
EdirectorId_embedding/directorId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?directorId_embedding/directorId_embedding_weights/strided_sliceStridedSlice@directorId_embedding/directorId_embedding_weights/Shape:output:0NdirectorId_embedding/directorId_embedding_weights/strided_slice/stack:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9directorId_embedding/directorId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
7directorId_embedding/directorId_embedding_weights/stackPackBdirectorId_embedding/directorId_embedding_weights/stack/0:output:0HdirectorId_embedding/directorId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
6directorId_embedding/directorId_embedding_weights/TileTileDdirectorId_embedding/directorId_embedding_weights/Reshape_1:output:0@directorId_embedding/directorId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
<directorId_embedding/directorId_embedding_weights/zeros_like	ZerosLikeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
1directorId_embedding/directorId_embedding_weightsSelect?directorId_embedding/directorId_embedding_weights/Tile:output:0@directorId_embedding/directorId_embedding_weights/zeros_like:y:0RdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
8directorId_embedding/directorId_embedding_weights/Cast_1Cast9directorId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>directorId_embedding/directorId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9directorId_embedding/directorId_embedding_weights/Slice_1Slice<directorId_embedding/directorId_embedding_weights/Cast_1:y:0HdirectorId_embedding/directorId_embedding_weights/Slice_1/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
9directorId_embedding/directorId_embedding_weights/Shape_1Shape:directorId_embedding/directorId_embedding_weights:output:0*
T0*
_output_shapes
::���
?directorId_embedding/directorId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
>directorId_embedding/directorId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/Slice_2SliceBdirectorId_embedding/directorId_embedding_weights/Shape_1:output:0HdirectorId_embedding/directorId_embedding_weights/Slice_2/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:
=directorId_embedding/directorId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
8directorId_embedding/directorId_embedding_weights/concatConcatV2BdirectorId_embedding/directorId_embedding_weights/Slice_1:output:0BdirectorId_embedding/directorId_embedding_weights/Slice_2:output:0FdirectorId_embedding/directorId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
;directorId_embedding/directorId_embedding_weights/Reshape_2Reshape:directorId_embedding/directorId_embedding_weights:output:0AdirectorId_embedding/directorId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
directorId_embedding/ShapeShapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��r
(directorId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*directorId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*directorId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"directorId_embedding/strided_sliceStridedSlice#directorId_embedding/Shape:output:01directorId_embedding/strided_slice/stack:output:03directorId_embedding/strided_slice/stack_1:output:03directorId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$directorId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"directorId_embedding/Reshape/shapePack+directorId_embedding/strided_slice:output:0-directorId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
directorId_embedding/ReshapeReshapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0+directorId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������r
concat/concatIdentity%directorId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp[^directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_281167

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
X
,__inference_concatenate_layer_call_fn_282426
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_281137`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������
:���������
:QM
'
_output_shapes
:���������

"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������

"
_user_specified_name
inputs_0
�
�
&__inference_dense_layer_call_fn_282442

inputs
unknown:

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_281150o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_dense_2_layer_call_fn_282482

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_281184o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
A__inference_model_layer_call_and_return_conditional_losses_281468

inputs
inputs_1(
dense_features_281445:	�
+
dense_features_1_281448:
��

dense_281452:

dense_281454:
 
dense_1_281457:


dense_1_281459:
 
dense_2_281462:

dense_2_281464:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_281445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_281279�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1dense_features_1_281448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281367�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_281137�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_281452dense_281454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_281150�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_281457dense_1_281459*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_281167�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_281462dense_2_281464*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_281184w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:KG
#
_output_shapes
:���������
 
_user_specified_nameinputs:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
&__inference_model_layer_call_fn_281438

directorid

userid
unknown:	�

	unknown_0:
��

	unknown_1:

	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
directoriduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_281419o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:KG
#
_output_shapes
:���������
 
_user_specified_nameuserId:O K
#
_output_shapes
:���������
$
_user_specified_name
directorId
��
�
J__inference_dense_features_layer_call_and_return_conditional_losses_282234
features_directorid
features_useridt
adirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282194:	�

identity��ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupn
#directorId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
directorId_embedding/ExpandDims
ExpandDimsfeatures_directorid,directorId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������~
3directorId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
-directorId_embedding/to_sparse_input/NotEqualNotEqual(directorId_embedding/ExpandDims:output:0<directorId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
,directorId_embedding/to_sparse_input/indicesWhere1directorId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
+directorId_embedding/to_sparse_input/valuesGatherNd(directorId_embedding/ExpandDims:output:04directorId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
0directorId_embedding/to_sparse_input/dense_shapeShape(directorId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
directorId_embedding/valuesCast4directorId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
=directorId_embedding/directorId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
<directorId_embedding/directorId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
7directorId_embedding/directorId_embedding_weights/SliceSlice9directorId_embedding/to_sparse_input/dense_shape:output:0FdirectorId_embedding/directorId_embedding_weights/Slice/begin:output:0EdirectorId_embedding/directorId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
7directorId_embedding/directorId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
6directorId_embedding/directorId_embedding_weights/ProdProd@directorId_embedding/directorId_embedding_weights/Slice:output:0@directorId_embedding/directorId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
BdirectorId_embedding/directorId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
?directorId_embedding/directorId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:directorId_embedding/directorId_embedding_weights/GatherV2GatherV29directorId_embedding/to_sparse_input/dense_shape:output:0KdirectorId_embedding/directorId_embedding_weights/GatherV2/indices:output:0HdirectorId_embedding/directorId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
8directorId_embedding/directorId_embedding_weights/Cast/xPack?directorId_embedding/directorId_embedding_weights/Prod:output:0CdirectorId_embedding/directorId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/SparseReshapeSparseReshape4directorId_embedding/to_sparse_input/indices:index:09directorId_embedding/to_sparse_input/dense_shape:output:0AdirectorId_embedding/directorId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
HdirectorId_embedding/directorId_embedding_weights/SparseReshape/IdentityIdentitydirectorId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
@directorId_embedding/directorId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
>directorId_embedding/directorId_embedding_weights/GreaterEqualGreaterEqualQdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0IdirectorId_embedding/directorId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/WhereWhereBdirectorId_embedding/directorId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
?directorId_embedding/directorId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/ReshapeReshape?directorId_embedding/directorId_embedding_weights/Where:index:0HdirectorId_embedding/directorId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_1GatherV2PdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_indices:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_2GatherV2QdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
:directorId_embedding/directorId_embedding_weights/IdentityIdentityNdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
KdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
YdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsEdirectorId_embedding/directorId_embedding_weights/GatherV2_1:output:0EdirectorId_embedding/directorId_embedding_weights/GatherV2_2:output:0CdirectorId_embedding/directorId_embedding_weights/Identity:output:0TdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
]directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
WdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicejdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0fdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
PdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/UniqueUniqueidirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatheradirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_282194TdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282194*'
_output_shapes
:���������
*
dtype0�
cdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitycdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/282194*'
_output_shapes
:���������
�
edirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityldirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
IdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanndirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0VdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:idx:0`directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
AdirectorId_embedding/directorId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
;directorId_embedding/directorId_embedding_weights/Reshape_1ReshapeodirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0JdirectorId_embedding/directorId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/ShapeShapeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
EdirectorId_embedding/directorId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?directorId_embedding/directorId_embedding_weights/strided_sliceStridedSlice@directorId_embedding/directorId_embedding_weights/Shape:output:0NdirectorId_embedding/directorId_embedding_weights/strided_slice/stack:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9directorId_embedding/directorId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
7directorId_embedding/directorId_embedding_weights/stackPackBdirectorId_embedding/directorId_embedding_weights/stack/0:output:0HdirectorId_embedding/directorId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
6directorId_embedding/directorId_embedding_weights/TileTileDdirectorId_embedding/directorId_embedding_weights/Reshape_1:output:0@directorId_embedding/directorId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
<directorId_embedding/directorId_embedding_weights/zeros_like	ZerosLikeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
1directorId_embedding/directorId_embedding_weightsSelect?directorId_embedding/directorId_embedding_weights/Tile:output:0@directorId_embedding/directorId_embedding_weights/zeros_like:y:0RdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
8directorId_embedding/directorId_embedding_weights/Cast_1Cast9directorId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>directorId_embedding/directorId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9directorId_embedding/directorId_embedding_weights/Slice_1Slice<directorId_embedding/directorId_embedding_weights/Cast_1:y:0HdirectorId_embedding/directorId_embedding_weights/Slice_1/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
9directorId_embedding/directorId_embedding_weights/Shape_1Shape:directorId_embedding/directorId_embedding_weights:output:0*
T0*
_output_shapes
::���
?directorId_embedding/directorId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
>directorId_embedding/directorId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/Slice_2SliceBdirectorId_embedding/directorId_embedding_weights/Shape_1:output:0HdirectorId_embedding/directorId_embedding_weights/Slice_2/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:
=directorId_embedding/directorId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
8directorId_embedding/directorId_embedding_weights/concatConcatV2BdirectorId_embedding/directorId_embedding_weights/Slice_1:output:0BdirectorId_embedding/directorId_embedding_weights/Slice_2:output:0FdirectorId_embedding/directorId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
;directorId_embedding/directorId_embedding_weights/Reshape_2Reshape:directorId_embedding/directorId_embedding_weights:output:0AdirectorId_embedding/directorId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
directorId_embedding/ShapeShapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��r
(directorId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*directorId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*directorId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"directorId_embedding/strided_sliceStridedSlice#directorId_embedding/Shape:output:01directorId_embedding/strided_slice/stack:output:03directorId_embedding/strided_slice/stack_1:output:03directorId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$directorId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"directorId_embedding/Reshape/shapePack+directorId_embedding/strided_slice:output:0-directorId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
directorId_embedding/ReshapeReshapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0+directorId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������r
concat/concatIdentity%directorId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp[^directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
��
�	
!__inference__wrapped_model_280947

directorid

userid�
vmodel_dense_features_directorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_280804:	�
�
pmodel_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_280884:
��
<
*model_dense_matmul_readvariableop_resource:
9
+model_dense_biasadd_readvariableop_resource:
>
,model_dense_1_matmul_readvariableop_resource:

;
-model_dense_1_biasadd_readvariableop_resource:
>
,model_dense_2_matmul_readvariableop_resource:
;
-model_dense_2_biasadd_readvariableop_resource:
identity��"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp�omodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup�imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup�
8model/dense_features/directorId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
4model/dense_features/directorId_embedding/ExpandDims
ExpandDims
directoridAmodel/dense_features/directorId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Hmodel/dense_features/directorId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
Bmodel/dense_features/directorId_embedding/to_sparse_input/NotEqualNotEqual=model/dense_features/directorId_embedding/ExpandDims:output:0Qmodel/dense_features/directorId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
Amodel/dense_features/directorId_embedding/to_sparse_input/indicesWhereFmodel/dense_features/directorId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
@model/dense_features/directorId_embedding/to_sparse_input/valuesGatherNd=model/dense_features/directorId_embedding/ExpandDims:output:0Imodel/dense_features/directorId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
Emodel/dense_features/directorId_embedding/to_sparse_input/dense_shapeShape=model/dense_features/directorId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
0model/dense_features/directorId_embedding/valuesCastImodel/dense_features/directorId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
Rmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Qmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Lmodel/dense_features/directorId_embedding/directorId_embedding_weights/SliceSliceNmodel/dense_features/directorId_embedding/to_sparse_input/dense_shape:output:0[model/dense_features/directorId_embedding/directorId_embedding_weights/Slice/begin:output:0Zmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Lmodel/dense_features/directorId_embedding/directorId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Kmodel/dense_features/directorId_embedding/directorId_embedding_weights/ProdProdUmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice:output:0Umodel/dense_features/directorId_embedding/directorId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Wmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Tmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Omodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2GatherV2Nmodel/dense_features/directorId_embedding/to_sparse_input/dense_shape:output:0`model/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2/indices:output:0]model/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Mmodel/dense_features/directorId_embedding/directorId_embedding_weights/Cast/xPackTmodel/dense_features/directorId_embedding/directorId_embedding_weights/Prod:output:0Xmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Tmodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseReshapeSparseReshapeImodel/dense_features/directorId_embedding/to_sparse_input/indices:index:0Nmodel/dense_features/directorId_embedding/to_sparse_input/dense_shape:output:0Vmodel/dense_features/directorId_embedding/directorId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
]model/dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/IdentityIdentity4model/dense_features/directorId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
Umodel/dense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Smodel/dense_features/directorId_embedding/directorId_embedding_weights/GreaterEqualGreaterEqualfmodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0^model/dense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Lmodel/dense_features/directorId_embedding/directorId_embedding_weights/WhereWhereWmodel/dense_features/directorId_embedding/directorId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Tmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Nmodel/dense_features/directorId_embedding/directorId_embedding_weights/ReshapeReshapeTmodel/dense_features/directorId_embedding/directorId_embedding_weights/Where:index:0]model/dense_features/directorId_embedding/directorId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Vmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Qmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1GatherV2emodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape:output_indices:0Wmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape:output:0_model/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Vmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Qmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2GatherV2fmodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0Wmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape:output:0_model/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Omodel/dense_features/directorId_embedding/directorId_embedding_weights/IdentityIdentitycmodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
`model/dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
nmodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsZmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_1:output:0Zmodel/dense_features/directorId_embedding/directorId_embedding_weights/GatherV2_2:output:0Xmodel/dense_features/directorId_embedding/directorId_embedding_weights/Identity:output:0imodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
rmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
tmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
tmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
lmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicemodel/dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0{model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0}model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0}model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
emodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/UniqueUnique~model/dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
omodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGathervmodel_dense_features_directorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_280804imodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*�
_class
}{loc:@model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/280804*'
_output_shapes
:���������
*
dtype0�
xmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityxmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*�
_class
}{loc:@model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/280804*'
_output_shapes
:���������
�
zmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity�model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
^model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparseSparseSegmentMean�model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0kmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:idx:0umodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
Vmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Pmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape_1Reshape�model/dense_features/directorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0_model/dense_features/directorId_embedding/directorId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Lmodel/dense_features/directorId_embedding/directorId_embedding_weights/ShapeShapegmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
Zmodel/dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
\model/dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
\model/dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Tmodel/dense_features/directorId_embedding/directorId_embedding_weights/strided_sliceStridedSliceUmodel/dense_features/directorId_embedding/directorId_embedding_weights/Shape:output:0cmodel/dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack:output:0emodel/dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_1:output:0emodel/dense_features/directorId_embedding/directorId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Nmodel/dense_features/directorId_embedding/directorId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Lmodel/dense_features/directorId_embedding/directorId_embedding_weights/stackPackWmodel/dense_features/directorId_embedding/directorId_embedding_weights/stack/0:output:0]model/dense_features/directorId_embedding/directorId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Kmodel/dense_features/directorId_embedding/directorId_embedding_weights/TileTileYmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape_1:output:0Umodel/dense_features/directorId_embedding/directorId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
Qmodel/dense_features/directorId_embedding/directorId_embedding_weights/zeros_like	ZerosLikegmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Fmodel/dense_features/directorId_embedding/directorId_embedding_weightsSelectTmodel/dense_features/directorId_embedding/directorId_embedding_weights/Tile:output:0Umodel/dense_features/directorId_embedding/directorId_embedding_weights/zeros_like:y:0gmodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Mmodel/dense_features/directorId_embedding/directorId_embedding_weights/Cast_1CastNmodel/dense_features/directorId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Tmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Smodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Nmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_1SliceQmodel/dense_features/directorId_embedding/directorId_embedding_weights/Cast_1:y:0]model/dense_features/directorId_embedding/directorId_embedding_weights/Slice_1/begin:output:0\model/dense_features/directorId_embedding/directorId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Nmodel/dense_features/directorId_embedding/directorId_embedding_weights/Shape_1ShapeOmodel/dense_features/directorId_embedding/directorId_embedding_weights:output:0*
T0*
_output_shapes
::���
Tmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Smodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Nmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_2SliceWmodel/dense_features/directorId_embedding/directorId_embedding_weights/Shape_1:output:0]model/dense_features/directorId_embedding/directorId_embedding_weights/Slice_2/begin:output:0\model/dense_features/directorId_embedding/directorId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Rmodel/dense_features/directorId_embedding/directorId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Mmodel/dense_features/directorId_embedding/directorId_embedding_weights/concatConcatV2Wmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_1:output:0Wmodel/dense_features/directorId_embedding/directorId_embedding_weights/Slice_2:output:0[model/dense_features/directorId_embedding/directorId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Pmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape_2ReshapeOmodel/dense_features/directorId_embedding/directorId_embedding_weights:output:0Vmodel/dense_features/directorId_embedding/directorId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
/model/dense_features/directorId_embedding/ShapeShapeYmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::���
=model/dense_features/directorId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?model/dense_features/directorId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?model/dense_features/directorId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7model/dense_features/directorId_embedding/strided_sliceStridedSlice8model/dense_features/directorId_embedding/Shape:output:0Fmodel/dense_features/directorId_embedding/strided_slice/stack:output:0Hmodel/dense_features/directorId_embedding/strided_slice/stack_1:output:0Hmodel/dense_features/directorId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9model/dense_features/directorId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
7model/dense_features/directorId_embedding/Reshape/shapePack@model/dense_features/directorId_embedding/strided_slice:output:0Bmodel/dense_features/directorId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
1model/dense_features/directorId_embedding/ReshapeReshapeYmodel/dense_features/directorId_embedding/directorId_embedding_weights/Reshape_2:output:0@model/dense_features/directorId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
q
&model/dense_features/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"model/dense_features/concat/concatIdentity:model/dense_features/directorId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
�
6model/dense_features_1/userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
2model/dense_features_1/userId_embedding/ExpandDims
ExpandDimsuserid?model/dense_features_1/userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Fmodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
@model/dense_features_1/userId_embedding/to_sparse_input/NotEqualNotEqual;model/dense_features_1/userId_embedding/ExpandDims:output:0Omodel/dense_features_1/userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
?model/dense_features_1/userId_embedding/to_sparse_input/indicesWhereDmodel/dense_features_1/userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
>model/dense_features_1/userId_embedding/to_sparse_input/valuesGatherNd;model/dense_features_1/userId_embedding/ExpandDims:output:0Gmodel/dense_features_1/userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
Cmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shapeShape;model/dense_features_1/userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
.model/dense_features_1/userId_embedding/valuesCastGmodel/dense_features_1/userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/SliceSliceLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/begin:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/ProdProdOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2GatherV2Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/indices:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/xPackNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Prod:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshapeSparseReshapeGmodel/dense_features_1/userId_embedding/to_sparse_input/indices:index:0Lmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentity2model/dense_features_1/userId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
Omodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqual`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/WhereWhereQmodel/dense_features_1/userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/ReshapeReshapeNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Where:index:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1GatherV2_model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_indices:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2GatherV2`model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape:output:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
Imodel/dense_features_1/userId_embedding/userId_embedding_weights/IdentityIdentity]model/dense_features_1/userId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
Zmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
hmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsTmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_1:output:0Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/GatherV2_2:output:0Rmodel/dense_features_1/userId_embedding/userId_embedding_weights/Identity:output:0cmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
lmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
nmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
fmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceymodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0umodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0wmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
_model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniquexmodel/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherpmodel_dense_features_1_userid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_280884cmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*�
_classy
wuloc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/280884*'
_output_shapes
:���������
*
dtype0�
rmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityrmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*�
_classy
wuloc:@model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/280884*'
_output_shapes
:���������
�
tmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identity{model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
Xmodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMean}model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0emodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0omodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1Reshape~model/dense_features_1/userId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0Ymodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/ShapeShapeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
Tmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_sliceStridedSliceOmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape:output:0]model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0_model/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fmodel/dense_features_1/userId_embedding/userId_embedding_weights/stackPackQmodel/dense_features_1/userId_embedding/userId_embedding_weights/stack/0:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Emodel/dense_features_1/userId_embedding/userId_embedding_weights/TileTileSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_1:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
Kmodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeamodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
@model/dense_features_1/userId_embedding/userId_embedding_weightsSelectNmodel/dense_features_1/userId_embedding/userId_embedding_weights/Tile:output:0Omodel/dense_features_1/userId_embedding/userId_embedding_weights/zeros_like:y:0amodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1CastLmodel/dense_features_1/userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1SliceKmodel/dense_features_1/userId_embedding/userId_embedding_weights/Cast_1:y:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1ShapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
::���
Nmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
Mmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
Hmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2SliceQmodel/dense_features_1/userId_embedding/userId_embedding_weights/Shape_1:output:0Wmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/begin:output:0Vmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Lmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Gmodel/dense_features_1/userId_embedding/userId_embedding_weights/concatConcatV2Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_1:output:0Qmodel/dense_features_1/userId_embedding/userId_embedding_weights/Slice_2:output:0Umodel/dense_features_1/userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Jmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2ReshapeImodel/dense_features_1/userId_embedding/userId_embedding_weights:output:0Pmodel/dense_features_1/userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
-model/dense_features_1/userId_embedding/ShapeShapeSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::���
;model/dense_features_1/userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=model/dense_features_1/userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=model/dense_features_1/userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5model/dense_features_1/userId_embedding/strided_sliceStridedSlice6model/dense_features_1/userId_embedding/Shape:output:0Dmodel/dense_features_1/userId_embedding/strided_slice/stack:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_1:output:0Fmodel/dense_features_1/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7model/dense_features_1/userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
5model/dense_features_1/userId_embedding/Reshape/shapePack>model/dense_features_1/userId_embedding/strided_slice:output:0@model/dense_features_1/userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
/model/dense_features_1/userId_embedding/ReshapeReshapeSmodel/dense_features_1/userId_embedding/userId_embedding_weights/Reshape_2:output:0>model/dense_features_1/userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
s
(model/dense_features_1/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
$model/dense_features_1/concat/concatIdentity8model/dense_features_1/userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/concatenate/concatConcatV2+model/dense_features/concat/concat:output:0-model/dense_features_1/concat/concat:output:0&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_2/SigmoidSigmoidmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitymodel/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOpp^model/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupj^model/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2�
omodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupomodel/dense_features/directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup2�
imodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupimodel/dense_features_1/userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:KG
#
_output_shapes
:���������
 
_user_specified_nameuserId:O K
#
_output_shapes
:���������
$
_user_specified_name
directorId
�|
�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281367
features

features_1m
Yuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281327:
��

identity��RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupj
userId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
userId_embedding/ExpandDims
ExpandDims
features_1(userId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������z
/userId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
)userId_embedding/to_sparse_input/NotEqualNotEqual$userId_embedding/ExpandDims:output:08userId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
(userId_embedding/to_sparse_input/indicesWhere-userId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
'userId_embedding/to_sparse_input/valuesGatherNd$userId_embedding/ExpandDims:output:00userId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
,userId_embedding/to_sparse_input/dense_shapeShape$userId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
userId_embedding/valuesCast0userId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:���������
5userId_embedding/userId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: ~
4userId_embedding/userId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
/userId_embedding/userId_embedding_weights/SliceSlice5userId_embedding/to_sparse_input/dense_shape:output:0>userId_embedding/userId_embedding_weights/Slice/begin:output:0=userId_embedding/userId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:y
/userId_embedding/userId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.userId_embedding/userId_embedding_weights/ProdProd8userId_embedding/userId_embedding_weights/Slice:output:08userId_embedding/userId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: |
:userId_embedding/userId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :y
7userId_embedding/userId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2userId_embedding/userId_embedding_weights/GatherV2GatherV25userId_embedding/to_sparse_input/dense_shape:output:0CuserId_embedding/userId_embedding_weights/GatherV2/indices:output:0@userId_embedding/userId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
0userId_embedding/userId_embedding_weights/Cast/xPack7userId_embedding/userId_embedding_weights/Prod:output:0;userId_embedding/userId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/SparseReshapeSparseReshape0userId_embedding/to_sparse_input/indices:index:05userId_embedding/to_sparse_input/dense_shape:output:09userId_embedding/userId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
@userId_embedding/userId_embedding_weights/SparseReshape/IdentityIdentityuserId_embedding/values:y:0*
T0	*#
_output_shapes
:���������z
8userId_embedding/userId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6userId_embedding/userId_embedding_weights/GreaterEqualGreaterEqualIuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0AuserId_embedding/userId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/WhereWhere:userId_embedding/userId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
7userId_embedding/userId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/ReshapeReshape7userId_embedding/userId_embedding_weights/Where:index:0@userId_embedding/userId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_1GatherV2HuserId_embedding/userId_embedding_weights/SparseReshape:output_indices:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������{
9userId_embedding/userId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4userId_embedding/userId_embedding_weights/GatherV2_2GatherV2IuserId_embedding/userId_embedding_weights/SparseReshape/Identity:output:0:userId_embedding/userId_embedding_weights/Reshape:output:0BuserId_embedding/userId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
2userId_embedding/userId_embedding_weights/IdentityIdentityFuserId_embedding/userId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
CuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
QuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows=userId_embedding/userId_embedding_weights/GatherV2_1:output:0=userId_embedding/userId_embedding_weights/GatherV2_2:output:0;userId_embedding/userId_embedding_weights/Identity:output:0LuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
UuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
WuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
OuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebuserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0`userId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
HuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/UniqueUniqueauserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherYuserid_embedding_userid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281327LuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281327*'
_output_shapes
:���������
*
dtype0�
[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity[userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*l
_classb
`^loc:@userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281327*'
_output_shapes
:���������
�
]userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityduserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
AuserId_embedding/userId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanfuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0NuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/Unique:idx:0XuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
9userId_embedding/userId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3userId_embedding/userId_embedding_weights/Reshape_1ReshapeguserId_embedding/userId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0BuserId_embedding/userId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
/userId_embedding/userId_embedding_weights/ShapeShapeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
=userId_embedding/userId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?userId_embedding/userId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7userId_embedding/userId_embedding_weights/strided_sliceStridedSlice8userId_embedding/userId_embedding_weights/Shape:output:0FuserId_embedding/userId_embedding_weights/strided_slice/stack:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_1:output:0HuserId_embedding/userId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1userId_embedding/userId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
/userId_embedding/userId_embedding_weights/stackPack:userId_embedding/userId_embedding_weights/stack/0:output:0@userId_embedding/userId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.userId_embedding/userId_embedding_weights/TileTile<userId_embedding/userId_embedding_weights/Reshape_1:output:08userId_embedding/userId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
4userId_embedding/userId_embedding_weights/zeros_like	ZerosLikeJuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
)userId_embedding/userId_embedding_weightsSelect7userId_embedding/userId_embedding_weights/Tile:output:08userId_embedding/userId_embedding_weights/zeros_like:y:0JuserId_embedding/userId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
0userId_embedding/userId_embedding_weights/Cast_1Cast5userId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
7userId_embedding/userId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
6userId_embedding/userId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
1userId_embedding/userId_embedding_weights/Slice_1Slice4userId_embedding/userId_embedding_weights/Cast_1:y:0@userId_embedding/userId_embedding_weights/Slice_1/begin:output:0?userId_embedding/userId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
1userId_embedding/userId_embedding_weights/Shape_1Shape2userId_embedding/userId_embedding_weights:output:0*
T0*
_output_shapes
::���
7userId_embedding/userId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
6userId_embedding/userId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
1userId_embedding/userId_embedding_weights/Slice_2Slice:userId_embedding/userId_embedding_weights/Shape_1:output:0@userId_embedding/userId_embedding_weights/Slice_2/begin:output:0?userId_embedding/userId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:w
5userId_embedding/userId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0userId_embedding/userId_embedding_weights/concatConcatV2:userId_embedding/userId_embedding_weights/Slice_1:output:0:userId_embedding/userId_embedding_weights/Slice_2:output:0>userId_embedding/userId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
3userId_embedding/userId_embedding_weights/Reshape_2Reshape2userId_embedding/userId_embedding_weights:output:09userId_embedding/userId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
userId_embedding/ShapeShape<userId_embedding/userId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��n
$userId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&userId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&userId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
userId_embedding/strided_sliceStridedSliceuserId_embedding/Shape:output:0-userId_embedding/strided_slice/stack:output:0/userId_embedding/strided_slice/stack_1:output:0/userId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 userId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
userId_embedding/Reshape/shapePack'userId_embedding/strided_slice:output:0)userId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
userId_embedding/ReshapeReshape<userId_embedding/userId_embedding_weights/Reshape_2:output:0'userId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n
concat/concatIdentity!userId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOpS^userId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
RuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookupRuserId_embedding/userId_embedding_weights/embedding_lookup_sparse/embedding_lookup:MI
#
_output_shapes
:���������
"
_user_specified_name
features:M I
#
_output_shapes
:���������
"
_user_specified_name
features
ݣ
�
"__inference__traced_restore_282869
file_prefixY
Fassignvariableop_dense_features_directorid_embedding_embedding_weights:	�
Z
Fassignvariableop_1_dense_features_1_userid_embedding_embedding_weights:
��
1
assignvariableop_2_dense_kernel:
+
assignvariableop_3_dense_bias:
3
!assignvariableop_4_dense_1_kernel:

-
assignvariableop_5_dense_1_bias:
3
!assignvariableop_6_dense_2_kernel:
-
assignvariableop_7_dense_2_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: c
Passignvariableop_10_adam_m_dense_features_directorid_embedding_embedding_weights:	�
c
Passignvariableop_11_adam_v_dense_features_directorid_embedding_embedding_weights:	�
b
Nassignvariableop_12_adam_m_dense_features_1_userid_embedding_embedding_weights:
��
b
Nassignvariableop_13_adam_v_dense_features_1_userid_embedding_embedding_weights:
��
9
'assignvariableop_14_adam_m_dense_kernel:
9
'assignvariableop_15_adam_v_dense_kernel:
3
%assignvariableop_16_adam_m_dense_bias:
3
%assignvariableop_17_adam_v_dense_bias:
;
)assignvariableop_18_adam_m_dense_1_kernel:

;
)assignvariableop_19_adam_v_dense_1_kernel:

5
'assignvariableop_20_adam_m_dense_1_bias:
5
'assignvariableop_21_adam_v_dense_1_bias:
;
)assignvariableop_22_adam_m_dense_2_kernel:
;
)assignvariableop_23_adam_v_dense_2_kernel:
5
'assignvariableop_24_adam_m_dense_2_bias:5
'assignvariableop_25_adam_v_dense_2_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 3
$assignvariableop_30_true_positives_1:	�3
$assignvariableop_31_true_negatives_1:	�4
%assignvariableop_32_false_positives_1:	�4
%assignvariableop_33_false_negatives_1:	�1
"assignvariableop_34_true_positives:	�1
"assignvariableop_35_true_negatives:	�2
#assignvariableop_36_false_positives:	�2
#assignvariableop_37_false_negatives:	�
identity_39��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*�
value�B�'BWlayer_with_weights-0/directorId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpFassignvariableop_dense_features_directorid_embedding_embedding_weightsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpFassignvariableop_1_dense_features_1_userid_embedding_embedding_weightsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpPassignvariableop_10_adam_m_dense_features_directorid_embedding_embedding_weightsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpPassignvariableop_11_adam_v_dense_features_directorid_embedding_embedding_weightsIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpNassignvariableop_12_adam_m_dense_features_1_userid_embedding_embedding_weightsIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpNassignvariableop_13_adam_v_dense_features_1_userid_embedding_embedding_weightsIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_m_dense_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_v_dense_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_m_dense_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_v_dense_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_m_dense_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_v_dense_1_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_m_dense_1_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_v_dense_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_dense_2_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_dense_2_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_dense_2_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_dense_2_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp$assignvariableop_30_true_positives_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp$assignvariableop_31_true_negatives_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp%assignvariableop_32_false_positives_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp%assignvariableop_33_false_negatives_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp"assignvariableop_34_true_positivesIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp"assignvariableop_35_true_negativesIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp#assignvariableop_36_false_positivesIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp#assignvariableop_37_false_negativesIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_39IdentityIdentity_38:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_39Identity_39:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_282493

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
&__inference_model_layer_call_fn_281672
inputs_directorid
inputs_userid
unknown:	�

	unknown_0:
��

	unknown_1:

	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_directoridinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_281468o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_userid:V R
#
_output_shapes
:���������
+
_user_specified_nameinputs_directorid
��
�
J__inference_dense_features_layer_call_and_return_conditional_losses_281037
features

features_1t
adirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_280997:	�

identity��ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupn
#directorId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
directorId_embedding/ExpandDims
ExpandDimsfeatures,directorId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������~
3directorId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
-directorId_embedding/to_sparse_input/NotEqualNotEqual(directorId_embedding/ExpandDims:output:0<directorId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
,directorId_embedding/to_sparse_input/indicesWhere1directorId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
+directorId_embedding/to_sparse_input/valuesGatherNd(directorId_embedding/ExpandDims:output:04directorId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
0directorId_embedding/to_sparse_input/dense_shapeShape(directorId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
directorId_embedding/valuesCast4directorId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
=directorId_embedding/directorId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
<directorId_embedding/directorId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
7directorId_embedding/directorId_embedding_weights/SliceSlice9directorId_embedding/to_sparse_input/dense_shape:output:0FdirectorId_embedding/directorId_embedding_weights/Slice/begin:output:0EdirectorId_embedding/directorId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
7directorId_embedding/directorId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
6directorId_embedding/directorId_embedding_weights/ProdProd@directorId_embedding/directorId_embedding_weights/Slice:output:0@directorId_embedding/directorId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
BdirectorId_embedding/directorId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
?directorId_embedding/directorId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:directorId_embedding/directorId_embedding_weights/GatherV2GatherV29directorId_embedding/to_sparse_input/dense_shape:output:0KdirectorId_embedding/directorId_embedding_weights/GatherV2/indices:output:0HdirectorId_embedding/directorId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
8directorId_embedding/directorId_embedding_weights/Cast/xPack?directorId_embedding/directorId_embedding_weights/Prod:output:0CdirectorId_embedding/directorId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/SparseReshapeSparseReshape4directorId_embedding/to_sparse_input/indices:index:09directorId_embedding/to_sparse_input/dense_shape:output:0AdirectorId_embedding/directorId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
HdirectorId_embedding/directorId_embedding_weights/SparseReshape/IdentityIdentitydirectorId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
@directorId_embedding/directorId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
>directorId_embedding/directorId_embedding_weights/GreaterEqualGreaterEqualQdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0IdirectorId_embedding/directorId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/WhereWhereBdirectorId_embedding/directorId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
?directorId_embedding/directorId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/ReshapeReshape?directorId_embedding/directorId_embedding_weights/Where:index:0HdirectorId_embedding/directorId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_1GatherV2PdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_indices:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_2GatherV2QdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
:directorId_embedding/directorId_embedding_weights/IdentityIdentityNdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
KdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
YdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsEdirectorId_embedding/directorId_embedding_weights/GatherV2_1:output:0EdirectorId_embedding/directorId_embedding_weights/GatherV2_2:output:0CdirectorId_embedding/directorId_embedding_weights/Identity:output:0TdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
]directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
WdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicejdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0fdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
PdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/UniqueUniqueidirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatheradirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_280997TdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/280997*'
_output_shapes
:���������
*
dtype0�
cdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitycdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/280997*'
_output_shapes
:���������
�
edirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityldirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
IdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanndirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0VdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:idx:0`directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
AdirectorId_embedding/directorId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
;directorId_embedding/directorId_embedding_weights/Reshape_1ReshapeodirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0JdirectorId_embedding/directorId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/ShapeShapeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
EdirectorId_embedding/directorId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?directorId_embedding/directorId_embedding_weights/strided_sliceStridedSlice@directorId_embedding/directorId_embedding_weights/Shape:output:0NdirectorId_embedding/directorId_embedding_weights/strided_slice/stack:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9directorId_embedding/directorId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
7directorId_embedding/directorId_embedding_weights/stackPackBdirectorId_embedding/directorId_embedding_weights/stack/0:output:0HdirectorId_embedding/directorId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
6directorId_embedding/directorId_embedding_weights/TileTileDdirectorId_embedding/directorId_embedding_weights/Reshape_1:output:0@directorId_embedding/directorId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
<directorId_embedding/directorId_embedding_weights/zeros_like	ZerosLikeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
1directorId_embedding/directorId_embedding_weightsSelect?directorId_embedding/directorId_embedding_weights/Tile:output:0@directorId_embedding/directorId_embedding_weights/zeros_like:y:0RdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
8directorId_embedding/directorId_embedding_weights/Cast_1Cast9directorId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>directorId_embedding/directorId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9directorId_embedding/directorId_embedding_weights/Slice_1Slice<directorId_embedding/directorId_embedding_weights/Cast_1:y:0HdirectorId_embedding/directorId_embedding_weights/Slice_1/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
9directorId_embedding/directorId_embedding_weights/Shape_1Shape:directorId_embedding/directorId_embedding_weights:output:0*
T0*
_output_shapes
::���
?directorId_embedding/directorId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
>directorId_embedding/directorId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/Slice_2SliceBdirectorId_embedding/directorId_embedding_weights/Shape_1:output:0HdirectorId_embedding/directorId_embedding_weights/Slice_2/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:
=directorId_embedding/directorId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
8directorId_embedding/directorId_embedding_weights/concatConcatV2BdirectorId_embedding/directorId_embedding_weights/Slice_1:output:0BdirectorId_embedding/directorId_embedding_weights/Slice_2:output:0FdirectorId_embedding/directorId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
;directorId_embedding/directorId_embedding_weights/Reshape_2Reshape:directorId_embedding/directorId_embedding_weights:output:0AdirectorId_embedding/directorId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
directorId_embedding/ShapeShapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��r
(directorId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*directorId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*directorId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"directorId_embedding/strided_sliceStridedSlice#directorId_embedding/Shape:output:01directorId_embedding/strided_slice/stack:output:03directorId_embedding/strided_slice/stack_1:output:03directorId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$directorId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"directorId_embedding/Reshape/shapePack+directorId_embedding/strided_slice:output:0-directorId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
directorId_embedding/ReshapeReshapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0+directorId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������r
concat/concatIdentity%directorId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp[^directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:MI
#
_output_shapes
:���������
"
_user_specified_name
features:M I
#
_output_shapes
:���������
"
_user_specified_name
features
�

�
A__inference_dense_layer_call_and_return_conditional_losses_282453

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
J__inference_dense_features_layer_call_and_return_conditional_losses_281279
features

features_1t
adirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281239:	�

identity��ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupn
#directorId_embedding/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
directorId_embedding/ExpandDims
ExpandDimsfeatures,directorId_embedding/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������~
3directorId_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
����������
-directorId_embedding/to_sparse_input/NotEqualNotEqual(directorId_embedding/ExpandDims:output:0<directorId_embedding/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:����������
,directorId_embedding/to_sparse_input/indicesWhere1directorId_embedding/to_sparse_input/NotEqual:z:0*'
_output_shapes
:����������
+directorId_embedding/to_sparse_input/valuesGatherNd(directorId_embedding/ExpandDims:output:04directorId_embedding/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:����������
0directorId_embedding/to_sparse_input/dense_shapeShape(directorId_embedding/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	:���
directorId_embedding/valuesCast4directorId_embedding/to_sparse_input/values:output:0*

DstT0	*

SrcT0*#
_output_shapes
:����������
=directorId_embedding/directorId_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: �
<directorId_embedding/directorId_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
7directorId_embedding/directorId_embedding_weights/SliceSlice9directorId_embedding/to_sparse_input/dense_shape:output:0FdirectorId_embedding/directorId_embedding_weights/Slice/begin:output:0EdirectorId_embedding/directorId_embedding_weights/Slice/size:output:0*
Index0*
T0	*
_output_shapes
:�
7directorId_embedding/directorId_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
6directorId_embedding/directorId_embedding_weights/ProdProd@directorId_embedding/directorId_embedding_weights/Slice:output:0@directorId_embedding/directorId_embedding_weights/Const:output:0*
T0	*
_output_shapes
: �
BdirectorId_embedding/directorId_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :�
?directorId_embedding/directorId_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
:directorId_embedding/directorId_embedding_weights/GatherV2GatherV29directorId_embedding/to_sparse_input/dense_shape:output:0KdirectorId_embedding/directorId_embedding_weights/GatherV2/indices:output:0HdirectorId_embedding/directorId_embedding_weights/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: �
8directorId_embedding/directorId_embedding_weights/Cast/xPack?directorId_embedding/directorId_embedding_weights/Prod:output:0CdirectorId_embedding/directorId_embedding_weights/GatherV2:output:0*
N*
T0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/SparseReshapeSparseReshape4directorId_embedding/to_sparse_input/indices:index:09directorId_embedding/to_sparse_input/dense_shape:output:0AdirectorId_embedding/directorId_embedding_weights/Cast/x:output:0*-
_output_shapes
:���������:�
HdirectorId_embedding/directorId_embedding_weights/SparseReshape/IdentityIdentitydirectorId_embedding/values:y:0*
T0	*#
_output_shapes
:����������
@directorId_embedding/directorId_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
>directorId_embedding/directorId_embedding_weights/GreaterEqualGreaterEqualQdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0IdirectorId_embedding/directorId_embedding_weights/GreaterEqual/y:output:0*
T0	*#
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/WhereWhereBdirectorId_embedding/directorId_embedding_weights/GreaterEqual:z:0*'
_output_shapes
:����������
?directorId_embedding/directorId_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/ReshapeReshape?directorId_embedding/directorId_embedding_weights/Where:index:0HdirectorId_embedding/directorId_embedding_weights/Reshape/shape:output:0*
T0	*#
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_1GatherV2PdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_indices:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:����������
AdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
<directorId_embedding/directorId_embedding_weights/GatherV2_2GatherV2QdirectorId_embedding/directorId_embedding_weights/SparseReshape/Identity:output:0BdirectorId_embedding/directorId_embedding_weights/Reshape:output:0JdirectorId_embedding/directorId_embedding_weights/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:����������
:directorId_embedding/directorId_embedding_weights/IdentityIdentityNdirectorId_embedding/directorId_embedding_weights/SparseReshape:output_shape:0*
T0	*
_output_shapes
:�
KdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
YdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsEdirectorId_embedding/directorId_embedding_weights/GatherV2_1:output:0EdirectorId_embedding/directorId_embedding_weights/GatherV2_2:output:0CdirectorId_embedding/directorId_embedding_weights/Identity:output:0TdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/Const:output:0*
T0	*T
_output_shapesB
@:���������:���������:���������:����������
]directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
_directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
WdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicejdirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0fdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1:output:0hdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
PdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/UniqueUniqueidirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*2
_output_shapes 
:���������:����������
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatheradirectorid_embedding_directorid_embedding_weights_embedding_lookup_sparse_embedding_lookup_281239TdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:y:0*
Tindices0	*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281239*'
_output_shapes
:���������
*
dtype0�
cdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitycdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:output:0*
T0*t
_classj
hfloc:@directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/281239*'
_output_shapes
:���������
�
edirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1IdentityldirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������
�
IdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparseSparseSegmentMeanndirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1:output:0VdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/Unique:idx:0`directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/strided_slice:output:0*
Tsegmentids0	*
T0*'
_output_shapes
:���������
�
AdirectorId_embedding/directorId_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
;directorId_embedding/directorId_embedding_weights/Reshape_1ReshapeodirectorId_embedding/directorId_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:empty_row_indicator:0JdirectorId_embedding/directorId_embedding_weights/Reshape_1/shape:output:0*
T0
*'
_output_shapes
:����������
7directorId_embedding/directorId_embedding_weights/ShapeShapeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*
_output_shapes
::���
EdirectorId_embedding/directorId_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
GdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?directorId_embedding/directorId_embedding_weights/strided_sliceStridedSlice@directorId_embedding/directorId_embedding_weights/Shape:output:0NdirectorId_embedding/directorId_embedding_weights/strided_slice/stack:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_1:output:0PdirectorId_embedding/directorId_embedding_weights/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9directorId_embedding/directorId_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :�
7directorId_embedding/directorId_embedding_weights/stackPackBdirectorId_embedding/directorId_embedding_weights/stack/0:output:0HdirectorId_embedding/directorId_embedding_weights/strided_slice:output:0*
N*
T0*
_output_shapes
:�
6directorId_embedding/directorId_embedding_weights/TileTileDdirectorId_embedding/directorId_embedding_weights/Reshape_1:output:0@directorId_embedding/directorId_embedding_weights/stack:output:0*
T0
*'
_output_shapes
:���������
�
<directorId_embedding/directorId_embedding_weights/zeros_like	ZerosLikeRdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
1directorId_embedding/directorId_embedding_weightsSelect?directorId_embedding/directorId_embedding_weights/Tile:output:0@directorId_embedding/directorId_embedding_weights/zeros_like:y:0RdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse:output:0*
T0*'
_output_shapes
:���������
�
8directorId_embedding/directorId_embedding_weights/Cast_1Cast9directorId_embedding/to_sparse_input/dense_shape:output:0*

DstT0*

SrcT0	*
_output_shapes
:�
?directorId_embedding/directorId_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: �
>directorId_embedding/directorId_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
9directorId_embedding/directorId_embedding_weights/Slice_1Slice<directorId_embedding/directorId_embedding_weights/Cast_1:y:0HdirectorId_embedding/directorId_embedding_weights/Slice_1/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
9directorId_embedding/directorId_embedding_weights/Shape_1Shape:directorId_embedding/directorId_embedding_weights:output:0*
T0*
_output_shapes
::���
?directorId_embedding/directorId_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:�
>directorId_embedding/directorId_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
����������
9directorId_embedding/directorId_embedding_weights/Slice_2SliceBdirectorId_embedding/directorId_embedding_weights/Shape_1:output:0HdirectorId_embedding/directorId_embedding_weights/Slice_2/begin:output:0GdirectorId_embedding/directorId_embedding_weights/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:
=directorId_embedding/directorId_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
8directorId_embedding/directorId_embedding_weights/concatConcatV2BdirectorId_embedding/directorId_embedding_weights/Slice_1:output:0BdirectorId_embedding/directorId_embedding_weights/Slice_2:output:0FdirectorId_embedding/directorId_embedding_weights/concat/axis:output:0*
N*
T0*
_output_shapes
:�
;directorId_embedding/directorId_embedding_weights/Reshape_2Reshape:directorId_embedding/directorId_embedding_weights:output:0AdirectorId_embedding/directorId_embedding_weights/concat:output:0*
T0*'
_output_shapes
:���������
�
directorId_embedding/ShapeShapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0*
T0*
_output_shapes
::��r
(directorId_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*directorId_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*directorId_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"directorId_embedding/strided_sliceStridedSlice#directorId_embedding/Shape:output:01directorId_embedding/strided_slice/stack:output:03directorId_embedding/strided_slice/stack_1:output:03directorId_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$directorId_embedding/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
"directorId_embedding/Reshape/shapePack+directorId_embedding/strided_slice:output:0-directorId_embedding/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
directorId_embedding/ReshapeReshapeDdirectorId_embedding/directorId_embedding_weights/Reshape_2:output:0+directorId_embedding/Reshape/shape:output:0*
T0*'
_output_shapes
:���������
\
concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������r
concat/concatIdentity%directorId_embedding/Reshape:output:0*
T0*'
_output_shapes
:���������
e
IdentityIdentityconcat/concat:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp[^directorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 2�
ZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookupZdirectorId_embedding/directorId_embedding_weights/embedding_lookup_sparse/embedding_lookup:MI
#
_output_shapes
:���������
"
_user_specified_name
features:M I
#
_output_shapes
:���������
"
_user_specified_name
features
�
�
/__inference_dense_features_layer_call_fn_282064
features_directorid
features_userid
unknown:	�

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeatures_directoridfeatures_useridunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_281279o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:TP
#
_output_shapes
:���������
)
_user_specified_namefeatures_userid:X T
#
_output_shapes
:���������
-
_user_specified_namefeatures_directorid
�

�
&__inference_model_layer_call_fn_281650
inputs_directorid
inputs_userid
unknown:	�

	unknown_0:
��

	unknown_1:

	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_directoridinputs_useridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_281419o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:RN
#
_output_shapes
:���������
'
_user_specified_nameinputs_userid:V R
#
_output_shapes
:���������
+
_user_specified_nameinputs_directorid
�
�#
__inference__traced_save_282745
file_prefix_
Lread_disablecopyonread_dense_features_directorid_embedding_embedding_weights:	�
`
Lread_1_disablecopyonread_dense_features_1_userid_embedding_embedding_weights:
��
7
%read_2_disablecopyonread_dense_kernel:
1
#read_3_disablecopyonread_dense_bias:
9
'read_4_disablecopyonread_dense_1_kernel:

3
%read_5_disablecopyonread_dense_1_bias:
9
'read_6_disablecopyonread_dense_2_kernel:
3
%read_7_disablecopyonread_dense_2_bias:,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: i
Vread_10_disablecopyonread_adam_m_dense_features_directorid_embedding_embedding_weights:	�
i
Vread_11_disablecopyonread_adam_v_dense_features_directorid_embedding_embedding_weights:	�
h
Tread_12_disablecopyonread_adam_m_dense_features_1_userid_embedding_embedding_weights:
��
h
Tread_13_disablecopyonread_adam_v_dense_features_1_userid_embedding_embedding_weights:
��
?
-read_14_disablecopyonread_adam_m_dense_kernel:
?
-read_15_disablecopyonread_adam_v_dense_kernel:
9
+read_16_disablecopyonread_adam_m_dense_bias:
9
+read_17_disablecopyonread_adam_v_dense_bias:
A
/read_18_disablecopyonread_adam_m_dense_1_kernel:

A
/read_19_disablecopyonread_adam_v_dense_1_kernel:

;
-read_20_disablecopyonread_adam_m_dense_1_bias:
;
-read_21_disablecopyonread_adam_v_dense_1_bias:
A
/read_22_disablecopyonread_adam_m_dense_2_kernel:
A
/read_23_disablecopyonread_adam_v_dense_2_kernel:
;
-read_24_disablecopyonread_adam_m_dense_2_bias:;
-read_25_disablecopyonread_adam_v_dense_2_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 9
*read_30_disablecopyonread_true_positives_1:	�9
*read_31_disablecopyonread_true_negatives_1:	�:
+read_32_disablecopyonread_false_positives_1:	�:
+read_33_disablecopyonread_false_negatives_1:	�7
(read_34_disablecopyonread_true_positives:	�7
(read_35_disablecopyonread_true_negatives:	�8
)read_36_disablecopyonread_false_positives:	�8
)read_37_disablecopyonread_false_negatives:	�
savev2_const
identity_77��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnReadLread_disablecopyonread_dense_features_directorid_embedding_embedding_weights"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpLread_disablecopyonread_dense_features_directorid_embedding_embedding_weights^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_1/DisableCopyOnReadDisableCopyOnReadLread_1_disablecopyonread_dense_features_1_userid_embedding_embedding_weights"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOpLread_1_disablecopyonread_dense_features_1_userid_embedding_embedding_weights^Read_1/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��
*
dtype0o

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��
e

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��
y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_dense_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:
w
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_dense_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:
{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_1_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:

*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:

c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:

y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_1_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:
{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_2_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:
y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_2_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnReadVread_10_disablecopyonread_adam_m_dense_features_directorid_embedding_embedding_weights"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpVread_10_disablecopyonread_adam_m_dense_features_directorid_embedding_embedding_weights^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_11/DisableCopyOnReadDisableCopyOnReadVread_11_disablecopyonread_adam_v_dense_features_directorid_embedding_embedding_weights"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpVread_11_disablecopyonread_adam_v_dense_features_directorid_embedding_embedding_weights^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_12/DisableCopyOnReadDisableCopyOnReadTread_12_disablecopyonread_adam_m_dense_features_1_userid_embedding_embedding_weights"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpTread_12_disablecopyonread_adam_m_dense_features_1_userid_embedding_embedding_weights^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��
*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��
g
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��
�
Read_13/DisableCopyOnReadDisableCopyOnReadTread_13_disablecopyonread_adam_v_dense_features_1_userid_embedding_embedding_weights"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpTread_13_disablecopyonread_adam_v_dense_features_1_userid_embedding_embedding_weights^Read_13/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��
*
dtype0q
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��
g
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��
�
Read_14/DisableCopyOnReadDisableCopyOnRead-read_14_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp-read_14_disablecopyonread_adam_m_dense_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_adam_v_dense_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_16/DisableCopyOnReadDisableCopyOnRead+read_16_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp+read_16_disablecopyonread_adam_m_dense_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_17/DisableCopyOnReadDisableCopyOnRead+read_17_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp+read_17_disablecopyonread_adam_v_dense_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_18/DisableCopyOnReadDisableCopyOnRead/read_18_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp/read_18_disablecopyonread_adam_m_dense_1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:

*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:

e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:

�
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_v_dense_1_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:

*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:

e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:

�
Read_20/DisableCopyOnReadDisableCopyOnRead-read_20_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp-read_20_disablecopyonread_adam_m_dense_1_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_21/DisableCopyOnReadDisableCopyOnRead-read_21_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp-read_21_disablecopyonread_adam_v_dense_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_dense_2_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_dense_2_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:
�
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_m_dense_2_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_v_dense_2_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_30/DisableCopyOnReadDisableCopyOnRead*read_30_disablecopyonread_true_positives_1"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp*read_30_disablecopyonread_true_positives_1^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_31/DisableCopyOnReadDisableCopyOnRead*read_31_disablecopyonread_true_negatives_1"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp*read_31_disablecopyonread_true_negatives_1^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_32/DisableCopyOnReadDisableCopyOnRead+read_32_disablecopyonread_false_positives_1"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp+read_32_disablecopyonread_false_positives_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_33/DisableCopyOnReadDisableCopyOnRead+read_33_disablecopyonread_false_negatives_1"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp+read_33_disablecopyonread_false_negatives_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_34/DisableCopyOnReadDisableCopyOnRead(read_34_disablecopyonread_true_positives"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp(read_34_disablecopyonread_true_positives^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_35/DisableCopyOnReadDisableCopyOnRead(read_35_disablecopyonread_true_negatives"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp(read_35_disablecopyonread_true_negatives^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_36/DisableCopyOnReadDisableCopyOnRead)read_36_disablecopyonread_false_positives"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp)read_36_disablecopyonread_false_positives^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_37/DisableCopyOnReadDisableCopyOnRead)read_37_disablecopyonread_false_negatives"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp)read_37_disablecopyonread_false_negatives^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*�
value�B�'BWlayer_with_weights-0/directorId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/userId_embedding.Sembedding_weights/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *5
dtypes+
)2'	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_76Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_77IdentityIdentity_76:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_77Identity_77:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:'

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
A__inference_model_layer_call_and_return_conditional_losses_281191

directorid

userid(
dense_features_281038:	�
+
dense_features_1_281127:
��

dense_281151:

dense_281153:
 
dense_1_281168:


dense_1_281170:
 
dense_2_281185:

dense_2_281187:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�&dense_features/StatefulPartitionedCall�(dense_features_1/StatefulPartitionedCall�
&dense_features/StatefulPartitionedCallStatefulPartitionedCall
directoriduseriddense_features_281038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_281037�
(dense_features_1/StatefulPartitionedCallStatefulPartitionedCall
directoriduseriddense_features_1_281127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_dense_features_1_layer_call_and_return_conditional_losses_281126�
concatenate/PartitionedCallPartitionedCall/dense_features/StatefulPartitionedCall:output:01dense_features_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_281137�
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_281151dense_281153*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_281150�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_281168dense_1_281170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_281167�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_281185dense_2_281187*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_281184w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall)^dense_features_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall2T
(dense_features_1/StatefulPartitionedCall(dense_features_1/StatefulPartitionedCall:KG
#
_output_shapes
:���������
 
_user_specified_nameuserId:O K
#
_output_shapes
:���������
$
_user_specified_name
directorId
�

�
&__inference_model_layer_call_fn_281487

directorid

userid
unknown:	�

	unknown_0:
��

	unknown_1:

	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall
directoriduseridunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_281468o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:KG
#
_output_shapes
:���������
 
_user_specified_nameuserId:O K
#
_output_shapes
:���������
$
_user_specified_name
directorId"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
=

directorId/
serving_default_directorId:0���������
5
userId+
serving_default_userId:0���������;
dense_20
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources
*&directorId_embedding/embedding_weights"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_feature_columns
"
_resources
&#"userId_embedding/embedding_weights"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias"
_tf_keras_layer
X
0
#1
02
13
84
95
@6
A7"
trackable_list_wrapper
X
0
#1
02
13
84
95
@6
A7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32�
&__inference_model_layer_call_fn_281438
&__inference_model_layer_call_fn_281487
&__inference_model_layer_call_fn_281650
&__inference_model_layer_call_fn_281672�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
�
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_32�
A__inference_model_layer_call_and_return_conditional_losses_281191
A__inference_model_layer_call_and_return_conditional_losses_281388
A__inference_model_layer_call_and_return_conditional_losses_281860
A__inference_model_layer_call_and_return_conditional_losses_282048�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zKtrace_0zLtrace_1zMtrace_2zNtrace_3
�B�
!__inference__wrapped_model_280947
directorIduserId"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
O
_variables
P_iterations
Q_learning_rate
R_index_dict
S
_momentums
T_velocities
U_update_step_xla"
experimentalOptimizer
,
Vserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
\trace_0
]trace_12�
/__inference_dense_features_layer_call_fn_282056
/__inference_dense_features_layer_call_fn_282064�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0z]trace_1
�
^trace_0
_trace_12�
J__inference_dense_features_layer_call_and_return_conditional_losses_282149
J__inference_dense_features_layer_call_and_return_conditional_losses_282234�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z^trace_0z_trace_1
 "
trackable_list_wrapper
"
_generic_user_object
H:F	�
25dense_features/directorId_embedding/embedding_weights
'
#0"
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
etrace_0
ftrace_12�
1__inference_dense_features_1_layer_call_fn_282242
1__inference_dense_features_1_layer_call_fn_282250�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zetrace_0zftrace_1
�
gtrace_0
htrace_12�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282335
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282420�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0zhtrace_1
 "
trackable_list_wrapper
"
_generic_user_object
G:E
��
23dense_features_1/userId_embedding/embedding_weights
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
ntrace_02�
,__inference_concatenate_layer_call_fn_282426�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0
�
otrace_02�
G__inference_concatenate_layer_call_and_return_conditional_losses_282433�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zotrace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
utrace_02�
&__inference_dense_layer_call_fn_282442�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zutrace_0
�
vtrace_02�
A__inference_dense_layer_call_and_return_conditional_losses_282453�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zvtrace_0
:
2dense/kernel
:
2
dense/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
|trace_02�
(__inference_dense_1_layer_call_fn_282462�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z|trace_0
�
}trace_02�
C__inference_dense_1_layer_call_and_return_conditional_losses_282473�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
 :

2dense_1/kernel
:
2dense_1/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_2_layer_call_fn_282482�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_2_layer_call_and_return_conditional_losses_282493�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :
2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_layer_call_fn_281438
directorIduserId"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_layer_call_fn_281487
directorIduserId"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_layer_call_fn_281650inputs_directoridinputs_userid"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_layer_call_fn_281672inputs_directoridinputs_userid"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_281191
directorIduserId"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_281388
directorIduserId"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_281860inputs_directoridinputs_userid"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_282048inputs_directoridinputs_userid"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
P0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_281628
directorIduserId"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_dense_features_layer_call_fn_282056features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_dense_features_layer_call_fn_282064features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_dense_features_layer_call_and_return_conditional_losses_282149features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_dense_features_layer_call_and_return_conditional_losses_282234features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_dense_features_1_layer_call_fn_282242features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_dense_features_1_layer_call_fn_282250features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282335features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282420features_directoridfeatures_userid"�
���
FullArgSpec=
args5�2

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_concatenate_layer_call_fn_282426inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_concatenate_layer_call_and_return_conditional_losses_282433inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_layer_call_fn_282442inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_layer_call_and_return_conditional_losses_282453inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_1_layer_call_fn_282462inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_1_layer_call_and_return_conditional_losses_282473inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_2_layer_call_fn_282482inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_2_layer_call_and_return_conditional_losses_282493inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
�
�	variables
�	keras_api
�true_positives
�true_negatives
�false_positives
�false_negatives"
_tf_keras_metric
�
�	variables
�	keras_api
�true_positives
�true_negatives
�false_positives
�false_negatives"
_tf_keras_metric
M:K	�
2<Adam/m/dense_features/directorId_embedding/embedding_weights
M:K	�
2<Adam/v/dense_features/directorId_embedding/embedding_weights
L:J
��
2:Adam/m/dense_features_1/userId_embedding/embedding_weights
L:J
��
2:Adam/v/dense_features_1/userId_embedding/embedding_weights
#:!
2Adam/m/dense/kernel
#:!
2Adam/v/dense/kernel
:
2Adam/m/dense/bias
:
2Adam/v/dense/bias
%:#

2Adam/m/dense_1/kernel
%:#

2Adam/v/dense_1/kernel
:
2Adam/m/dense_1/bias
:
2Adam/v/dense_1/bias
%:#
2Adam/m/dense_2/kernel
%:#
2Adam/v/dense_2/kernel
:2Adam/m/dense_2/bias
:2Adam/v/dense_2/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:� (2true_positives
:� (2true_negatives
 :� (2false_positives
 :� (2false_negatives
@
�0
�1
�2
�3"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:� (2true_positives
:� (2true_negatives
 :� (2false_positives
 :� (2false_negatives�
!__inference__wrapped_model_280947�#0189@Aj�g
`�]
[�X
.

directorId �

directorId���������
&
userId�
userId���������
� "1�.
,
dense_2!�
dense_2����������
G__inference_concatenate_layer_call_and_return_conditional_losses_282433�Z�W
P�M
K�H
"�
inputs_0���������

"�
inputs_1���������

� ",�)
"�
tensor_0���������
� �
,__inference_concatenate_layer_call_fn_282426Z�W
P�M
K�H
"�
inputs_0���������

"�
inputs_1���������

� "!�
unknown����������
C__inference_dense_1_layer_call_and_return_conditional_losses_282473c89/�,
%�"
 �
inputs���������

� ",�)
"�
tensor_0���������

� �
(__inference_dense_1_layer_call_fn_282462X89/�,
%�"
 �
inputs���������

� "!�
unknown���������
�
C__inference_dense_2_layer_call_and_return_conditional_losses_282493c@A/�,
%�"
 �
inputs���������

� ",�)
"�
tensor_0���������
� �
(__inference_dense_2_layer_call_fn_282482X@A/�,
%�"
 �
inputs���������

� "!�
unknown����������
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282335�#���
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p
� ",�)
"�
tensor_0���������

� �
L__inference_dense_features_1_layer_call_and_return_conditional_losses_282420�#���
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p 
� ",�)
"�
tensor_0���������

� �
1__inference_dense_features_1_layer_call_fn_282242�#���
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p
� "!�
unknown���������
�
1__inference_dense_features_1_layer_call_fn_282250�#���
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p 
� "!�
unknown���������
�
J__inference_dense_features_layer_call_and_return_conditional_losses_282149����
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p
� ",�)
"�
tensor_0���������

� �
J__inference_dense_features_layer_call_and_return_conditional_losses_282234����
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p 
� ",�)
"�
tensor_0���������

� �
/__inference_dense_features_layer_call_fn_282056����
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p
� "!�
unknown���������
�
/__inference_dense_features_layer_call_fn_282064����
z�w
m�j
7

directorId)�&
features_directorid���������
/
userId%�"
features_userid���������

 
p 
� "!�
unknown���������
�
A__inference_dense_layer_call_and_return_conditional_losses_282453c01/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������

� �
&__inference_dense_layer_call_fn_282442X01/�,
%�"
 �
inputs���������
� "!�
unknown���������
�
A__inference_model_layer_call_and_return_conditional_losses_281191�#0189@Ar�o
h�e
[�X
.

directorId �

directorId���������
&
userId�
userId���������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_281388�#0189@Ar�o
h�e
[�X
.

directorId �

directorId���������
&
userId�
userId���������
p 

 
� ",�)
"�
tensor_0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_281860�#0189@A��}
v�s
i�f
5

directorId'�$
inputs_directorid���������
-
userId#� 
inputs_userid���������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_282048�#0189@A��}
v�s
i�f
5

directorId'�$
inputs_directorid���������
-
userId#� 
inputs_userid���������
p 

 
� ",�)
"�
tensor_0���������
� �
&__inference_model_layer_call_fn_281438�#0189@Ar�o
h�e
[�X
.

directorId �

directorId���������
&
userId�
userId���������
p

 
� "!�
unknown����������
&__inference_model_layer_call_fn_281487�#0189@Ar�o
h�e
[�X
.

directorId �

directorId���������
&
userId�
userId���������
p 

 
� "!�
unknown����������
&__inference_model_layer_call_fn_281650�#0189@A��}
v�s
i�f
5

directorId'�$
inputs_directorid���������
-
userId#� 
inputs_userid���������
p

 
� "!�
unknown����������
&__inference_model_layer_call_fn_281672�#0189@A��}
v�s
i�f
5

directorId'�$
inputs_directorid���������
-
userId#� 
inputs_userid���������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_281628�#0189@Ae�b
� 
[�X
.

directorId �

directorid���������
&
userId�
userid���������"1�.
,
dense_2!�
dense_2���������