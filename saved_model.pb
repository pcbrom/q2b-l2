??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
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
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:*
dtype0
?
layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_3/gamma
?
/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes
:*
dtype0
?
layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_normalization_3/beta
?
.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes
:*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

: *
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:  *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
: *
dtype0
?
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namelayer_normalization_2/gamma
?
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes
: *
dtype0
?
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namelayer_normalization_2/beta
?
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes
: *
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:  *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
: *
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: *
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
?
"Adam/layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_3/gamma/m
?
6Adam/layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_3/gamma/m*
_output_shapes
:*
dtype0
?
!Adam/layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/layer_normalization_3/beta/m
?
5Adam/layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_3/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
: *
dtype0
?
"Adam/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/layer_normalization_2/gamma/m
?
6Adam/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_2/gamma/m*
_output_shapes
: *
dtype0
?
!Adam/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/layer_normalization_2/beta/m
?
5Adam/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_2/beta/m*
_output_shapes
: *
dtype0
?
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
?
"Adam/layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_3/gamma/v
?
6Adam/layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_3/gamma/v*
_output_shapes
:*
dtype0
?
!Adam/layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/layer_normalization_3/beta/v
?
5Adam/layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_3/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
: *
dtype0
?
"Adam/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/layer_normalization_2/gamma/v
?
6Adam/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_2/gamma/v*
_output_shapes
: *
dtype0
?
!Adam/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/layer_normalization_2/beta/v
?
5Adam/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_2/beta/v*
_output_shapes
: *
dtype0
?
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Q
value?QB?Q B?Q
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?

kernel
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?
axis
	gamma
beta
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
 	keras_api
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%regularization_losses
&trainable_variables
'	keras_api
w
#(_self_saveable_object_factories
)	variables
*regularization_losses
+trainable_variables
,	keras_api
?

-kernel
.bias
#/_self_saveable_object_factories
0	variables
1regularization_losses
2trainable_variables
3	keras_api
w
#4_self_saveable_object_factories
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?
9axis
	:gamma
;beta
#<_self_saveable_object_factories
=	variables
>regularization_losses
?trainable_variables
@	keras_api
w
#A_self_saveable_object_factories
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
?

Fkernel
Gbias
#H_self_saveable_object_factories
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
w
#M_self_saveable_object_factories
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
?

Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
?
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem?m?!m?"m?-m?.m?:m?;m?Fm?Gm?Rm?Sm?v?v?!v?"v?-v?.v?:v?;v?Fv?Gv?Rv?Sv?
 
 
^
0
1
2
!3
"4
-5
.6
:7
;8
F9
G10
R11
S12
 
V
0
1
!2
"3
-4
.5
:6
;7
F8
G9
R10
S11
?
^layer_metrics
_layer_regularization_losses
	variables
regularization_losses

`layers
trainable_variables
ametrics
bnon_trainable_variables
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
 
?
clayer_metrics
dmetrics
elayer_regularization_losses
	variables
regularization_losses
trainable_variables

flayers
gnon_trainable_variables
 
fd
VARIABLE_VALUElayer_normalization_3/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_3/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
?
hlayer_metrics
imetrics
jlayer_regularization_losses
	variables
regularization_losses
trainable_variables

klayers
lnon_trainable_variables
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1
 

!0
"1
?
mlayer_metrics
nmetrics
olayer_regularization_losses
$	variables
%regularization_losses
&trainable_variables

players
qnon_trainable_variables
 
 
 
 
?
rlayer_metrics
smetrics
tlayer_regularization_losses
)	variables
*regularization_losses
+trainable_variables

ulayers
vnon_trainable_variables
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1
 

-0
.1
?
wlayer_metrics
xmetrics
ylayer_regularization_losses
0	variables
1regularization_losses
2trainable_variables

zlayers
{non_trainable_variables
 
 
 
 
?
|layer_metrics
}metrics
~layer_regularization_losses
5	variables
6regularization_losses
7trainable_variables

layers
?non_trainable_variables
 
fd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1
 

:0
;1
?
?layer_metrics
?metrics
 ?layer_regularization_losses
=	variables
>regularization_losses
?trainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
B	variables
Cregularization_losses
Dtrainable_variables
?layers
?non_trainable_variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1
 

F0
G1
?
?layer_metrics
?metrics
 ?layer_regularization_losses
I	variables
Jregularization_losses
Ktrainable_variables
?layers
?non_trainable_variables
 
 
 
 
?
?layer_metrics
?metrics
 ?layer_regularization_losses
N	variables
Oregularization_losses
Ptrainable_variables
?layers
?non_trainable_variables
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1
 

R0
S1
?
?layer_metrics
?metrics
 ?layer_regularization_losses
U	variables
Vregularization_losses
Wtrainable_variables
?layers
?non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
N
0
1
2
3
4
5
6
7
	8

9
10

?0
?1

0
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE"Adam/layer_normalization_3/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/layer_normalization_3/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/layer_normalization_2/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/layer_normalization_2/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/layer_normalization_3/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/layer_normalization_3/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/layer_normalization_2/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/layer_normalization_2/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_9_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_9_inputdense_9/kernellayer_normalization_3/gammalayer_normalization_3/betadense_8/kerneldense_8/biasdense_7/kerneldense_7/biaslayer_normalization_2/gammalayer_normalization_2/betadense_6/kerneldense_6/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_10567877
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_9/kernel/Read/ReadVariableOp/layer_normalization_3/gamma/Read/ReadVariableOp.layer_normalization_3/beta/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp/layer_normalization_2/gamma/Read/ReadVariableOp.layer_normalization_2/beta/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6Adam/layer_normalization_3/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp6Adam/layer_normalization_2/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_2/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp6Adam/layer_normalization_3/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_3/beta/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp6Adam/layer_normalization_2/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_2/beta/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*;
Tin4
220	*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_10568578
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_9/kernellayer_normalization_3/gammalayer_normalization_3/betadense_8/kerneldense_8/biasdense_7/kerneldense_7/biaslayer_normalization_2/gammalayer_normalization_2/betadense_6/kerneldense_6/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1"Adam/layer_normalization_3/gamma/m!Adam/layer_normalization_3/beta/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/m"Adam/layer_normalization_2/gamma/m!Adam/layer_normalization_2/beta/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/m"Adam/layer_normalization_3/gamma/v!Adam/layer_normalization_3/beta/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v"Adam/layer_normalization_2/gamma/v!Adam/layer_normalization_2/beta/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*:
Tin3
12/*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_10568726??

?
?
-__inference_sequential_layer_call_fn_10567530
dense_9_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_105675012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedense_9_input
?
a
E__inference_re_lu_2_layer_call_and_return_conditional_losses_10568299

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?

H__inference_sequential_layer_call_and_return_conditional_losses_10567996

inputs8
&dense_9_matmul_readvariableop_resource:A
3layer_normalization_3_mul_2_readvariableop_resource:?
1layer_normalization_3_add_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource: 5
'dense_8_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource:  5
'dense_7_biasadd_readvariableop_resource: A
3layer_normalization_2_mul_2_readvariableop_resource: ?
1layer_normalization_2_add_readvariableop_resource: 8
&dense_6_matmul_readvariableop_resource:  5
'dense_6_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/MatMul/ReadVariableOp?(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_2/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_2/ReadVariableOp?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulinputs%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
layer_normalization_3/ShapeShapedense_9/MatMul:product:0*
T0*
_output_shapes
:2
layer_normalization_3/Shape?
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)layer_normalization_3/strided_slice/stack?
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_3/strided_slice/stack_1?
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_3/strided_slice/stack_2?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization_3/strided_slice|
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_3/mul/x?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_3/mul?
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_3/strided_slice_1/stack?
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_3/strided_slice_1/stack_1?
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_3/strided_slice_1/stack_2?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_3/strided_slice_1?
layer_normalization_3/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_3/mul_1/x?
layer_normalization_3/mul_1Mul&layer_normalization_3/mul_1/x:output:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_3/mul_1?
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_3/Reshape/shape/0?
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_3/Reshape/shape/3?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul:z:0layer_normalization_3/mul_1:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#layer_normalization_3/Reshape/shape?
layer_normalization_3/ReshapeReshapedense_9/MatMul:product:0,layer_normalization_3/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_normalization_3/Reshape?
!layer_normalization_3/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!layer_normalization_3/ones/Less/y?
layer_normalization_3/ones/LessLesslayer_normalization_3/mul:z:0*layer_normalization_3/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
layer_normalization_3/ones/Less?
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul:z:0*
N*
T0*
_output_shapes
:2#
!layer_normalization_3/ones/packed?
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 layer_normalization_3/ones/Const?
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_3/ones?
"layer_normalization_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"layer_normalization_3/zeros/Less/y?
 layer_normalization_3/zeros/LessLesslayer_normalization_3/mul:z:0+layer_normalization_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 layer_normalization_3/zeros/Less?
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_3/zeros/packed?
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!layer_normalization_3/zeros/Const?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_3/zeros}
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_3/Const?
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_3/Const_1?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2(
&layer_normalization_3/FusedBatchNormV3?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*'
_output_shapes
:?????????2!
layer_normalization_3/Reshape_1?
*layer_normalization_3/mul_2/ReadVariableOpReadVariableOp3layer_normalization_3_mul_2_readvariableop_resource*
_output_shapes
:*
dtype02,
*layer_normalization_3/mul_2/ReadVariableOp?
layer_normalization_3/mul_2Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_normalization_3/mul_2?
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes
:*
dtype02*
(layer_normalization_3/add/ReadVariableOp?
layer_normalization_3/addAddV2layer_normalization_3/mul_2:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_normalization_3/add?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMullayer_normalization_3/add:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_8/BiasAddp
re_lu_3/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
re_lu_3/Relu?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulre_lu_3/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_7/BiasAddp
re_lu_2/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
re_lu_2/Relu?
layer_normalization_2/ShapeShapere_lu_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization_2/Shape?
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)layer_normalization_2/strided_slice/stack?
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_2/strided_slice/stack_1?
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_2/strided_slice/stack_2?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization_2/strided_slice|
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_2/mul/x?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_2/mul?
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_2/strided_slice_1/stack?
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_2/strided_slice_1/stack_1?
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_2/strided_slice_1/stack_2?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_2/strided_slice_1?
layer_normalization_2/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_2/mul_1/x?
layer_normalization_2/mul_1Mul&layer_normalization_2/mul_1/x:output:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_2/mul_1?
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_2/Reshape/shape/0?
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_2/Reshape/shape/3?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul:z:0layer_normalization_2/mul_1:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#layer_normalization_2/Reshape/shape?
layer_normalization_2/ReshapeReshapere_lu_2/Relu:activations:0,layer_normalization_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_normalization_2/Reshape?
!layer_normalization_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!layer_normalization_2/ones/Less/y?
layer_normalization_2/ones/LessLesslayer_normalization_2/mul:z:0*layer_normalization_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
layer_normalization_2/ones/Less?
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul:z:0*
N*
T0*
_output_shapes
:2#
!layer_normalization_2/ones/packed?
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 layer_normalization_2/ones/Const?
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_2/ones?
"layer_normalization_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"layer_normalization_2/zeros/Less/y?
 layer_normalization_2/zeros/LessLesslayer_normalization_2/mul:z:0+layer_normalization_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 layer_normalization_2/zeros/Less?
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_2/zeros/packed?
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!layer_normalization_2/zeros/Const?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_2/zeros}
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_2/Const?
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_2/Const_1?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2(
&layer_normalization_2/FusedBatchNormV3?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*'
_output_shapes
:????????? 2!
layer_normalization_2/Reshape_1?
*layer_normalization_2/mul_2/ReadVariableOpReadVariableOp3layer_normalization_2_mul_2_readvariableop_resource*
_output_shapes
: *
dtype02,
*layer_normalization_2/mul_2/ReadVariableOp?
layer_normalization_2/mul_2Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_normalization_2/mul_2?
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes
: *
dtype02*
(layer_normalization_2/add/ReadVariableOp?
layer_normalization_2/addAddV2layer_normalization_2/mul_2:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_normalization_2/add
activation_3/TanhTanhlayer_normalization_2/add:z:0*
T0*'
_output_shapes
:????????? 2
activation_3/Tanh?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulactivation_3/Tanh:y:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/BiasAddz
activation_2/TanhTanhdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
activation_2/Tanh?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulactivation_2/Tanh:y:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/BiasAdd?
IdentityIdentitydense_5/BiasAdd:output:0^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/MatMul/ReadVariableOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_2/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_2/ReadVariableOp*layer_normalization_2/mul_2/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_2/ReadVariableOp*layer_normalization_3/mul_2/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?

H__inference_sequential_layer_call_and_return_conditional_losses_10568115

inputs8
&dense_9_matmul_readvariableop_resource:A
3layer_normalization_3_mul_2_readvariableop_resource:?
1layer_normalization_3_add_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource: 5
'dense_8_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource:  5
'dense_7_biasadd_readvariableop_resource: A
3layer_normalization_2_mul_2_readvariableop_resource: ?
1layer_normalization_2_add_readvariableop_resource: 8
&dense_6_matmul_readvariableop_resource:  5
'dense_6_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity??dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?dense_9/MatMul/ReadVariableOp?(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_2/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_2/ReadVariableOp?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMulinputs%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
layer_normalization_3/ShapeShapedense_9/MatMul:product:0*
T0*
_output_shapes
:2
layer_normalization_3/Shape?
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)layer_normalization_3/strided_slice/stack?
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_3/strided_slice/stack_1?
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_3/strided_slice/stack_2?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization_3/strided_slice|
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_3/mul/x?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_3/mul?
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_3/strided_slice_1/stack?
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_3/strided_slice_1/stack_1?
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_3/strided_slice_1/stack_2?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_3/strided_slice_1?
layer_normalization_3/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_3/mul_1/x?
layer_normalization_3/mul_1Mul&layer_normalization_3/mul_1/x:output:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_3/mul_1?
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_3/Reshape/shape/0?
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_3/Reshape/shape/3?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul:z:0layer_normalization_3/mul_1:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#layer_normalization_3/Reshape/shape?
layer_normalization_3/ReshapeReshapedense_9/MatMul:product:0,layer_normalization_3/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_normalization_3/Reshape?
!layer_normalization_3/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!layer_normalization_3/ones/Less/y?
layer_normalization_3/ones/LessLesslayer_normalization_3/mul:z:0*layer_normalization_3/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
layer_normalization_3/ones/Less?
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul:z:0*
N*
T0*
_output_shapes
:2#
!layer_normalization_3/ones/packed?
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 layer_normalization_3/ones/Const?
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_3/ones?
"layer_normalization_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"layer_normalization_3/zeros/Less/y?
 layer_normalization_3/zeros/LessLesslayer_normalization_3/mul:z:0+layer_normalization_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 layer_normalization_3/zeros/Less?
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_3/zeros/packed?
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!layer_normalization_3/zeros/Const?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_3/zeros}
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_3/Const?
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_3/Const_1?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2(
&layer_normalization_3/FusedBatchNormV3?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*'
_output_shapes
:?????????2!
layer_normalization_3/Reshape_1?
*layer_normalization_3/mul_2/ReadVariableOpReadVariableOp3layer_normalization_3_mul_2_readvariableop_resource*
_output_shapes
:*
dtype02,
*layer_normalization_3/mul_2/ReadVariableOp?
layer_normalization_3/mul_2Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_normalization_3/mul_2?
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes
:*
dtype02*
(layer_normalization_3/add/ReadVariableOp?
layer_normalization_3/addAddV2layer_normalization_3/mul_2:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer_normalization_3/add?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMullayer_normalization_3/add:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_8/BiasAddp
re_lu_3/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
re_lu_3/Relu?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMulre_lu_3/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_7/BiasAddp
re_lu_2/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
re_lu_2/Relu?
layer_normalization_2/ShapeShapere_lu_2/Relu:activations:0*
T0*
_output_shapes
:2
layer_normalization_2/Shape?
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)layer_normalization_2/strided_slice/stack?
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_2/strided_slice/stack_1?
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_2/strided_slice/stack_2?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#layer_normalization_2/strided_slice|
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_2/mul/x?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: 2
layer_normalization_2/mul?
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+layer_normalization_2/strided_slice_1/stack?
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_2/strided_slice_1/stack_1?
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-layer_normalization_2/strided_slice_1/stack_2?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%layer_normalization_2/strided_slice_1?
layer_normalization_2/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2
layer_normalization_2/mul_1/x?
layer_normalization_2/mul_1Mul&layer_normalization_2/mul_1/x:output:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2
layer_normalization_2/mul_1?
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_2/Reshape/shape/0?
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2'
%layer_normalization_2/Reshape/shape/3?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul:z:0layer_normalization_2/mul_1:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2%
#layer_normalization_2/Reshape/shape?
layer_normalization_2/ReshapeReshapere_lu_2/Relu:activations:0,layer_normalization_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2
layer_normalization_2/Reshape?
!layer_normalization_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!layer_normalization_2/ones/Less/y?
layer_normalization_2/ones/LessLesslayer_normalization_2/mul:z:0*layer_normalization_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
layer_normalization_2/ones/Less?
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul:z:0*
N*
T0*
_output_shapes
:2#
!layer_normalization_2/ones/packed?
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 layer_normalization_2/ones/Const?
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_2/ones?
"layer_normalization_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"layer_normalization_2/zeros/Less/y?
 layer_normalization_2/zeros/LessLesslayer_normalization_2/mul:z:0+layer_normalization_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 layer_normalization_2/zeros/Less?
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul:z:0*
N*
T0*
_output_shapes
:2$
"layer_normalization_2/zeros/packed?
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!layer_normalization_2/zeros/Const?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
layer_normalization_2/zeros}
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_2/Const?
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2
layer_normalization_2/Const_1?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2(
&layer_normalization_2/FusedBatchNormV3?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*'
_output_shapes
:????????? 2!
layer_normalization_2/Reshape_1?
*layer_normalization_2/mul_2/ReadVariableOpReadVariableOp3layer_normalization_2_mul_2_readvariableop_resource*
_output_shapes
: *
dtype02,
*layer_normalization_2/mul_2/ReadVariableOp?
layer_normalization_2/mul_2Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_normalization_2/mul_2?
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes
: *
dtype02*
(layer_normalization_2/add/ReadVariableOp?
layer_normalization_2/addAddV2layer_normalization_2/mul_2:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_normalization_2/add
activation_3/TanhTanhlayer_normalization_2/add:z:0*
T0*'
_output_shapes
:????????? 2
activation_3/Tanh?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulactivation_3/Tanh:y:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/BiasAddz
activation_2/TanhTanhdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
activation_2/Tanh?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMulactivation_2/Tanh:y:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_5/BiasAdd?
IdentityIdentitydense_5/BiasAdd:output:0^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/MatMul/ReadVariableOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_2/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_2/ReadVariableOp*layer_normalization_2/mul_2/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_2/ReadVariableOp*layer_normalization_3/mul_2/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_5_layer_call_and_return_conditional_losses_10567494

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?&
?
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_10568237

inputs+
mul_2_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp?mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y^
	ones/LessLessmul:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/LessY
ones/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/ya

zeros/LessLessmul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less[
zeros/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1?
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
mul_2?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
add?
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_5_layer_call_and_return_conditional_losses_10568408

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
a
E__inference_re_lu_2_layer_call_and_return_conditional_losses_10567400

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_5_layer_call_fn_10568417

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_105674942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_dense_8_layer_call_and_return_conditional_losses_10567366

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_activation_2_layer_call_and_return_conditional_losses_10567482

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:????????? 2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
*__inference_re_lu_3_layer_call_fn_10568275

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_105673772
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
-__inference_sequential_layer_call_fn_10568146

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_105675012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_activation_2_layer_call_and_return_conditional_losses_10568393

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:????????? 2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
E__inference_dense_7_layer_call_and_return_conditional_losses_10568285

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_layer_call_and_return_conditional_losses_10567838
dense_9_input"
dense_9_10567800:,
layer_normalization_3_10567803:,
layer_normalization_3_10567805:"
dense_8_10567808: 
dense_8_10567810: "
dense_7_10567814:  
dense_7_10567816: ,
layer_normalization_2_10567820: ,
layer_normalization_2_10567822: "
dense_6_10567826:  
dense_6_10567828: "
dense_5_10567832: 
dense_5_10567834:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?-layer_normalization_2/StatefulPartitionedCall?-layer_normalization_3/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_10567800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_105673002!
dense_9/StatefulPartitionedCall?
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0layer_normalization_3_10567803layer_normalization_3_10567805*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_105673502/
-layer_normalization_3/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0dense_8_10567808dense_8_10567810*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_105673662!
dense_8/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_105673772
re_lu_3/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0dense_7_10567814dense_7_10567816*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_105673892!
dense_7/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_105674002
re_lu_2/PartitionedCall?
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0layer_normalization_2_10567820layer_normalization_2_10567822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_105674482/
-layer_normalization_2/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_3_layer_call_and_return_conditional_losses_105674592
activation_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0dense_6_10567826dense_6_10567828*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_105674712!
dense_6/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_2_layer_call_and_return_conditional_losses_105674822
activation_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0dense_5_10567832dense_5_10567834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_105674942!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedense_9_input
?
?
E__inference_dense_9_layer_call_and_return_conditional_losses_10568184

inputs0
matmul_readvariableop_resource:
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_re_lu_2_layer_call_fn_10568304

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_105674002
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_layer_call_and_return_conditional_losses_10567501

inputs"
dense_9_10567301:,
layer_normalization_3_10567351:,
layer_normalization_3_10567353:"
dense_8_10567367: 
dense_8_10567369: "
dense_7_10567390:  
dense_7_10567392: ,
layer_normalization_2_10567449: ,
layer_normalization_2_10567451: "
dense_6_10567472:  
dense_6_10567474: "
dense_5_10567495: 
dense_5_10567497:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?-layer_normalization_2/StatefulPartitionedCall?-layer_normalization_3/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_10567301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_105673002!
dense_9/StatefulPartitionedCall?
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0layer_normalization_3_10567351layer_normalization_3_10567353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_105673502/
-layer_normalization_3/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0dense_8_10567367dense_8_10567369*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_105673662!
dense_8/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_105673772
re_lu_3/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0dense_7_10567390dense_7_10567392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_105673892!
dense_7/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_105674002
re_lu_2/PartitionedCall?
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0layer_normalization_2_10567449layer_normalization_2_10567451*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_105674482/
-layer_normalization_2/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_3_layer_call_and_return_conditional_losses_105674592
activation_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0dense_6_10567472dense_6_10567474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_105674712!
dense_6/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_2_layer_call_and_return_conditional_losses_105674822
activation_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0dense_5_10567495dense_5_10567497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_105674942!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__wrapped_model_10567286
dense_9_inputC
1sequential_dense_9_matmul_readvariableop_resource:L
>sequential_layer_normalization_3_mul_2_readvariableop_resource:J
<sequential_layer_normalization_3_add_readvariableop_resource:C
1sequential_dense_8_matmul_readvariableop_resource: @
2sequential_dense_8_biasadd_readvariableop_resource: C
1sequential_dense_7_matmul_readvariableop_resource:  @
2sequential_dense_7_biasadd_readvariableop_resource: L
>sequential_layer_normalization_2_mul_2_readvariableop_resource: J
<sequential_layer_normalization_2_add_readvariableop_resource: C
1sequential_dense_6_matmul_readvariableop_resource:  @
2sequential_dense_6_biasadd_readvariableop_resource: C
1sequential_dense_5_matmul_readvariableop_resource: @
2sequential_dense_5_biasadd_readvariableop_resource:
identity??)sequential/dense_5/BiasAdd/ReadVariableOp?(sequential/dense_5/MatMul/ReadVariableOp?)sequential/dense_6/BiasAdd/ReadVariableOp?(sequential/dense_6/MatMul/ReadVariableOp?)sequential/dense_7/BiasAdd/ReadVariableOp?(sequential/dense_7/MatMul/ReadVariableOp?)sequential/dense_8/BiasAdd/ReadVariableOp?(sequential/dense_8/MatMul/ReadVariableOp?(sequential/dense_9/MatMul/ReadVariableOp?3sequential/layer_normalization_2/add/ReadVariableOp?5sequential/layer_normalization_2/mul_2/ReadVariableOp?3sequential/layer_normalization_3/add/ReadVariableOp?5sequential/layer_normalization_3/mul_2/ReadVariableOp?
(sequential/dense_9/MatMul/ReadVariableOpReadVariableOp1sequential_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(sequential/dense_9/MatMul/ReadVariableOp?
sequential/dense_9/MatMulMatMuldense_9_input0sequential/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_9/MatMul?
&sequential/layer_normalization_3/ShapeShape#sequential/dense_9/MatMul:product:0*
T0*
_output_shapes
:2(
&sequential/layer_normalization_3/Shape?
4sequential/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential/layer_normalization_3/strided_slice/stack?
6sequential/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/layer_normalization_3/strided_slice/stack_1?
6sequential/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/layer_normalization_3/strided_slice/stack_2?
.sequential/layer_normalization_3/strided_sliceStridedSlice/sequential/layer_normalization_3/Shape:output:0=sequential/layer_normalization_3/strided_slice/stack:output:0?sequential/layer_normalization_3/strided_slice/stack_1:output:0?sequential/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential/layer_normalization_3/strided_slice?
&sequential/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential/layer_normalization_3/mul/x?
$sequential/layer_normalization_3/mulMul/sequential/layer_normalization_3/mul/x:output:07sequential/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: 2&
$sequential/layer_normalization_3/mul?
6sequential/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential/layer_normalization_3/strided_slice_1/stack?
8sequential/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential/layer_normalization_3/strided_slice_1/stack_1?
8sequential/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential/layer_normalization_3/strided_slice_1/stack_2?
0sequential/layer_normalization_3/strided_slice_1StridedSlice/sequential/layer_normalization_3/Shape:output:0?sequential/layer_normalization_3/strided_slice_1/stack:output:0Asequential/layer_normalization_3/strided_slice_1/stack_1:output:0Asequential/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential/layer_normalization_3/strided_slice_1?
(sequential/layer_normalization_3/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential/layer_normalization_3/mul_1/x?
&sequential/layer_normalization_3/mul_1Mul1sequential/layer_normalization_3/mul_1/x:output:09sequential/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&sequential/layer_normalization_3/mul_1?
0sequential/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential/layer_normalization_3/Reshape/shape/0?
0sequential/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential/layer_normalization_3/Reshape/shape/3?
.sequential/layer_normalization_3/Reshape/shapePack9sequential/layer_normalization_3/Reshape/shape/0:output:0(sequential/layer_normalization_3/mul:z:0*sequential/layer_normalization_3/mul_1:z:09sequential/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.sequential/layer_normalization_3/Reshape/shape?
(sequential/layer_normalization_3/ReshapeReshape#sequential/dense_9/MatMul:product:07sequential/layer_normalization_3/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2*
(sequential/layer_normalization_3/Reshape?
,sequential/layer_normalization_3/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,sequential/layer_normalization_3/ones/Less/y?
*sequential/layer_normalization_3/ones/LessLess(sequential/layer_normalization_3/mul:z:05sequential/layer_normalization_3/ones/Less/y:output:0*
T0*
_output_shapes
: 2,
*sequential/layer_normalization_3/ones/Less?
,sequential/layer_normalization_3/ones/packedPack(sequential/layer_normalization_3/mul:z:0*
N*
T0*
_output_shapes
:2.
,sequential/layer_normalization_3/ones/packed?
+sequential/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+sequential/layer_normalization_3/ones/Const?
%sequential/layer_normalization_3/onesFill5sequential/layer_normalization_3/ones/packed:output:04sequential/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????2'
%sequential/layer_normalization_3/ones?
-sequential/layer_normalization_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2/
-sequential/layer_normalization_3/zeros/Less/y?
+sequential/layer_normalization_3/zeros/LessLess(sequential/layer_normalization_3/mul:z:06sequential/layer_normalization_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2-
+sequential/layer_normalization_3/zeros/Less?
-sequential/layer_normalization_3/zeros/packedPack(sequential/layer_normalization_3/mul:z:0*
N*
T0*
_output_shapes
:2/
-sequential/layer_normalization_3/zeros/packed?
,sequential/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2.
,sequential/layer_normalization_3/zeros/Const?
&sequential/layer_normalization_3/zerosFill6sequential/layer_normalization_3/zeros/packed:output:05sequential/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2(
&sequential/layer_normalization_3/zeros?
&sequential/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB 2(
&sequential/layer_normalization_3/Const?
(sequential/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2*
(sequential/layer_normalization_3/Const_1?
1sequential/layer_normalization_3/FusedBatchNormV3FusedBatchNormV31sequential/layer_normalization_3/Reshape:output:0.sequential/layer_normalization_3/ones:output:0/sequential/layer_normalization_3/zeros:output:0/sequential/layer_normalization_3/Const:output:01sequential/layer_normalization_3/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:23
1sequential/layer_normalization_3/FusedBatchNormV3?
*sequential/layer_normalization_3/Reshape_1Reshape5sequential/layer_normalization_3/FusedBatchNormV3:y:0/sequential/layer_normalization_3/Shape:output:0*
T0*'
_output_shapes
:?????????2,
*sequential/layer_normalization_3/Reshape_1?
5sequential/layer_normalization_3/mul_2/ReadVariableOpReadVariableOp>sequential_layer_normalization_3_mul_2_readvariableop_resource*
_output_shapes
:*
dtype027
5sequential/layer_normalization_3/mul_2/ReadVariableOp?
&sequential/layer_normalization_3/mul_2Mul3sequential/layer_normalization_3/Reshape_1:output:0=sequential/layer_normalization_3/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&sequential/layer_normalization_3/mul_2?
3sequential/layer_normalization_3/add/ReadVariableOpReadVariableOp<sequential_layer_normalization_3_add_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential/layer_normalization_3/add/ReadVariableOp?
$sequential/layer_normalization_3/addAddV2*sequential/layer_normalization_3/mul_2:z:0;sequential/layer_normalization_3/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2&
$sequential/layer_normalization_3/add?
(sequential/dense_8/MatMul/ReadVariableOpReadVariableOp1sequential_dense_8_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_8/MatMul/ReadVariableOp?
sequential/dense_8/MatMulMatMul(sequential/layer_normalization_3/add:z:00sequential/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense_8/MatMul?
)sequential/dense_8/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense_8/BiasAdd/ReadVariableOp?
sequential/dense_8/BiasAddBiasAdd#sequential/dense_8/MatMul:product:01sequential/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense_8/BiasAdd?
sequential/re_lu_3/ReluRelu#sequential/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/re_lu_3/Relu?
(sequential/dense_7/MatMul/ReadVariableOpReadVariableOp1sequential_dense_7_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02*
(sequential/dense_7/MatMul/ReadVariableOp?
sequential/dense_7/MatMulMatMul%sequential/re_lu_3/Relu:activations:00sequential/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense_7/MatMul?
)sequential/dense_7/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense_7/BiasAdd/ReadVariableOp?
sequential/dense_7/BiasAddBiasAdd#sequential/dense_7/MatMul:product:01sequential/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense_7/BiasAdd?
sequential/re_lu_2/ReluRelu#sequential/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/re_lu_2/Relu?
&sequential/layer_normalization_2/ShapeShape%sequential/re_lu_2/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential/layer_normalization_2/Shape?
4sequential/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential/layer_normalization_2/strided_slice/stack?
6sequential/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/layer_normalization_2/strided_slice/stack_1?
6sequential/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential/layer_normalization_2/strided_slice/stack_2?
.sequential/layer_normalization_2/strided_sliceStridedSlice/sequential/layer_normalization_2/Shape:output:0=sequential/layer_normalization_2/strided_slice/stack:output:0?sequential/layer_normalization_2/strided_slice/stack_1:output:0?sequential/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential/layer_normalization_2/strided_slice?
&sequential/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential/layer_normalization_2/mul/x?
$sequential/layer_normalization_2/mulMul/sequential/layer_normalization_2/mul/x:output:07sequential/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: 2&
$sequential/layer_normalization_2/mul?
6sequential/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential/layer_normalization_2/strided_slice_1/stack?
8sequential/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential/layer_normalization_2/strided_slice_1/stack_1?
8sequential/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential/layer_normalization_2/strided_slice_1/stack_2?
0sequential/layer_normalization_2/strided_slice_1StridedSlice/sequential/layer_normalization_2/Shape:output:0?sequential/layer_normalization_2/strided_slice_1/stack:output:0Asequential/layer_normalization_2/strided_slice_1/stack_1:output:0Asequential/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential/layer_normalization_2/strided_slice_1?
(sequential/layer_normalization_2/mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2*
(sequential/layer_normalization_2/mul_1/x?
&sequential/layer_normalization_2/mul_1Mul1sequential/layer_normalization_2/mul_1/x:output:09sequential/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&sequential/layer_normalization_2/mul_1?
0sequential/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential/layer_normalization_2/Reshape/shape/0?
0sequential/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :22
0sequential/layer_normalization_2/Reshape/shape/3?
.sequential/layer_normalization_2/Reshape/shapePack9sequential/layer_normalization_2/Reshape/shape/0:output:0(sequential/layer_normalization_2/mul:z:0*sequential/layer_normalization_2/mul_1:z:09sequential/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:20
.sequential/layer_normalization_2/Reshape/shape?
(sequential/layer_normalization_2/ReshapeReshape%sequential/re_lu_2/Relu:activations:07sequential/layer_normalization_2/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2*
(sequential/layer_normalization_2/Reshape?
,sequential/layer_normalization_2/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,sequential/layer_normalization_2/ones/Less/y?
*sequential/layer_normalization_2/ones/LessLess(sequential/layer_normalization_2/mul:z:05sequential/layer_normalization_2/ones/Less/y:output:0*
T0*
_output_shapes
: 2,
*sequential/layer_normalization_2/ones/Less?
,sequential/layer_normalization_2/ones/packedPack(sequential/layer_normalization_2/mul:z:0*
N*
T0*
_output_shapes
:2.
,sequential/layer_normalization_2/ones/packed?
+sequential/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+sequential/layer_normalization_2/ones/Const?
%sequential/layer_normalization_2/onesFill5sequential/layer_normalization_2/ones/packed:output:04sequential/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????2'
%sequential/layer_normalization_2/ones?
-sequential/layer_normalization_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2/
-sequential/layer_normalization_2/zeros/Less/y?
+sequential/layer_normalization_2/zeros/LessLess(sequential/layer_normalization_2/mul:z:06sequential/layer_normalization_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2-
+sequential/layer_normalization_2/zeros/Less?
-sequential/layer_normalization_2/zeros/packedPack(sequential/layer_normalization_2/mul:z:0*
N*
T0*
_output_shapes
:2/
-sequential/layer_normalization_2/zeros/packed?
,sequential/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2.
,sequential/layer_normalization_2/zeros/Const?
&sequential/layer_normalization_2/zerosFill6sequential/layer_normalization_2/zeros/packed:output:05sequential/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2(
&sequential/layer_normalization_2/zeros?
&sequential/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB 2(
&sequential/layer_normalization_2/Const?
(sequential/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB 2*
(sequential/layer_normalization_2/Const_1?
1sequential/layer_normalization_2/FusedBatchNormV3FusedBatchNormV31sequential/layer_normalization_2/Reshape:output:0.sequential/layer_normalization_2/ones:output:0/sequential/layer_normalization_2/zeros:output:0/sequential/layer_normalization_2/Const:output:01sequential/layer_normalization_2/Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:23
1sequential/layer_normalization_2/FusedBatchNormV3?
*sequential/layer_normalization_2/Reshape_1Reshape5sequential/layer_normalization_2/FusedBatchNormV3:y:0/sequential/layer_normalization_2/Shape:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential/layer_normalization_2/Reshape_1?
5sequential/layer_normalization_2/mul_2/ReadVariableOpReadVariableOp>sequential_layer_normalization_2_mul_2_readvariableop_resource*
_output_shapes
: *
dtype027
5sequential/layer_normalization_2/mul_2/ReadVariableOp?
&sequential/layer_normalization_2/mul_2Mul3sequential/layer_normalization_2/Reshape_1:output:0=sequential/layer_normalization_2/mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2(
&sequential/layer_normalization_2/mul_2?
3sequential/layer_normalization_2/add/ReadVariableOpReadVariableOp<sequential_layer_normalization_2_add_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential/layer_normalization_2/add/ReadVariableOp?
$sequential/layer_normalization_2/addAddV2*sequential/layer_normalization_2/mul_2:z:0;sequential/layer_normalization_2/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2&
$sequential/layer_normalization_2/add?
sequential/activation_3/TanhTanh(sequential/layer_normalization_2/add:z:0*
T0*'
_output_shapes
:????????? 2
sequential/activation_3/Tanh?
(sequential/dense_6/MatMul/ReadVariableOpReadVariableOp1sequential_dense_6_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02*
(sequential/dense_6/MatMul/ReadVariableOp?
sequential/dense_6/MatMulMatMul sequential/activation_3/Tanh:y:00sequential/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense_6/MatMul?
)sequential/dense_6/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)sequential/dense_6/BiasAdd/ReadVariableOp?
sequential/dense_6/BiasAddBiasAdd#sequential/dense_6/MatMul:product:01sequential/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense_6/BiasAdd?
sequential/activation_2/TanhTanh#sequential/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/activation_2/Tanh?
(sequential/dense_5/MatMul/ReadVariableOpReadVariableOp1sequential_dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_5/MatMul/ReadVariableOp?
sequential/dense_5/MatMulMatMul sequential/activation_2/Tanh:y:00sequential/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_5/MatMul?
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_5/BiasAdd/ReadVariableOp?
sequential/dense_5/BiasAddBiasAdd#sequential/dense_5/MatMul:product:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_5/BiasAdd?
IdentityIdentity#sequential/dense_5/BiasAdd:output:0*^sequential/dense_5/BiasAdd/ReadVariableOp)^sequential/dense_5/MatMul/ReadVariableOp*^sequential/dense_6/BiasAdd/ReadVariableOp)^sequential/dense_6/MatMul/ReadVariableOp*^sequential/dense_7/BiasAdd/ReadVariableOp)^sequential/dense_7/MatMul/ReadVariableOp*^sequential/dense_8/BiasAdd/ReadVariableOp)^sequential/dense_8/MatMul/ReadVariableOp)^sequential/dense_9/MatMul/ReadVariableOp4^sequential/layer_normalization_2/add/ReadVariableOp6^sequential/layer_normalization_2/mul_2/ReadVariableOp4^sequential/layer_normalization_3/add/ReadVariableOp6^sequential/layer_normalization_3/mul_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2T
(sequential/dense_5/MatMul/ReadVariableOp(sequential/dense_5/MatMul/ReadVariableOp2V
)sequential/dense_6/BiasAdd/ReadVariableOp)sequential/dense_6/BiasAdd/ReadVariableOp2T
(sequential/dense_6/MatMul/ReadVariableOp(sequential/dense_6/MatMul/ReadVariableOp2V
)sequential/dense_7/BiasAdd/ReadVariableOp)sequential/dense_7/BiasAdd/ReadVariableOp2T
(sequential/dense_7/MatMul/ReadVariableOp(sequential/dense_7/MatMul/ReadVariableOp2V
)sequential/dense_8/BiasAdd/ReadVariableOp)sequential/dense_8/BiasAdd/ReadVariableOp2T
(sequential/dense_8/MatMul/ReadVariableOp(sequential/dense_8/MatMul/ReadVariableOp2T
(sequential/dense_9/MatMul/ReadVariableOp(sequential/dense_9/MatMul/ReadVariableOp2j
3sequential/layer_normalization_2/add/ReadVariableOp3sequential/layer_normalization_2/add/ReadVariableOp2n
5sequential/layer_normalization_2/mul_2/ReadVariableOp5sequential/layer_normalization_2/mul_2/ReadVariableOp2j
3sequential/layer_normalization_3/add/ReadVariableOp3sequential/layer_normalization_3/add/ReadVariableOp2n
5sequential/layer_normalization_3/mul_2/ReadVariableOp5sequential/layer_normalization_3/mul_2/ReadVariableOp:V R
'
_output_shapes
:?????????
'
_user_specified_namedense_9_input
?
K
/__inference_activation_3_layer_call_fn_10568369

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_3_layer_call_and_return_conditional_losses_105674592
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_7_layer_call_fn_10568294

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_105673892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
f
J__inference_activation_3_layer_call_and_return_conditional_losses_10567459

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:????????? 2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
f
J__inference_activation_3_layer_call_and_return_conditional_losses_10568364

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:????????? 2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
a
E__inference_re_lu_3_layer_call_and_return_conditional_losses_10567377

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
&__inference_signature_wrapper_10567877
dense_9_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_105672862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedense_9_input
?	
?
E__inference_dense_6_layer_call_and_return_conditional_losses_10568379

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_layer_call_and_return_conditional_losses_10567797
dense_9_input"
dense_9_10567759:,
layer_normalization_3_10567762:,
layer_normalization_3_10567764:"
dense_8_10567767: 
dense_8_10567769: "
dense_7_10567773:  
dense_7_10567775: ,
layer_normalization_2_10567779: ,
layer_normalization_2_10567781: "
dense_6_10567785:  
dense_6_10567787: "
dense_5_10567791: 
dense_5_10567793:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?-layer_normalization_2/StatefulPartitionedCall?-layer_normalization_3/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCalldense_9_inputdense_9_10567759*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_105673002!
dense_9/StatefulPartitionedCall?
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0layer_normalization_3_10567762layer_normalization_3_10567764*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_105673502/
-layer_normalization_3/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0dense_8_10567767dense_8_10567769*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_105673662!
dense_8/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_105673772
re_lu_3/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0dense_7_10567773dense_7_10567775*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_105673892!
dense_7/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_105674002
re_lu_2/PartitionedCall?
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0layer_normalization_2_10567779layer_normalization_2_10567781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_105674482/
-layer_normalization_2/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_3_layer_call_and_return_conditional_losses_105674592
activation_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0dense_6_10567785dense_6_10567787*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_105674712!
dense_6/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_2_layer_call_and_return_conditional_losses_105674822
activation_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0dense_5_10567791dense_5_10567793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_105674942!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedense_9_input
?&
?
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_10567448

inputs+
mul_2_readvariableop_resource: )
add_readvariableop_resource: 
identity??add/ReadVariableOp?mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y^
	ones/LessLessmul:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/LessY
ones/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/ya

zeros/LessLessmul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less[
zeros/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:????????? 2
	Reshape_1?
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
: *
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
mul_2?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
add?
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
K
/__inference_activation_2_layer_call_fn_10568398

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_2_layer_call_and_return_conditional_losses_105674822
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
-__inference_sequential_layer_call_fn_10568177

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_105676962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_6_layer_call_fn_10568388

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_105674712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?_
?
!__inference__traced_save_10568578
file_prefix-
)savev2_dense_9_kernel_read_readvariableop:
6savev2_layer_normalization_3_gamma_read_readvariableop9
5savev2_layer_normalization_3_beta_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop:
6savev2_layer_normalization_2_gamma_read_readvariableop9
5savev2_layer_normalization_2_beta_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_adam_layer_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableopA
=savev2_adam_layer_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_2_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopA
=savev2_adam_layer_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_3_beta_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableopA
=savev2_adam_layer_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_2_beta_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*?
value?B?/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_9_kernel_read_readvariableop6savev2_layer_normalization_3_gamma_read_readvariableop5savev2_layer_normalization_3_beta_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop6savev2_layer_normalization_2_gamma_read_readvariableop5savev2_layer_normalization_2_beta_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_adam_layer_normalization_3_gamma_m_read_readvariableop<savev2_adam_layer_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop=savev2_adam_layer_normalization_2_gamma_m_read_readvariableop<savev2_adam_layer_normalization_2_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop=savev2_adam_layer_normalization_3_gamma_v_read_readvariableop<savev2_adam_layer_normalization_3_beta_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop=savev2_adam_layer_normalization_2_gamma_v_read_readvariableop<savev2_adam_layer_normalization_2_beta_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::: : :  : : : :  : : :: : : : : : : : : ::: : :  : : : :  : : :::: : :  : : : :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: :$
 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

:  :  

_output_shapes
: :$! 

_output_shapes

: : "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::$% 

_output_shapes

: : &

_output_shapes
: :$' 

_output_shapes

:  : (

_output_shapes
: : )

_output_shapes
: : *

_output_shapes
: :$+ 

_output_shapes

:  : ,

_output_shapes
: :$- 

_output_shapes

: : .

_output_shapes
::/

_output_shapes
: 
?
?
E__inference_dense_9_layer_call_and_return_conditional_losses_10567300

inputs0
matmul_readvariableop_resource:
identity??MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul|
IdentityIdentityMatMul:product:0^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
*__inference_dense_9_layer_call_fn_10568191

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_105673002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_6_layer_call_and_return_conditional_losses_10567471

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
8__inference_layer_normalization_2_layer_call_fn_10568359

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_105674482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
a
E__inference_re_lu_3_layer_call_and_return_conditional_losses_10568270

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?&
?
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_10568350

inputs+
mul_2_readvariableop_resource: )
add_readvariableop_resource: 
identity??add/ReadVariableOp?mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y^
	ones/LessLessmul:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/LessY
ones/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/ya

zeros/LessLessmul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less[
zeros/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:????????? 2
	Reshape_1?
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
: *
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
mul_2?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
add?
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_8_layer_call_fn_10568265

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_105673662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_layer_call_fn_10567756
dense_9_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8:  
	unknown_9: 

unknown_10: 

unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_9_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_105676962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedense_9_input
?
?
8__inference_layer_normalization_3_layer_call_fn_10568246

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_105673502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_10567350

inputs+
mul_2_readvariableop_resource:)
add_readvariableop_resource:
identity??add/ReadVariableOp?mul_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceP
mul/xConst*
_output_shapes
: *
dtype0*
value	B :2
mul/xZ
mulMulmul/x:output:0strided_slice:output:0*
T0*
_output_shapes
: 2
mulx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1T
mul_1/xConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/xb
mul_1Mulmul_1/x:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2
mul_1d
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/0d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackReshape/shape/0:output:0mul:z:0	mul_1:z:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape?
ReshapeReshapeinputsReshape/shape:output:0*
T0*8
_output_shapes&
$:"??????????????????2	
Reshape]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
ones/Less/y^
	ones/LessLessmul:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/LessY
ones/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2

ones/Constm
onesFillones/packed:output:0ones/Const:output:0*
T0*#
_output_shapes
:?????????2
ones_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/ya

zeros/LessLessmul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Less[
zeros/packedPackmul:z:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constq
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*#
_output_shapes
:?????????2
zerosQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ConstU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
FusedBatchNormV3FusedBatchNormV3Reshape:output:0ones:output:0zeros:output:0Const:output:0Const_1:output:0*
T0*
U0*x
_output_shapesf
d:"??????????????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:2
FusedBatchNormV3y
	Reshape_1ReshapeFusedBatchNormV3:y:0Shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1?
mul_2/ReadVariableOpReadVariableOpmul_2_readvariableop_resource*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpy
mul_2MulReshape_1:output:0mul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
mul_2?
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpl
addAddV2	mul_2:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
add?
IdentityIdentityadd:z:0^add/ReadVariableOp^mul_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2(
add/ReadVariableOpadd/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_7_layer_call_and_return_conditional_losses_10567389

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?4
?
H__inference_sequential_layer_call_and_return_conditional_losses_10567696

inputs"
dense_9_10567658:,
layer_normalization_3_10567661:,
layer_normalization_3_10567663:"
dense_8_10567666: 
dense_8_10567668: "
dense_7_10567672:  
dense_7_10567674: ,
layer_normalization_2_10567678: ,
layer_normalization_2_10567680: "
dense_6_10567684:  
dense_6_10567686: "
dense_5_10567690: 
dense_5_10567692:
identity??dense_5/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?dense_8/StatefulPartitionedCall?dense_9/StatefulPartitionedCall?-layer_normalization_2/StatefulPartitionedCall?-layer_normalization_3/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_10567658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_9_layer_call_and_return_conditional_losses_105673002!
dense_9/StatefulPartitionedCall?
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0layer_normalization_3_10567661layer_normalization_3_10567663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_105673502/
-layer_normalization_3/StatefulPartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0dense_8_10567666dense_8_10567668*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_8_layer_call_and_return_conditional_losses_105673662!
dense_8/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_3_layer_call_and_return_conditional_losses_105673772
re_lu_3/PartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_3/PartitionedCall:output:0dense_7_10567672dense_7_10567674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_7_layer_call_and_return_conditional_losses_105673892!
dense_7/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_re_lu_2_layer_call_and_return_conditional_losses_105674002
re_lu_2/PartitionedCall?
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0layer_normalization_2_10567678layer_normalization_2_10567680*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_105674482/
-layer_normalization_2/StatefulPartitionedCall?
activation_3/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_3_layer_call_and_return_conditional_losses_105674592
activation_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0dense_6_10567684dense_6_10567686*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_6_layer_call_and_return_conditional_losses_105674712!
dense_6/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_activation_2_layer_call_and_return_conditional_losses_105674822
activation_2/PartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0dense_5_10567690dense_5_10567692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_5_layer_call_and_return_conditional_losses_105674942!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0 ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_8_layer_call_and_return_conditional_losses_10568256

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
$__inference__traced_restore_10568726
file_prefix1
assignvariableop_dense_9_kernel:<
.assignvariableop_1_layer_normalization_3_gamma:;
-assignvariableop_2_layer_normalization_3_beta:3
!assignvariableop_3_dense_8_kernel: -
assignvariableop_4_dense_8_bias: 3
!assignvariableop_5_dense_7_kernel:  -
assignvariableop_6_dense_7_bias: <
.assignvariableop_7_layer_normalization_2_gamma: ;
-assignvariableop_8_layer_normalization_2_beta: 3
!assignvariableop_9_dense_6_kernel:  .
 assignvariableop_10_dense_6_bias: 4
"assignvariableop_11_dense_5_kernel: .
 assignvariableop_12_dense_5_bias:'
assignvariableop_13_adam_iter:	 )
assignvariableop_14_adam_beta_1: )
assignvariableop_15_adam_beta_2: (
assignvariableop_16_adam_decay: 0
&assignvariableop_17_adam_learning_rate: #
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: D
6assignvariableop_22_adam_layer_normalization_3_gamma_m:C
5assignvariableop_23_adam_layer_normalization_3_beta_m:;
)assignvariableop_24_adam_dense_8_kernel_m: 5
'assignvariableop_25_adam_dense_8_bias_m: ;
)assignvariableop_26_adam_dense_7_kernel_m:  5
'assignvariableop_27_adam_dense_7_bias_m: D
6assignvariableop_28_adam_layer_normalization_2_gamma_m: C
5assignvariableop_29_adam_layer_normalization_2_beta_m: ;
)assignvariableop_30_adam_dense_6_kernel_m:  5
'assignvariableop_31_adam_dense_6_bias_m: ;
)assignvariableop_32_adam_dense_5_kernel_m: 5
'assignvariableop_33_adam_dense_5_bias_m:D
6assignvariableop_34_adam_layer_normalization_3_gamma_v:C
5assignvariableop_35_adam_layer_normalization_3_beta_v:;
)assignvariableop_36_adam_dense_8_kernel_v: 5
'assignvariableop_37_adam_dense_8_bias_v: ;
)assignvariableop_38_adam_dense_7_kernel_v:  5
'assignvariableop_39_adam_dense_7_bias_v: D
6assignvariableop_40_adam_layer_normalization_2_gamma_v: C
5assignvariableop_41_adam_layer_normalization_2_beta_v: ;
)assignvariableop_42_adam_dense_6_kernel_v:  5
'assignvariableop_43_adam_dense_6_bias_v: ;
)assignvariableop_44_adam_dense_5_kernel_v: 5
'assignvariableop_45_adam_dense_5_bias_v:
identity_47??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*?
value?B?/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp.assignvariableop_1_layer_normalization_3_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp-assignvariableop_2_layer_normalization_3_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_8_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_8_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_7_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_7_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_layer_normalization_2_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp-assignvariableop_8_layer_normalization_2_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_6_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_6_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_5_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_5_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_iterIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_learning_rateIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_layer_normalization_3_gamma_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp5assignvariableop_23_adam_layer_normalization_3_beta_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_8_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_8_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_7_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_7_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_layer_normalization_2_gamma_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adam_layer_normalization_2_beta_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_6_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_6_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_5_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_5_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_layer_normalization_3_gamma_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp5assignvariableop_35_adam_layer_normalization_3_beta_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_8_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_dense_8_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_7_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_7_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_layer_normalization_2_gamma_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_layer_normalization_2_beta_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_6_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_6_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_5_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_dense_5_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_459
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_46?
Identity_47IdentityIdentity_46:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_47"#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
dense_9_input6
serving_default_dense_9_input:0?????????;
dense_50
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?S
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?N
_tf_keras_sequential?N{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_9_input"}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7]}, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "activation": "tanh"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "activation": "tanh"}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7]}, "float32", "dense_9_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_9_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7]}, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 14}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17}, {"class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "activation": "tanh"}, "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21}, {"class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "activation": "tanh"}, "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mean_squared_error", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 28}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?	

kernel
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_9", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7]}, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7]}}
?
axis
	gamma
beta
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
 	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "layer_normalization_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LayerNormalization", "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 6, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7]}}
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%regularization_losses
&trainable_variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7]}}
?
#(_self_saveable_object_factories
)	variables
*regularization_losses
+trainable_variables
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "re_lu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 10}
?

-kernel
.bias
#/_self_saveable_object_factories
0	variables
1regularization_losses
2trainable_variables
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
#4_self_saveable_object_factories
5	variables
6regularization_losses
7trainable_variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "re_lu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 14}
?
9axis
	:gamma
;beta
#<_self_saveable_object_factories
=	variables
>regularization_losses
?trainable_variables
@	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "layer_normalization_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LayerNormalization", "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
#A_self_saveable_object_factories
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "activation": "tanh"}, "shared_object_id": 18}
?

Fkernel
Gbias
#H_self_saveable_object_factories
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
#M_self_saveable_object_factories
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "activation_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32]}, "dtype": "float32", "activation": "tanh"}, "shared_object_id": 22}
?

Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratem?m?!m?"m?-m?.m?:m?;m?Fm?Gm?Rm?Sm?v?v?!v?"v?-v?.v?:v?;v?Fv?Gv?Rv?Sv?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
~
0
1
2
!3
"4
-5
.6
:7
;8
F9
G10
R11
S12"
trackable_list_wrapper
 "
trackable_list_wrapper
v
0
1
!2
"3
-4
.5
:6
;7
F8
G9
R10
S11"
trackable_list_wrapper
?
^layer_metrics
_layer_regularization_losses
	variables
regularization_losses

`layers
trainable_variables
ametrics
bnon_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2dense_9/kernel
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
clayer_metrics
dmetrics
elayer_regularization_losses
	variables
regularization_losses
trainable_variables

flayers
gnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2layer_normalization_3/gamma
(:&2layer_normalization_3/beta
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
hlayer_metrics
imetrics
jlayer_regularization_losses
	variables
regularization_losses
trainable_variables

klayers
lnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_8/kernel
: 2dense_8/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
mlayer_metrics
nmetrics
olayer_regularization_losses
$	variables
%regularization_losses
&trainable_variables

players
qnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
rlayer_metrics
smetrics
tlayer_regularization_losses
)	variables
*regularization_losses
+trainable_variables

ulayers
vnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :  2dense_7/kernel
: 2dense_7/bias
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
wlayer_metrics
xmetrics
ylayer_regularization_losses
0	variables
1regularization_losses
2trainable_variables

zlayers
{non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
|layer_metrics
}metrics
~layer_regularization_losses
5	variables
6regularization_losses
7trainable_variables

layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2layer_normalization_2/gamma
(:& 2layer_normalization_2/beta
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
=	variables
>regularization_losses
?trainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
B	variables
Cregularization_losses
Dtrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :  2dense_6/kernel
: 2dense_6/bias
 "
trackable_dict_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
I	variables
Jregularization_losses
Ktrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
N	variables
Oregularization_losses
Ptrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_5/kernel
:2dense_5/bias
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
?
?layer_metrics
?metrics
 ?layer_regularization_losses
U	variables
Vregularization_losses
Wtrainable_variables
?layers
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 33}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 28}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,2"Adam/layer_normalization_3/gamma/m
-:+2!Adam/layer_normalization_3/beta/m
%:# 2Adam/dense_8/kernel/m
: 2Adam/dense_8/bias/m
%:#  2Adam/dense_7/kernel/m
: 2Adam/dense_7/bias/m
.:, 2"Adam/layer_normalization_2/gamma/m
-:+ 2!Adam/layer_normalization_2/beta/m
%:#  2Adam/dense_6/kernel/m
: 2Adam/dense_6/bias/m
%:# 2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
.:,2"Adam/layer_normalization_3/gamma/v
-:+2!Adam/layer_normalization_3/beta/v
%:# 2Adam/dense_8/kernel/v
: 2Adam/dense_8/bias/v
%:#  2Adam/dense_7/kernel/v
: 2Adam/dense_7/bias/v
.:, 2"Adam/layer_normalization_2/gamma/v
-:+ 2!Adam/layer_normalization_2/beta/v
%:#  2Adam/dense_6/kernel/v
: 2Adam/dense_6/bias/v
%:# 2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
?2?
#__inference__wrapped_model_10567286?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *,?)
'?$
dense_9_input?????????
?2?
H__inference_sequential_layer_call_and_return_conditional_losses_10567996
H__inference_sequential_layer_call_and_return_conditional_losses_10568115
H__inference_sequential_layer_call_and_return_conditional_losses_10567797
H__inference_sequential_layer_call_and_return_conditional_losses_10567838?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_sequential_layer_call_fn_10567530
-__inference_sequential_layer_call_fn_10568146
-__inference_sequential_layer_call_fn_10568177
-__inference_sequential_layer_call_fn_10567756?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dense_9_layer_call_and_return_conditional_losses_10568184?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_9_layer_call_fn_10568191?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_10568237?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_layer_normalization_3_layer_call_fn_10568246?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_8_layer_call_and_return_conditional_losses_10568256?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_8_layer_call_fn_10568265?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_re_lu_3_layer_call_and_return_conditional_losses_10568270?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_re_lu_3_layer_call_fn_10568275?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_7_layer_call_and_return_conditional_losses_10568285?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_7_layer_call_fn_10568294?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_re_lu_2_layer_call_and_return_conditional_losses_10568299?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_re_lu_2_layer_call_fn_10568304?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_10568350?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_layer_normalization_2_layer_call_fn_10568359?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_3_layer_call_and_return_conditional_losses_10568364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_3_layer_call_fn_10568369?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_6_layer_call_and_return_conditional_losses_10568379?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_6_layer_call_fn_10568388?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_2_layer_call_and_return_conditional_losses_10568393?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_activation_2_layer_call_fn_10568398?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_5_layer_call_and_return_conditional_losses_10568408?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_5_layer_call_fn_10568417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_10567877dense_9_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
#__inference__wrapped_model_10567286z!"-.:;FGRS6?3
,?)
'?$
dense_9_input?????????
? "1?.
,
dense_5!?
dense_5??????????
J__inference_activation_2_layer_call_and_return_conditional_losses_10568393X/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? ~
/__inference_activation_2_layer_call_fn_10568398K/?,
%?"
 ?
inputs????????? 
? "?????????? ?
J__inference_activation_3_layer_call_and_return_conditional_losses_10568364X/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? ~
/__inference_activation_3_layer_call_fn_10568369K/?,
%?"
 ?
inputs????????? 
? "?????????? ?
E__inference_dense_5_layer_call_and_return_conditional_losses_10568408\RS/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? }
*__inference_dense_5_layer_call_fn_10568417ORS/?,
%?"
 ?
inputs????????? 
? "???????????
E__inference_dense_6_layer_call_and_return_conditional_losses_10568379\FG/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? }
*__inference_dense_6_layer_call_fn_10568388OFG/?,
%?"
 ?
inputs????????? 
? "?????????? ?
E__inference_dense_7_layer_call_and_return_conditional_losses_10568285\-./?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? }
*__inference_dense_7_layer_call_fn_10568294O-./?,
%?"
 ?
inputs????????? 
? "?????????? ?
E__inference_dense_8_layer_call_and_return_conditional_losses_10568256\!"/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? }
*__inference_dense_8_layer_call_fn_10568265O!"/?,
%?"
 ?
inputs?????????
? "?????????? ?
E__inference_dense_9_layer_call_and_return_conditional_losses_10568184[/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
*__inference_dense_9_layer_call_fn_10568191N/?,
%?"
 ?
inputs?????????
? "???????????
S__inference_layer_normalization_2_layer_call_and_return_conditional_losses_10568350\:;/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? ?
8__inference_layer_normalization_2_layer_call_fn_10568359O:;/?,
%?"
 ?
inputs????????? 
? "?????????? ?
S__inference_layer_normalization_3_layer_call_and_return_conditional_losses_10568237\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
8__inference_layer_normalization_3_layer_call_fn_10568246O/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_re_lu_2_layer_call_and_return_conditional_losses_10568299X/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? y
*__inference_re_lu_2_layer_call_fn_10568304K/?,
%?"
 ?
inputs????????? 
? "?????????? ?
E__inference_re_lu_3_layer_call_and_return_conditional_losses_10568270X/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? y
*__inference_re_lu_3_layer_call_fn_10568275K/?,
%?"
 ?
inputs????????? 
? "?????????? ?
H__inference_sequential_layer_call_and_return_conditional_losses_10567797v!"-.:;FGRS>?;
4?1
'?$
dense_9_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_10567838v!"-.:;FGRS>?;
4?1
'?$
dense_9_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_10567996o!"-.:;FGRS7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_10568115o!"-.:;FGRS7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_layer_call_fn_10567530i!"-.:;FGRS>?;
4?1
'?$
dense_9_input?????????
p 

 
? "???????????
-__inference_sequential_layer_call_fn_10567756i!"-.:;FGRS>?;
4?1
'?$
dense_9_input?????????
p

 
? "???????????
-__inference_sequential_layer_call_fn_10568146b!"-.:;FGRS7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
-__inference_sequential_layer_call_fn_10568177b!"-.:;FGRS7?4
-?*
 ?
inputs?????????
p

 
? "???????????
&__inference_signature_wrapper_10567877?!"-.:;FGRSG?D
? 
=?:
8
dense_9_input'?$
dense_9_input?????????"1?.
,
dense_5!?
dense_5?????????