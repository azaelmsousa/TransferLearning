       ЃK"	   `НћжAbrain.Event:2]ЬЃЉ^m     ЇрЏ"	6`НћжA"бк
z
input_1Placeholder*/
_output_shapes
:џџџџџџџџџ  *$
shape:џџџџџџџџџ  *
dtype0
s
conv1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
]
conv1/random_uniform/minConst*
valueB
 *8JЬН*
dtype0*
_output_shapes
: 
]
conv1/random_uniform/maxConst*
valueB
 *8JЬ=*
dtype0*
_output_shapes
: 
Ќ
"conv1/random_uniform/RandomUniformRandomUniformconv1/random_uniform/shape*
dtype0*&
_output_shapes
:@*
seed2м*
seedБџх)*
T0
t
conv1/random_uniform/subSubconv1/random_uniform/maxconv1/random_uniform/min*
T0*
_output_shapes
: 

conv1/random_uniform/mulMul"conv1/random_uniform/RandomUniformconv1/random_uniform/sub*&
_output_shapes
:@*
T0

conv1/random_uniformAddconv1/random_uniform/mulconv1/random_uniform/min*
T0*&
_output_shapes
:@

conv1/kernel
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
М
conv1/kernel/AssignAssignconv1/kernelconv1/random_uniform*
use_locking(*
T0*
_class
loc:@conv1/kernel*
validate_shape(*&
_output_shapes
:@
}
conv1/kernel/readIdentityconv1/kernel*
T0*
_class
loc:@conv1/kernel*&
_output_shapes
:@
X
conv1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
v

conv1/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ё
conv1/bias/AssignAssign
conv1/biasconv1/Const*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
k
conv1/bias/readIdentity
conv1/bias*
_class
loc:@conv1/bias*
_output_shapes
:@*
T0
p
conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
р
conv1/convolutionConv2Dinput_1conv1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0

conv1/BiasAddBiasAddconv1/convolutionconv1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
`
relu_conv1/ReluReluconv1/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
Ж
pool1/MaxPoolMaxPoolrelu_conv1/Relu*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
T0*
data_formatNHWC*
strides

~
%fire2/squeeze1x1/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
h
#fire2/squeeze1x1/random_uniform/minConst*
valueB
 *7О*
dtype0*
_output_shapes
: 
h
#fire2/squeeze1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
Т
-fire2/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire2/squeeze1x1/random_uniform/shape*
dtype0*&
_output_shapes
:@*
seed2ъш*
seedБџх)*
T0

#fire2/squeeze1x1/random_uniform/subSub#fire2/squeeze1x1/random_uniform/max#fire2/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
Џ
#fire2/squeeze1x1/random_uniform/mulMul-fire2/squeeze1x1/random_uniform/RandomUniform#fire2/squeeze1x1/random_uniform/sub*&
_output_shapes
:@*
T0
Ё
fire2/squeeze1x1/random_uniformAdd#fire2/squeeze1x1/random_uniform/mul#fire2/squeeze1x1/random_uniform/min*
T0*&
_output_shapes
:@

fire2/squeeze1x1/kernel
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
ш
fire2/squeeze1x1/kernel/AssignAssignfire2/squeeze1x1/kernelfire2/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire2/squeeze1x1/kernel*
validate_shape(*&
_output_shapes
:@

fire2/squeeze1x1/kernel/readIdentityfire2/squeeze1x1/kernel*
T0**
_class 
loc:@fire2/squeeze1x1/kernel*&
_output_shapes
:@
c
fire2/squeeze1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

fire2/squeeze1x1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Э
fire2/squeeze1x1/bias/AssignAssignfire2/squeeze1x1/biasfire2/squeeze1x1/Const*(
_class
loc:@fire2/squeeze1x1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

fire2/squeeze1x1/bias/readIdentityfire2/squeeze1x1/bias*
_output_shapes
:*
T0*(
_class
loc:@fire2/squeeze1x1/bias
{
*fire2/squeeze1x1/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
ќ
fire2/squeeze1x1/convolutionConv2Dpool1/MaxPoolfire2/squeeze1x1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ
Ў
fire2/squeeze1x1/BiasAddBiasAddfire2/squeeze1x1/convolutionfire2/squeeze1x1/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ*
T0
v
fire2/relu_squeeze1x1/ReluRelufire2/squeeze1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ*
T0
}
$fire2/expand1x1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
g
"fire2/expand1x1/random_uniform/minConst*
valueB
 *7О*
dtype0*
_output_shapes
: 
g
"fire2/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
Р
,fire2/expand1x1/random_uniform/RandomUniformRandomUniform$fire2/expand1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*&
_output_shapes
:@*
seed2Мн

"fire2/expand1x1/random_uniform/subSub"fire2/expand1x1/random_uniform/max"fire2/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
Ќ
"fire2/expand1x1/random_uniform/mulMul,fire2/expand1x1/random_uniform/RandomUniform"fire2/expand1x1/random_uniform/sub*&
_output_shapes
:@*
T0

fire2/expand1x1/random_uniformAdd"fire2/expand1x1/random_uniform/mul"fire2/expand1x1/random_uniform/min*&
_output_shapes
:@*
T0

fire2/expand1x1/kernel
VariableV2*
shape:@*
shared_name *
dtype0*&
_output_shapes
:@*
	container 
ф
fire2/expand1x1/kernel/AssignAssignfire2/expand1x1/kernelfire2/expand1x1/random_uniform*&
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire2/expand1x1/kernel*
validate_shape(

fire2/expand1x1/kernel/readIdentityfire2/expand1x1/kernel*
T0*)
_class
loc:@fire2/expand1x1/kernel*&
_output_shapes
:@
b
fire2/expand1x1/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0

fire2/expand1x1/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Щ
fire2/expand1x1/bias/AssignAssignfire2/expand1x1/biasfire2/expand1x1/Const*
use_locking(*
T0*'
_class
loc:@fire2/expand1x1/bias*
validate_shape(*
_output_shapes
:@

fire2/expand1x1/bias/readIdentityfire2/expand1x1/bias*
T0*'
_class
loc:@fire2/expand1x1/bias*
_output_shapes
:@
z
)fire2/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire2/expand1x1/convolutionConv2Dfire2/relu_squeeze1x1/Relufire2/expand1x1/kernel/read*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ћ
fire2/expand1x1/BiasAddBiasAddfire2/expand1x1/convolutionfire2/expand1x1/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@*
T0
t
fire2/relu_expand1x1/ReluRelufire2/expand1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
}
$fire2/expand3x3/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         @   
g
"fire2/expand3x3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *КєКН
g
"fire2/expand3x3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *КєК=*
dtype0
Р
,fire2/expand3x3/random_uniform/RandomUniformRandomUniform$fire2/expand3x3/random_uniform/shape*
seedБџх)*
T0*
dtype0*&
_output_shapes
:@*
seed2љА

"fire2/expand3x3/random_uniform/subSub"fire2/expand3x3/random_uniform/max"fire2/expand3x3/random_uniform/min*
_output_shapes
: *
T0
Ќ
"fire2/expand3x3/random_uniform/mulMul,fire2/expand3x3/random_uniform/RandomUniform"fire2/expand3x3/random_uniform/sub*&
_output_shapes
:@*
T0

fire2/expand3x3/random_uniformAdd"fire2/expand3x3/random_uniform/mul"fire2/expand3x3/random_uniform/min*
T0*&
_output_shapes
:@

fire2/expand3x3/kernel
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
ф
fire2/expand3x3/kernel/AssignAssignfire2/expand3x3/kernelfire2/expand3x3/random_uniform*
T0*)
_class
loc:@fire2/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(

fire2/expand3x3/kernel/readIdentityfire2/expand3x3/kernel*
T0*)
_class
loc:@fire2/expand3x3/kernel*&
_output_shapes
:@
b
fire2/expand3x3/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@

fire2/expand3x3/bias
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
Щ
fire2/expand3x3/bias/AssignAssignfire2/expand3x3/biasfire2/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire2/expand3x3/bias*
validate_shape(*
_output_shapes
:@

fire2/expand3x3/bias/readIdentityfire2/expand3x3/bias*
_output_shapes
:@*
T0*'
_class
loc:@fire2/expand3x3/bias
z
)fire2/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire2/expand3x3/convolutionConv2Dfire2/relu_squeeze1x1/Relufire2/expand3x3/kernel/read*
paddingSAME*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ћ
fire2/expand3x3/BiasAddBiasAddfire2/expand3x3/convolutionfire2/expand3x3/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
t
fire2/relu_expand3x3/ReluRelufire2/expand3x3/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
Z
fire2/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire2/concat/concatConcatV2fire2/relu_expand1x1/Relufire2/relu_expand3x3/Relufire2/concat/concat/axis*
T0*
N*0
_output_shapes
:џџџџџџџџџ*

Tidx0
~
%fire3/squeeze1x1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
h
#fire3/squeeze1x1/random_uniform/minConst*
valueB
 *ьQО*
dtype0*
_output_shapes
: 
h
#fire3/squeeze1x1/random_uniform/maxConst*
valueB
 *ьQ>*
dtype0*
_output_shapes
: 
У
-fire3/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire3/squeeze1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:*
seed2жщп

#fire3/squeeze1x1/random_uniform/subSub#fire3/squeeze1x1/random_uniform/max#fire3/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire3/squeeze1x1/random_uniform/mulMul-fire3/squeeze1x1/random_uniform/RandomUniform#fire3/squeeze1x1/random_uniform/sub*'
_output_shapes
:*
T0
Ђ
fire3/squeeze1x1/random_uniformAdd#fire3/squeeze1x1/random_uniform/mul#fire3/squeeze1x1/random_uniform/min*'
_output_shapes
:*
T0

fire3/squeeze1x1/kernel
VariableV2*
shape:*
shared_name *
dtype0*'
_output_shapes
:*
	container 
щ
fire3/squeeze1x1/kernel/AssignAssignfire3/squeeze1x1/kernelfire3/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire3/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:

fire3/squeeze1x1/kernel/readIdentityfire3/squeeze1x1/kernel*'
_output_shapes
:*
T0**
_class 
loc:@fire3/squeeze1x1/kernel
c
fire3/squeeze1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

fire3/squeeze1x1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Э
fire3/squeeze1x1/bias/AssignAssignfire3/squeeze1x1/biasfire3/squeeze1x1/Const*
T0*(
_class
loc:@fire3/squeeze1x1/bias*
validate_shape(*
_output_shapes
:*
use_locking(

fire3/squeeze1x1/bias/readIdentityfire3/squeeze1x1/bias*
T0*(
_class
loc:@fire3/squeeze1x1/bias*
_output_shapes
:
{
*fire3/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire3/squeeze1x1/convolutionConv2Dfire2/concat/concatfire3/squeeze1x1/kernel/read*/
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
Ў
fire3/squeeze1x1/BiasAddBiasAddfire3/squeeze1x1/convolutionfire3/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ
v
fire3/relu_squeeze1x1/ReluRelufire3/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ
}
$fire3/expand1x1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
g
"fire3/expand1x1/random_uniform/minConst*
valueB
 *7О*
dtype0*
_output_shapes
: 
g
"fire3/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
Р
,fire3/expand1x1/random_uniform/RandomUniformRandomUniform$fire3/expand1x1/random_uniform/shape*&
_output_shapes
:@*
seed2ЪЋХ*
seedБџх)*
T0*
dtype0

"fire3/expand1x1/random_uniform/subSub"fire3/expand1x1/random_uniform/max"fire3/expand1x1/random_uniform/min*
_output_shapes
: *
T0
Ќ
"fire3/expand1x1/random_uniform/mulMul,fire3/expand1x1/random_uniform/RandomUniform"fire3/expand1x1/random_uniform/sub*
T0*&
_output_shapes
:@

fire3/expand1x1/random_uniformAdd"fire3/expand1x1/random_uniform/mul"fire3/expand1x1/random_uniform/min*
T0*&
_output_shapes
:@

fire3/expand1x1/kernel
VariableV2*
shape:@*
shared_name *
dtype0*&
_output_shapes
:@*
	container 
ф
fire3/expand1x1/kernel/AssignAssignfire3/expand1x1/kernelfire3/expand1x1/random_uniform*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire3/expand1x1/kernel

fire3/expand1x1/kernel/readIdentityfire3/expand1x1/kernel*
T0*)
_class
loc:@fire3/expand1x1/kernel*&
_output_shapes
:@
b
fire3/expand1x1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@

fire3/expand1x1/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Щ
fire3/expand1x1/bias/AssignAssignfire3/expand1x1/biasfire3/expand1x1/Const*
use_locking(*
T0*'
_class
loc:@fire3/expand1x1/bias*
validate_shape(*
_output_shapes
:@

fire3/expand1x1/bias/readIdentityfire3/expand1x1/bias*'
_class
loc:@fire3/expand1x1/bias*
_output_shapes
:@*
T0
z
)fire3/expand1x1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

fire3/expand1x1/convolutionConv2Dfire3/relu_squeeze1x1/Relufire3/expand1x1/kernel/read*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
Ћ
fire3/expand1x1/BiasAddBiasAddfire3/expand1x1/convolutionfire3/expand1x1/bias/read*/
_output_shapes
:џџџџџџџџџ@*
T0*
data_formatNHWC
t
fire3/relu_expand1x1/ReluRelufire3/expand1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
}
$fire3/expand3x3/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
g
"fire3/expand3x3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *КєКН
g
"fire3/expand3x3/random_uniform/maxConst*
valueB
 *КєК=*
dtype0*
_output_shapes
: 
Р
,fire3/expand3x3/random_uniform/RandomUniformRandomUniform$fire3/expand3x3/random_uniform/shape*
dtype0*&
_output_shapes
:@*
seed2єкЗ*
seedБџх)*
T0

"fire3/expand3x3/random_uniform/subSub"fire3/expand3x3/random_uniform/max"fire3/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
Ќ
"fire3/expand3x3/random_uniform/mulMul,fire3/expand3x3/random_uniform/RandomUniform"fire3/expand3x3/random_uniform/sub*
T0*&
_output_shapes
:@

fire3/expand3x3/random_uniformAdd"fire3/expand3x3/random_uniform/mul"fire3/expand3x3/random_uniform/min*&
_output_shapes
:@*
T0

fire3/expand3x3/kernel
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
ф
fire3/expand3x3/kernel/AssignAssignfire3/expand3x3/kernelfire3/expand3x3/random_uniform*)
_class
loc:@fire3/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0

fire3/expand3x3/kernel/readIdentityfire3/expand3x3/kernel*&
_output_shapes
:@*
T0*)
_class
loc:@fire3/expand3x3/kernel
b
fire3/expand3x3/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@

fire3/expand3x3/bias
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
Щ
fire3/expand3x3/bias/AssignAssignfire3/expand3x3/biasfire3/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire3/expand3x3/bias*
validate_shape(*
_output_shapes
:@

fire3/expand3x3/bias/readIdentityfire3/expand3x3/bias*
T0*'
_class
loc:@fire3/expand3x3/bias*
_output_shapes
:@
z
)fire3/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire3/expand3x3/convolutionConv2Dfire3/relu_squeeze1x1/Relufire3/expand3x3/kernel/read*
paddingSAME*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ћ
fire3/expand3x3/BiasAddBiasAddfire3/expand3x3/convolutionfire3/expand3x3/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
t
fire3/relu_expand3x3/ReluRelufire3/expand3x3/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
Z
fire3/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire3/concat/concatConcatV2fire3/relu_expand1x1/Relufire3/relu_expand3x3/Relufire3/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
Л
pool3/MaxPoolMaxPoolfire3/concat/concat*0
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
~
%fire4/squeeze1x1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
h
#fire4/squeeze1x1/random_uniform/minConst*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
h
#fire4/squeeze1x1/random_uniform/maxConst*
valueB
 *јKF>*
dtype0*
_output_shapes
: 
У
-fire4/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire4/squeeze1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
: *
seed2чжЫ*
seedБџх)

#fire4/squeeze1x1/random_uniform/subSub#fire4/squeeze1x1/random_uniform/max#fire4/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire4/squeeze1x1/random_uniform/mulMul-fire4/squeeze1x1/random_uniform/RandomUniform#fire4/squeeze1x1/random_uniform/sub*'
_output_shapes
: *
T0
Ђ
fire4/squeeze1x1/random_uniformAdd#fire4/squeeze1x1/random_uniform/mul#fire4/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
: 

fire4/squeeze1x1/kernel
VariableV2*
dtype0*'
_output_shapes
: *
	container *
shape: *
shared_name 
щ
fire4/squeeze1x1/kernel/AssignAssignfire4/squeeze1x1/kernelfire4/squeeze1x1/random_uniform*
T0**
_class 
loc:@fire4/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(

fire4/squeeze1x1/kernel/readIdentityfire4/squeeze1x1/kernel*'
_output_shapes
: *
T0**
_class 
loc:@fire4/squeeze1x1/kernel
c
fire4/squeeze1x1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 

fire4/squeeze1x1/bias
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Э
fire4/squeeze1x1/bias/AssignAssignfire4/squeeze1x1/biasfire4/squeeze1x1/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*(
_class
loc:@fire4/squeeze1x1/bias

fire4/squeeze1x1/bias/readIdentityfire4/squeeze1x1/bias*
T0*(
_class
loc:@fire4/squeeze1x1/bias*
_output_shapes
: 
{
*fire4/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ќ
fire4/squeeze1x1/convolutionConv2Dpool3/MaxPoolfire4/squeeze1x1/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0
Ў
fire4/squeeze1x1/BiasAddBiasAddfire4/squeeze1x1/convolutionfire4/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ 
v
fire4/relu_squeeze1x1/ReluRelufire4/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
}
$fire4/expand1x1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"             
g
"fire4/expand1x1/random_uniform/minConst*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
g
"fire4/expand1x1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *јKF>
С
,fire4/expand1x1/random_uniform/RandomUniformRandomUniform$fire4/expand1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
: *
seed2§*
seedБџх)

"fire4/expand1x1/random_uniform/subSub"fire4/expand1x1/random_uniform/max"fire4/expand1x1/random_uniform/min*
_output_shapes
: *
T0
­
"fire4/expand1x1/random_uniform/mulMul,fire4/expand1x1/random_uniform/RandomUniform"fire4/expand1x1/random_uniform/sub*
T0*'
_output_shapes
: 

fire4/expand1x1/random_uniformAdd"fire4/expand1x1/random_uniform/mul"fire4/expand1x1/random_uniform/min*
T0*'
_output_shapes
: 

fire4/expand1x1/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
: *
	container *
shape: 
х
fire4/expand1x1/kernel/AssignAssignfire4/expand1x1/kernelfire4/expand1x1/random_uniform*
T0*)
_class
loc:@fire4/expand1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(

fire4/expand1x1/kernel/readIdentityfire4/expand1x1/kernel*'
_output_shapes
: *
T0*)
_class
loc:@fire4/expand1x1/kernel
d
fire4/expand1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire4/expand1x1/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ъ
fire4/expand1x1/bias/AssignAssignfire4/expand1x1/biasfire4/expand1x1/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire4/expand1x1/bias

fire4/expand1x1/bias/readIdentityfire4/expand1x1/bias*
T0*'
_class
loc:@fire4/expand1x1/bias*
_output_shapes	
:
z
)fire4/expand1x1/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire4/expand1x1/convolutionConv2Dfire4/relu_squeeze1x1/Relufire4/expand1x1/kernel/read*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
Ќ
fire4/expand1x1/BiasAddBiasAddfire4/expand1x1/convolutionfire4/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire4/relu_expand1x1/ReluRelufire4/expand1x1/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
}
$fire4/expand3x3/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
g
"fire4/expand3x3/random_uniform/minConst*
valueB
 *Ѕ2Н*
dtype0*
_output_shapes
: 
g
"fire4/expand3x3/random_uniform/maxConst*
valueB
 *Ѕ2=*
dtype0*
_output_shapes
: 
С
,fire4/expand3x3/random_uniform/RandomUniformRandomUniform$fire4/expand3x3/random_uniform/shape*
T0*
dtype0*'
_output_shapes
: *
seed2*
seedБџх)

"fire4/expand3x3/random_uniform/subSub"fire4/expand3x3/random_uniform/max"fire4/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
­
"fire4/expand3x3/random_uniform/mulMul,fire4/expand3x3/random_uniform/RandomUniform"fire4/expand3x3/random_uniform/sub*'
_output_shapes
: *
T0

fire4/expand3x3/random_uniformAdd"fire4/expand3x3/random_uniform/mul"fire4/expand3x3/random_uniform/min*'
_output_shapes
: *
T0

fire4/expand3x3/kernel
VariableV2*'
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
х
fire4/expand3x3/kernel/AssignAssignfire4/expand3x3/kernelfire4/expand3x3/random_uniform*)
_class
loc:@fire4/expand3x3/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0

fire4/expand3x3/kernel/readIdentityfire4/expand3x3/kernel*'
_output_shapes
: *
T0*)
_class
loc:@fire4/expand3x3/kernel
d
fire4/expand3x3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire4/expand3x3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ъ
fire4/expand3x3/bias/AssignAssignfire4/expand3x3/biasfire4/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire4/expand3x3/bias*
validate_shape(*
_output_shapes	
:

fire4/expand3x3/bias/readIdentityfire4/expand3x3/bias*
T0*'
_class
loc:@fire4/expand3x3/bias*
_output_shapes	
:
z
)fire4/expand3x3/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire4/expand3x3/convolutionConv2Dfire4/relu_squeeze1x1/Relufire4/expand3x3/kernel/read*
paddingSAME*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ќ
fire4/expand3x3/BiasAddBiasAddfire4/expand3x3/convolutionfire4/expand3x3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire4/relu_expand3x3/ReluRelufire4/expand3x3/BiasAdd*0
_output_shapes
:џџџџџџџџџ*
T0
Z
fire4/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire4/concat/concatConcatV2fire4/relu_expand1x1/Relufire4/relu_expand3x3/Relufire4/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
~
%fire5/squeeze1x1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
h
#fire5/squeeze1x1/random_uniform/minConst*
valueB
 *:ЭО*
dtype0*
_output_shapes
: 
h
#fire5/squeeze1x1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:Э>
У
-fire5/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire5/squeeze1x1/random_uniform/shape*
dtype0*'
_output_shapes
: *
seed2ДњУ*
seedБџх)*
T0

#fire5/squeeze1x1/random_uniform/subSub#fire5/squeeze1x1/random_uniform/max#fire5/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire5/squeeze1x1/random_uniform/mulMul-fire5/squeeze1x1/random_uniform/RandomUniform#fire5/squeeze1x1/random_uniform/sub*'
_output_shapes
: *
T0
Ђ
fire5/squeeze1x1/random_uniformAdd#fire5/squeeze1x1/random_uniform/mul#fire5/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
: 

fire5/squeeze1x1/kernel
VariableV2*
dtype0*'
_output_shapes
: *
	container *
shape: *
shared_name 
щ
fire5/squeeze1x1/kernel/AssignAssignfire5/squeeze1x1/kernelfire5/squeeze1x1/random_uniform**
_class 
loc:@fire5/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0

fire5/squeeze1x1/kernel/readIdentityfire5/squeeze1x1/kernel*
T0**
_class 
loc:@fire5/squeeze1x1/kernel*'
_output_shapes
: 
c
fire5/squeeze1x1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 

fire5/squeeze1x1/bias
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Э
fire5/squeeze1x1/bias/AssignAssignfire5/squeeze1x1/biasfire5/squeeze1x1/Const*(
_class
loc:@fire5/squeeze1x1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

fire5/squeeze1x1/bias/readIdentityfire5/squeeze1x1/bias*
_output_shapes
: *
T0*(
_class
loc:@fire5/squeeze1x1/bias
{
*fire5/squeeze1x1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

fire5/squeeze1x1/convolutionConv2Dfire4/concat/concatfire5/squeeze1x1/kernel/read*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
Ў
fire5/squeeze1x1/BiasAddBiasAddfire5/squeeze1x1/convolutionfire5/squeeze1x1/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ *
T0
v
fire5/relu_squeeze1x1/ReluRelufire5/squeeze1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ *
T0
}
$fire5/expand1x1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
g
"fire5/expand1x1/random_uniform/minConst*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
g
"fire5/expand1x1/random_uniform/maxConst*
valueB
 *јKF>*
dtype0*
_output_shapes
: 
С
,fire5/expand1x1/random_uniform/RandomUniformRandomUniform$fire5/expand1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
: *
seed2А

"fire5/expand1x1/random_uniform/subSub"fire5/expand1x1/random_uniform/max"fire5/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
­
"fire5/expand1x1/random_uniform/mulMul,fire5/expand1x1/random_uniform/RandomUniform"fire5/expand1x1/random_uniform/sub*
T0*'
_output_shapes
: 

fire5/expand1x1/random_uniformAdd"fire5/expand1x1/random_uniform/mul"fire5/expand1x1/random_uniform/min*'
_output_shapes
: *
T0

fire5/expand1x1/kernel
VariableV2*
shape: *
shared_name *
dtype0*'
_output_shapes
: *
	container 
х
fire5/expand1x1/kernel/AssignAssignfire5/expand1x1/kernelfire5/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire5/expand1x1/kernel*
validate_shape(*'
_output_shapes
: 

fire5/expand1x1/kernel/readIdentityfire5/expand1x1/kernel*
T0*)
_class
loc:@fire5/expand1x1/kernel*'
_output_shapes
: 
d
fire5/expand1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire5/expand1x1/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ъ
fire5/expand1x1/bias/AssignAssignfire5/expand1x1/biasfire5/expand1x1/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire5/expand1x1/bias

fire5/expand1x1/bias/readIdentityfire5/expand1x1/bias*
T0*'
_class
loc:@fire5/expand1x1/bias*
_output_shapes	
:
z
)fire5/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire5/expand1x1/convolutionConv2Dfire5/relu_squeeze1x1/Relufire5/expand1x1/kernel/read*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ќ
fire5/expand1x1/BiasAddBiasAddfire5/expand1x1/convolutionfire5/expand1x1/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ*
T0
u
fire5/relu_expand1x1/ReluRelufire5/expand1x1/BiasAdd*0
_output_shapes
:џџџџџџџџџ*
T0
}
$fire5/expand3x3/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
g
"fire5/expand3x3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *Ѕ2Н
g
"fire5/expand3x3/random_uniform/maxConst*
valueB
 *Ѕ2=*
dtype0*
_output_shapes
: 
Р
,fire5/expand3x3/random_uniform/RandomUniformRandomUniform$fire5/expand3x3/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
: *
seed2ыыk

"fire5/expand3x3/random_uniform/subSub"fire5/expand3x3/random_uniform/max"fire5/expand3x3/random_uniform/min*
_output_shapes
: *
T0
­
"fire5/expand3x3/random_uniform/mulMul,fire5/expand3x3/random_uniform/RandomUniform"fire5/expand3x3/random_uniform/sub*
T0*'
_output_shapes
: 

fire5/expand3x3/random_uniformAdd"fire5/expand3x3/random_uniform/mul"fire5/expand3x3/random_uniform/min*
T0*'
_output_shapes
: 

fire5/expand3x3/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
: *
	container *
shape: 
х
fire5/expand3x3/kernel/AssignAssignfire5/expand3x3/kernelfire5/expand3x3/random_uniform*'
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@fire5/expand3x3/kernel*
validate_shape(

fire5/expand3x3/kernel/readIdentityfire5/expand3x3/kernel*
T0*)
_class
loc:@fire5/expand3x3/kernel*'
_output_shapes
: 
d
fire5/expand3x3/ConstConst*
_output_shapes	
:*
valueB*    *
dtype0

fire5/expand3x3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ъ
fire5/expand3x3/bias/AssignAssignfire5/expand3x3/biasfire5/expand3x3/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire5/expand3x3/bias

fire5/expand3x3/bias/readIdentityfire5/expand3x3/bias*
_output_shapes	
:*
T0*'
_class
loc:@fire5/expand3x3/bias
z
)fire5/expand3x3/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire5/expand3x3/convolutionConv2Dfire5/relu_squeeze1x1/Relufire5/expand3x3/kernel/read*
paddingSAME*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ќ
fire5/expand3x3/BiasAddBiasAddfire5/expand3x3/convolutionfire5/expand3x3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire5/relu_expand3x3/ReluRelufire5/expand3x3/BiasAdd*0
_output_shapes
:џџџџџџџџџ*
T0
Z
fire5/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire5/concat/concatConcatV2fire5/relu_expand1x1/Relufire5/relu_expand3x3/Relufire5/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
Л
pool5/MaxPoolMaxPoolfire5/concat/concat*0
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
~
%fire6/squeeze1x1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"         0   *
dtype0
h
#fire6/squeeze1x1/random_uniform/minConst*
valueB
 *мО*
dtype0*
_output_shapes
: 
h
#fire6/squeeze1x1/random_uniform/maxConst*
valueB
 *м>*
dtype0*
_output_shapes
: 
У
-fire6/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire6/squeeze1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:0*
seed2ћ*
seedБџх)

#fire6/squeeze1x1/random_uniform/subSub#fire6/squeeze1x1/random_uniform/max#fire6/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire6/squeeze1x1/random_uniform/mulMul-fire6/squeeze1x1/random_uniform/RandomUniform#fire6/squeeze1x1/random_uniform/sub*'
_output_shapes
:0*
T0
Ђ
fire6/squeeze1x1/random_uniformAdd#fire6/squeeze1x1/random_uniform/mul#fire6/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:0

fire6/squeeze1x1/kernel
VariableV2*'
_output_shapes
:0*
	container *
shape:0*
shared_name *
dtype0
щ
fire6/squeeze1x1/kernel/AssignAssignfire6/squeeze1x1/kernelfire6/squeeze1x1/random_uniform*
T0**
_class 
loc:@fire6/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0*
use_locking(

fire6/squeeze1x1/kernel/readIdentityfire6/squeeze1x1/kernel**
_class 
loc:@fire6/squeeze1x1/kernel*'
_output_shapes
:0*
T0
c
fire6/squeeze1x1/ConstConst*
valueB0*    *
dtype0*
_output_shapes
:0

fire6/squeeze1x1/bias
VariableV2*
dtype0*
_output_shapes
:0*
	container *
shape:0*
shared_name 
Э
fire6/squeeze1x1/bias/AssignAssignfire6/squeeze1x1/biasfire6/squeeze1x1/Const*
T0*(
_class
loc:@fire6/squeeze1x1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(

fire6/squeeze1x1/bias/readIdentityfire6/squeeze1x1/bias*
_output_shapes
:0*
T0*(
_class
loc:@fire6/squeeze1x1/bias
{
*fire6/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ќ
fire6/squeeze1x1/convolutionConv2Dpool5/MaxPoolfire6/squeeze1x1/kernel/read*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0*
	dilations
*
T0*
data_formatNHWC*
strides

Ў
fire6/squeeze1x1/BiasAddBiasAddfire6/squeeze1x1/convolutionfire6/squeeze1x1/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ0*
T0
v
fire6/relu_squeeze1x1/ReluRelufire6/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ0
}
$fire6/expand1x1/random_uniform/shapeConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
g
"fire6/expand1x1/random_uniform/minConst*
valueB
 *ш!О*
dtype0*
_output_shapes
: 
g
"fire6/expand1x1/random_uniform/maxConst*
valueB
 *ш!>*
dtype0*
_output_shapes
: 
С
,fire6/expand1x1/random_uniform/RandomUniformRandomUniform$fire6/expand1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:0Р*
seed2ЅЖя

"fire6/expand1x1/random_uniform/subSub"fire6/expand1x1/random_uniform/max"fire6/expand1x1/random_uniform/min*
_output_shapes
: *
T0
­
"fire6/expand1x1/random_uniform/mulMul,fire6/expand1x1/random_uniform/RandomUniform"fire6/expand1x1/random_uniform/sub*
T0*'
_output_shapes
:0Р

fire6/expand1x1/random_uniformAdd"fire6/expand1x1/random_uniform/mul"fire6/expand1x1/random_uniform/min*
T0*'
_output_shapes
:0Р

fire6/expand1x1/kernel
VariableV2*
shape:0Р*
shared_name *
dtype0*'
_output_shapes
:0Р*
	container 
х
fire6/expand1x1/kernel/AssignAssignfire6/expand1x1/kernelfire6/expand1x1/random_uniform*
T0*)
_class
loc:@fire6/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р*
use_locking(

fire6/expand1x1/kernel/readIdentityfire6/expand1x1/kernel*'
_output_shapes
:0Р*
T0*)
_class
loc:@fire6/expand1x1/kernel
d
fire6/expand1x1/ConstConst*
valueBР*    *
dtype0*
_output_shapes	
:Р

fire6/expand1x1/bias
VariableV2*
dtype0*
_output_shapes	
:Р*
	container *
shape:Р*
shared_name 
Ъ
fire6/expand1x1/bias/AssignAssignfire6/expand1x1/biasfire6/expand1x1/Const*
_output_shapes	
:Р*
use_locking(*
T0*'
_class
loc:@fire6/expand1x1/bias*
validate_shape(

fire6/expand1x1/bias/readIdentityfire6/expand1x1/bias*
T0*'
_class
loc:@fire6/expand1x1/bias*
_output_shapes	
:Р
z
)fire6/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire6/expand1x1/convolutionConv2Dfire6/relu_squeeze1x1/Relufire6/expand1x1/kernel/read*0
_output_shapes
:џџџџџџџџџР*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
Ќ
fire6/expand1x1/BiasAddBiasAddfire6/expand1x1/convolutionfire6/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџР
u
fire6/relu_expand1x1/ReluRelufire6/expand1x1/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџР
}
$fire6/expand3x3/random_uniform/shapeConst*
_output_shapes
:*%
valueB"      0   Р   *
dtype0
g
"fire6/expand3x3/random_uniform/minConst*
valueB
 *ЯрWН*
dtype0*
_output_shapes
: 
g
"fire6/expand3x3/random_uniform/maxConst*
valueB
 *ЯрW=*
dtype0*
_output_shapes
: 
С
,fire6/expand3x3/random_uniform/RandomUniformRandomUniform$fire6/expand3x3/random_uniform/shape*
dtype0*'
_output_shapes
:0Р*
seed2Ь*
seedБџх)*
T0

"fire6/expand3x3/random_uniform/subSub"fire6/expand3x3/random_uniform/max"fire6/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
­
"fire6/expand3x3/random_uniform/mulMul,fire6/expand3x3/random_uniform/RandomUniform"fire6/expand3x3/random_uniform/sub*'
_output_shapes
:0Р*
T0

fire6/expand3x3/random_uniformAdd"fire6/expand3x3/random_uniform/mul"fire6/expand3x3/random_uniform/min*
T0*'
_output_shapes
:0Р

fire6/expand3x3/kernel
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
х
fire6/expand3x3/kernel/AssignAssignfire6/expand3x3/kernelfire6/expand3x3/random_uniform*
use_locking(*
T0*)
_class
loc:@fire6/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р

fire6/expand3x3/kernel/readIdentityfire6/expand3x3/kernel*)
_class
loc:@fire6/expand3x3/kernel*'
_output_shapes
:0Р*
T0
d
fire6/expand3x3/ConstConst*
dtype0*
_output_shapes	
:Р*
valueBР*    

fire6/expand3x3/bias
VariableV2*
dtype0*
_output_shapes	
:Р*
	container *
shape:Р*
shared_name 
Ъ
fire6/expand3x3/bias/AssignAssignfire6/expand3x3/biasfire6/expand3x3/Const*'
_class
loc:@fire6/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0

fire6/expand3x3/bias/readIdentityfire6/expand3x3/bias*
T0*'
_class
loc:@fire6/expand3x3/bias*
_output_shapes	
:Р
z
)fire6/expand3x3/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

fire6/expand3x3/convolutionConv2Dfire6/relu_squeeze1x1/Relufire6/expand3x3/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:џџџџџџџџџР*
	dilations
*
T0
Ќ
fire6/expand3x3/BiasAddBiasAddfire6/expand3x3/convolutionfire6/expand3x3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџР
u
fire6/relu_expand3x3/ReluRelufire6/expand3x3/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџР
Z
fire6/concat/concat/axisConst*
_output_shapes
: *
value	B :*
dtype0
П
fire6/concat/concatConcatV2fire6/relu_expand1x1/Relufire6/relu_expand3x3/Relufire6/concat/concat/axis*
T0*
N*0
_output_shapes
:џџџџџџџџџ*

Tidx0
~
%fire7/squeeze1x1/random_uniform/shapeConst*%
valueB"        0   *
dtype0*
_output_shapes
:
h
#fire7/squeeze1x1/random_uniform/minConst*
_output_shapes
: *
valueB
 *я[ёН*
dtype0
h
#fire7/squeeze1x1/random_uniform/maxConst*
valueB
 *я[ё=*
dtype0*
_output_shapes
: 
У
-fire7/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire7/squeeze1x1/random_uniform/shape*
dtype0*'
_output_shapes
:0*
seed2ПЉА*
seedБџх)*
T0

#fire7/squeeze1x1/random_uniform/subSub#fire7/squeeze1x1/random_uniform/max#fire7/squeeze1x1/random_uniform/min*
_output_shapes
: *
T0
А
#fire7/squeeze1x1/random_uniform/mulMul-fire7/squeeze1x1/random_uniform/RandomUniform#fire7/squeeze1x1/random_uniform/sub*
T0*'
_output_shapes
:0
Ђ
fire7/squeeze1x1/random_uniformAdd#fire7/squeeze1x1/random_uniform/mul#fire7/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:0

fire7/squeeze1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:0*
	container *
shape:0*
shared_name 
щ
fire7/squeeze1x1/kernel/AssignAssignfire7/squeeze1x1/kernelfire7/squeeze1x1/random_uniform**
_class 
loc:@fire7/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0*
use_locking(*
T0

fire7/squeeze1x1/kernel/readIdentityfire7/squeeze1x1/kernel**
_class 
loc:@fire7/squeeze1x1/kernel*'
_output_shapes
:0*
T0
c
fire7/squeeze1x1/ConstConst*
_output_shapes
:0*
valueB0*    *
dtype0

fire7/squeeze1x1/bias
VariableV2*
dtype0*
_output_shapes
:0*
	container *
shape:0*
shared_name 
Э
fire7/squeeze1x1/bias/AssignAssignfire7/squeeze1x1/biasfire7/squeeze1x1/Const*
T0*(
_class
loc:@fire7/squeeze1x1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(

fire7/squeeze1x1/bias/readIdentityfire7/squeeze1x1/bias*
T0*(
_class
loc:@fire7/squeeze1x1/bias*
_output_shapes
:0
{
*fire7/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire7/squeeze1x1/convolutionConv2Dfire6/concat/concatfire7/squeeze1x1/kernel/read*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ў
fire7/squeeze1x1/BiasAddBiasAddfire7/squeeze1x1/convolutionfire7/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ0
v
fire7/relu_squeeze1x1/ReluRelufire7/squeeze1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ0*
T0
}
$fire7/expand1x1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"      0   Р   *
dtype0
g
"fire7/expand1x1/random_uniform/minConst*
valueB
 *ш!О*
dtype0*
_output_shapes
: 
g
"fire7/expand1x1/random_uniform/maxConst*
valueB
 *ш!>*
dtype0*
_output_shapes
: 
Р
,fire7/expand1x1/random_uniform/RandomUniformRandomUniform$fire7/expand1x1/random_uniform/shape*
dtype0*'
_output_shapes
:0Р*
seed2ЛЇ*
seedБџх)*
T0

"fire7/expand1x1/random_uniform/subSub"fire7/expand1x1/random_uniform/max"fire7/expand1x1/random_uniform/min*
_output_shapes
: *
T0
­
"fire7/expand1x1/random_uniform/mulMul,fire7/expand1x1/random_uniform/RandomUniform"fire7/expand1x1/random_uniform/sub*
T0*'
_output_shapes
:0Р

fire7/expand1x1/random_uniformAdd"fire7/expand1x1/random_uniform/mul"fire7/expand1x1/random_uniform/min*'
_output_shapes
:0Р*
T0

fire7/expand1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
х
fire7/expand1x1/kernel/AssignAssignfire7/expand1x1/kernelfire7/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire7/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р

fire7/expand1x1/kernel/readIdentityfire7/expand1x1/kernel*
T0*)
_class
loc:@fire7/expand1x1/kernel*'
_output_shapes
:0Р
d
fire7/expand1x1/ConstConst*
valueBР*    *
dtype0*
_output_shapes	
:Р

fire7/expand1x1/bias
VariableV2*
dtype0*
_output_shapes	
:Р*
	container *
shape:Р*
shared_name 
Ъ
fire7/expand1x1/bias/AssignAssignfire7/expand1x1/biasfire7/expand1x1/Const*'
_class
loc:@fire7/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0

fire7/expand1x1/bias/readIdentityfire7/expand1x1/bias*
T0*'
_class
loc:@fire7/expand1x1/bias*
_output_shapes	
:Р
z
)fire7/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire7/expand1x1/convolutionConv2Dfire7/relu_squeeze1x1/Relufire7/expand1x1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџР
Ќ
fire7/expand1x1/BiasAddBiasAddfire7/expand1x1/convolutionfire7/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџР
u
fire7/relu_expand1x1/ReluRelufire7/expand1x1/BiasAdd*0
_output_shapes
:џџџџџџџџџР*
T0
}
$fire7/expand3x3/random_uniform/shapeConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
g
"fire7/expand3x3/random_uniform/minConst*
valueB
 *ЯрWН*
dtype0*
_output_shapes
: 
g
"fire7/expand3x3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЯрW=
Р
,fire7/expand3x3/random_uniform/RandomUniformRandomUniform$fire7/expand3x3/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:0Р*
seed2 M

"fire7/expand3x3/random_uniform/subSub"fire7/expand3x3/random_uniform/max"fire7/expand3x3/random_uniform/min*
_output_shapes
: *
T0
­
"fire7/expand3x3/random_uniform/mulMul,fire7/expand3x3/random_uniform/RandomUniform"fire7/expand3x3/random_uniform/sub*
T0*'
_output_shapes
:0Р

fire7/expand3x3/random_uniformAdd"fire7/expand3x3/random_uniform/mul"fire7/expand3x3/random_uniform/min*'
_output_shapes
:0Р*
T0

fire7/expand3x3/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р
х
fire7/expand3x3/kernel/AssignAssignfire7/expand3x3/kernelfire7/expand3x3/random_uniform*
T0*)
_class
loc:@fire7/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р*
use_locking(

fire7/expand3x3/kernel/readIdentityfire7/expand3x3/kernel*
T0*)
_class
loc:@fire7/expand3x3/kernel*'
_output_shapes
:0Р
d
fire7/expand3x3/ConstConst*
valueBР*    *
dtype0*
_output_shapes	
:Р

fire7/expand3x3/bias
VariableV2*
shape:Р*
shared_name *
dtype0*
_output_shapes	
:Р*
	container 
Ъ
fire7/expand3x3/bias/AssignAssignfire7/expand3x3/biasfire7/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire7/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р

fire7/expand3x3/bias/readIdentityfire7/expand3x3/bias*
_output_shapes	
:Р*
T0*'
_class
loc:@fire7/expand3x3/bias
z
)fire7/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire7/expand3x3/convolutionConv2Dfire7/relu_squeeze1x1/Relufire7/expand3x3/kernel/read*
paddingSAME*0
_output_shapes
:џџџџџџџџџР*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ќ
fire7/expand3x3/BiasAddBiasAddfire7/expand3x3/convolutionfire7/expand3x3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџР
u
fire7/relu_expand3x3/ReluRelufire7/expand3x3/BiasAdd*0
_output_shapes
:џџџџџџџџџР*
T0
Z
fire7/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire7/concat/concatConcatV2fire7/relu_expand1x1/Relufire7/relu_expand3x3/Relufire7/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
~
%fire8/squeeze1x1/random_uniform/shapeConst*%
valueB"        @   *
dtype0*
_output_shapes
:
h
#fire8/squeeze1x1/random_uniform/minConst*
_output_shapes
: *
valueB
 *эН*
dtype0
h
#fire8/squeeze1x1/random_uniform/maxConst*
valueB
 *э=*
dtype0*
_output_shapes
: 
У
-fire8/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire8/squeeze1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:@*
seed2Йе

#fire8/squeeze1x1/random_uniform/subSub#fire8/squeeze1x1/random_uniform/max#fire8/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire8/squeeze1x1/random_uniform/mulMul-fire8/squeeze1x1/random_uniform/RandomUniform#fire8/squeeze1x1/random_uniform/sub*
T0*'
_output_shapes
:@
Ђ
fire8/squeeze1x1/random_uniformAdd#fire8/squeeze1x1/random_uniform/mul#fire8/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:@

fire8/squeeze1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
щ
fire8/squeeze1x1/kernel/AssignAssignfire8/squeeze1x1/kernelfire8/squeeze1x1/random_uniform*'
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@fire8/squeeze1x1/kernel*
validate_shape(

fire8/squeeze1x1/kernel/readIdentityfire8/squeeze1x1/kernel*
T0**
_class 
loc:@fire8/squeeze1x1/kernel*'
_output_shapes
:@
c
fire8/squeeze1x1/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0

fire8/squeeze1x1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Э
fire8/squeeze1x1/bias/AssignAssignfire8/squeeze1x1/biasfire8/squeeze1x1/Const*
_output_shapes
:@*
use_locking(*
T0*(
_class
loc:@fire8/squeeze1x1/bias*
validate_shape(

fire8/squeeze1x1/bias/readIdentityfire8/squeeze1x1/bias*
T0*(
_class
loc:@fire8/squeeze1x1/bias*
_output_shapes
:@
{
*fire8/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire8/squeeze1x1/convolutionConv2Dfire7/concat/concatfire8/squeeze1x1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
Ў
fire8/squeeze1x1/BiasAddBiasAddfire8/squeeze1x1/convolutionfire8/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
v
fire8/relu_squeeze1x1/ReluRelufire8/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
}
$fire8/expand1x1/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
g
"fire8/expand1x1/random_uniform/minConst*
valueB
 *7О*
dtype0*
_output_shapes
: 
g
"fire8/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
С
,fire8/expand1x1/random_uniform/RandomUniformRandomUniform$fire8/expand1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:@*
seed2рй

"fire8/expand1x1/random_uniform/subSub"fire8/expand1x1/random_uniform/max"fire8/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
­
"fire8/expand1x1/random_uniform/mulMul,fire8/expand1x1/random_uniform/RandomUniform"fire8/expand1x1/random_uniform/sub*
T0*'
_output_shapes
:@

fire8/expand1x1/random_uniformAdd"fire8/expand1x1/random_uniform/mul"fire8/expand1x1/random_uniform/min*
T0*'
_output_shapes
:@

fire8/expand1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
х
fire8/expand1x1/kernel/AssignAssignfire8/expand1x1/kernelfire8/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire8/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@

fire8/expand1x1/kernel/readIdentityfire8/expand1x1/kernel*
T0*)
_class
loc:@fire8/expand1x1/kernel*'
_output_shapes
:@
d
fire8/expand1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire8/expand1x1/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ъ
fire8/expand1x1/bias/AssignAssignfire8/expand1x1/biasfire8/expand1x1/Const*
T0*'
_class
loc:@fire8/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

fire8/expand1x1/bias/readIdentityfire8/expand1x1/bias*
_output_shapes	
:*
T0*'
_class
loc:@fire8/expand1x1/bias
z
)fire8/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire8/expand1x1/convolutionConv2Dfire8/relu_squeeze1x1/Relufire8/expand1x1/kernel/read*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ќ
fire8/expand1x1/BiasAddBiasAddfire8/expand1x1/convolutionfire8/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire8/relu_expand1x1/ReluRelufire8/expand1x1/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
}
$fire8/expand3x3/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
g
"fire8/expand3x3/random_uniform/minConst*
_output_shapes
: *
valueB
 *Кє:Н*
dtype0
g
"fire8/expand3x3/random_uniform/maxConst*
valueB
 *Кє:=*
dtype0*
_output_shapes
: 
С
,fire8/expand3x3/random_uniform/RandomUniformRandomUniform$fire8/expand3x3/random_uniform/shape*
dtype0*'
_output_shapes
:@*
seed2ыхЯ*
seedБџх)*
T0

"fire8/expand3x3/random_uniform/subSub"fire8/expand3x3/random_uniform/max"fire8/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
­
"fire8/expand3x3/random_uniform/mulMul,fire8/expand3x3/random_uniform/RandomUniform"fire8/expand3x3/random_uniform/sub*'
_output_shapes
:@*
T0

fire8/expand3x3/random_uniformAdd"fire8/expand3x3/random_uniform/mul"fire8/expand3x3/random_uniform/min*'
_output_shapes
:@*
T0

fire8/expand3x3/kernel
VariableV2*
shape:@*
shared_name *
dtype0*'
_output_shapes
:@*
	container 
х
fire8/expand3x3/kernel/AssignAssignfire8/expand3x3/kernelfire8/expand3x3/random_uniform*
T0*)
_class
loc:@fire8/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(

fire8/expand3x3/kernel/readIdentityfire8/expand3x3/kernel*)
_class
loc:@fire8/expand3x3/kernel*'
_output_shapes
:@*
T0
d
fire8/expand3x3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire8/expand3x3/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ъ
fire8/expand3x3/bias/AssignAssignfire8/expand3x3/biasfire8/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire8/expand3x3/bias*
validate_shape(*
_output_shapes	
:

fire8/expand3x3/bias/readIdentityfire8/expand3x3/bias*'
_class
loc:@fire8/expand3x3/bias*
_output_shapes	
:*
T0
z
)fire8/expand3x3/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire8/expand3x3/convolutionConv2Dfire8/relu_squeeze1x1/Relufire8/expand3x3/kernel/read*
paddingSAME*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ќ
fire8/expand3x3/BiasAddBiasAddfire8/expand3x3/convolutionfire8/expand3x3/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ*
T0
u
fire8/relu_expand3x3/ReluRelufire8/expand3x3/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
Z
fire8/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire8/concat/concatConcatV2fire8/relu_expand1x1/Relufire8/relu_expand3x3/Relufire8/concat/concat/axis*
N*0
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
~
%fire9/squeeze1x1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
h
#fire9/squeeze1x1/random_uniform/minConst*
_output_shapes
: *
valueB
 *ьбН*
dtype0
h
#fire9/squeeze1x1/random_uniform/maxConst*
valueB
 *ьб=*
dtype0*
_output_shapes
: 
У
-fire9/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire9/squeeze1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:@*
seed2АќЗ*
seedБџх)

#fire9/squeeze1x1/random_uniform/subSub#fire9/squeeze1x1/random_uniform/max#fire9/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire9/squeeze1x1/random_uniform/mulMul-fire9/squeeze1x1/random_uniform/RandomUniform#fire9/squeeze1x1/random_uniform/sub*
T0*'
_output_shapes
:@
Ђ
fire9/squeeze1x1/random_uniformAdd#fire9/squeeze1x1/random_uniform/mul#fire9/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:@

fire9/squeeze1x1/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
щ
fire9/squeeze1x1/kernel/AssignAssignfire9/squeeze1x1/kernelfire9/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire9/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@

fire9/squeeze1x1/kernel/readIdentityfire9/squeeze1x1/kernel*
T0**
_class 
loc:@fire9/squeeze1x1/kernel*'
_output_shapes
:@
c
fire9/squeeze1x1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@

fire9/squeeze1x1/bias
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
Э
fire9/squeeze1x1/bias/AssignAssignfire9/squeeze1x1/biasfire9/squeeze1x1/Const*
use_locking(*
T0*(
_class
loc:@fire9/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@

fire9/squeeze1x1/bias/readIdentityfire9/squeeze1x1/bias*
T0*(
_class
loc:@fire9/squeeze1x1/bias*
_output_shapes
:@
{
*fire9/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire9/squeeze1x1/convolutionConv2Dfire8/concat/concatfire9/squeeze1x1/kernel/read*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
Ў
fire9/squeeze1x1/BiasAddBiasAddfire9/squeeze1x1/convolutionfire9/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
v
fire9/relu_squeeze1x1/ReluRelufire9/squeeze1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
}
$fire9/expand1x1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"      @      *
dtype0
g
"fire9/expand1x1/random_uniform/minConst*
valueB
 *7О*
dtype0*
_output_shapes
: 
g
"fire9/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
С
,fire9/expand1x1/random_uniform/RandomUniformRandomUniform$fire9/expand1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:@*
seed2кУо

"fire9/expand1x1/random_uniform/subSub"fire9/expand1x1/random_uniform/max"fire9/expand1x1/random_uniform/min*
_output_shapes
: *
T0
­
"fire9/expand1x1/random_uniform/mulMul,fire9/expand1x1/random_uniform/RandomUniform"fire9/expand1x1/random_uniform/sub*
T0*'
_output_shapes
:@

fire9/expand1x1/random_uniformAdd"fire9/expand1x1/random_uniform/mul"fire9/expand1x1/random_uniform/min*'
_output_shapes
:@*
T0

fire9/expand1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
х
fire9/expand1x1/kernel/AssignAssignfire9/expand1x1/kernelfire9/expand1x1/random_uniform*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire9/expand1x1/kernel

fire9/expand1x1/kernel/readIdentityfire9/expand1x1/kernel*
T0*)
_class
loc:@fire9/expand1x1/kernel*'
_output_shapes
:@
d
fire9/expand1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire9/expand1x1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ъ
fire9/expand1x1/bias/AssignAssignfire9/expand1x1/biasfire9/expand1x1/Const*
T0*'
_class
loc:@fire9/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

fire9/expand1x1/bias/readIdentityfire9/expand1x1/bias*'
_class
loc:@fire9/expand1x1/bias*
_output_shapes	
:*
T0
z
)fire9/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire9/expand1x1/convolutionConv2Dfire9/relu_squeeze1x1/Relufire9/expand1x1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ
Ќ
fire9/expand1x1/BiasAddBiasAddfire9/expand1x1/convolutionfire9/expand1x1/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ*
T0
u
fire9/relu_expand1x1/ReluRelufire9/expand1x1/BiasAdd*0
_output_shapes
:џџџџџџџџџ*
T0
}
$fire9/expand3x3/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
g
"fire9/expand3x3/random_uniform/minConst*
valueB
 *Кє:Н*
dtype0*
_output_shapes
: 
g
"fire9/expand3x3/random_uniform/maxConst*
valueB
 *Кє:=*
dtype0*
_output_shapes
: 
С
,fire9/expand3x3/random_uniform/RandomUniformRandomUniform$fire9/expand3x3/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:@*
seed2ўѕ*
seedБџх)

"fire9/expand3x3/random_uniform/subSub"fire9/expand3x3/random_uniform/max"fire9/expand3x3/random_uniform/min*
_output_shapes
: *
T0
­
"fire9/expand3x3/random_uniform/mulMul,fire9/expand3x3/random_uniform/RandomUniform"fire9/expand3x3/random_uniform/sub*
T0*'
_output_shapes
:@

fire9/expand3x3/random_uniformAdd"fire9/expand3x3/random_uniform/mul"fire9/expand3x3/random_uniform/min*
T0*'
_output_shapes
:@

fire9/expand3x3/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
х
fire9/expand3x3/kernel/AssignAssignfire9/expand3x3/kernelfire9/expand3x3/random_uniform*
use_locking(*
T0*)
_class
loc:@fire9/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@

fire9/expand3x3/kernel/readIdentityfire9/expand3x3/kernel*)
_class
loc:@fire9/expand3x3/kernel*'
_output_shapes
:@*
T0
d
fire9/expand3x3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire9/expand3x3/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ъ
fire9/expand3x3/bias/AssignAssignfire9/expand3x3/biasfire9/expand3x3/Const*'
_class
loc:@fire9/expand3x3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

fire9/expand3x3/bias/readIdentityfire9/expand3x3/bias*
T0*'
_class
loc:@fire9/expand3x3/bias*
_output_shapes	
:
z
)fire9/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire9/expand3x3/convolutionConv2Dfire9/relu_squeeze1x1/Relufire9/expand3x3/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0
Ќ
fire9/expand3x3/BiasAddBiasAddfire9/expand3x3/convolutionfire9/expand3x3/bias/read*0
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
u
fire9/relu_expand3x3/ReluRelufire9/expand3x3/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
Z
fire9/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire9/concat/concatConcatV2fire9/relu_expand1x1/Relufire9/relu_expand3x3/Relufire9/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
b
 drop9/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

drop9/keras_learning_phasePlaceholderWithDefault drop9/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
v
drop9/cond/SwitchSwitchdrop9/keras_learning_phasedrop9/keras_learning_phase*
_output_shapes
: : *
T0

U
drop9/cond/switch_tIdentitydrop9/cond/Switch:1*
T0
*
_output_shapes
: 
S
drop9/cond/switch_fIdentitydrop9/cond/Switch*
T0
*
_output_shapes
: 
[
drop9/cond/pred_idIdentitydrop9/keras_learning_phase*
_output_shapes
: *
T0

k
drop9/cond/mul/yConst^drop9/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
drop9/cond/mulMuldrop9/cond/mul/Switch:1drop9/cond/mul/y*
T0*0
_output_shapes
:џџџџџџџџџ
Ч
drop9/cond/mul/SwitchSwitchfire9/concat/concatdrop9/cond/pred_id*
T0*&
_class
loc:@fire9/concat/concat*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ
w
drop9/cond/dropout/keep_probConst^drop9/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
f
drop9/cond/dropout/ShapeShapedrop9/cond/mul*
T0*
out_type0*
_output_shapes
:

%drop9/cond/dropout/random_uniform/minConst^drop9/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

%drop9/cond/dropout/random_uniform/maxConst^drop9/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
/drop9/cond/dropout/random_uniform/RandomUniformRandomUniformdrop9/cond/dropout/Shape*
T0*
dtype0*0
_output_shapes
:џџџџџџџџџ*
seed2Л *
seedБџх)

%drop9/cond/dropout/random_uniform/subSub%drop9/cond/dropout/random_uniform/max%drop9/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
П
%drop9/cond/dropout/random_uniform/mulMul/drop9/cond/dropout/random_uniform/RandomUniform%drop9/cond/dropout/random_uniform/sub*
T0*0
_output_shapes
:џџџџџџџџџ
Б
!drop9/cond/dropout/random_uniformAdd%drop9/cond/dropout/random_uniform/mul%drop9/cond/dropout/random_uniform/min*
T0*0
_output_shapes
:џџџџџџџџџ

drop9/cond/dropout/addAdddrop9/cond/dropout/keep_prob!drop9/cond/dropout/random_uniform*0
_output_shapes
:џџџџџџџџџ*
T0
t
drop9/cond/dropout/FloorFloordrop9/cond/dropout/add*0
_output_shapes
:џџџџџџџџџ*
T0

drop9/cond/dropout/divRealDivdrop9/cond/muldrop9/cond/dropout/keep_prob*
T0*0
_output_shapes
:џџџџџџџџџ

drop9/cond/dropout/mulMuldrop9/cond/dropout/divdrop9/cond/dropout/Floor*
T0*0
_output_shapes
:џџџџџџџџџ
Х
drop9/cond/Switch_1Switchfire9/concat/concatdrop9/cond/pred_id*
T0*&
_class
loc:@fire9/concat/concat*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ

drop9/cond/MergeMergedrop9/cond/Switch_1drop9/cond/dropout/mul*
T0*
N*2
_output_shapes 
:џџџџџџџџџ: 
t
conv10/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         ш  
^
conv10/random_uniform/minConst*
valueB
 *
Н*
dtype0*
_output_shapes
: 
^
conv10/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *
=
А
#conv10/random_uniform/RandomUniformRandomUniformconv10/random_uniform/shape*
T0*
dtype0*(
_output_shapes
:ш*
seed2Юл*
seedБџх)
w
conv10/random_uniform/subSubconv10/random_uniform/maxconv10/random_uniform/min*
T0*
_output_shapes
: 

conv10/random_uniform/mulMul#conv10/random_uniform/RandomUniformconv10/random_uniform/sub*(
_output_shapes
:ш*
T0

conv10/random_uniformAddconv10/random_uniform/mulconv10/random_uniform/min*
T0*(
_output_shapes
:ш

conv10/kernel
VariableV2*(
_output_shapes
:ш*
	container *
shape:ш*
shared_name *
dtype0
Т
conv10/kernel/AssignAssignconv10/kernelconv10/random_uniform*
use_locking(*
T0* 
_class
loc:@conv10/kernel*
validate_shape(*(
_output_shapes
:ш

conv10/kernel/readIdentityconv10/kernel*
T0* 
_class
loc:@conv10/kernel*(
_output_shapes
:ш
[
conv10/ConstConst*
valueBш*    *
dtype0*
_output_shapes	
:ш
y
conv10/bias
VariableV2*
dtype0*
_output_shapes	
:ш*
	container *
shape:ш*
shared_name 
І
conv10/bias/AssignAssignconv10/biasconv10/Const*
use_locking(*
T0*
_class
loc:@conv10/bias*
validate_shape(*
_output_shapes	
:ш
o
conv10/bias/readIdentityconv10/bias*
_output_shapes	
:ш*
T0*
_class
loc:@conv10/bias
q
 conv10/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ь
conv10/convolutionConv2Ddrop9/cond/Mergeconv10/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџш

conv10/BiasAddBiasAddconv10/convolutionconv10/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџш*
T0
c
relu_conv10/ReluReluconv10/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџш

1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
valueB"      *
dtype0
М
global_average_pooling2d_1/MeanMeanrelu_conv10/Relu1global_average_pooling2d_1/Mean/reduction_indices*(
_output_shapes
:џџџџџџџџџш*
	keep_dims( *

Tidx0*
T0
k
loss/SoftmaxSoftmaxglobal_average_pooling2d_1/Mean*
T0*(
_output_shapes
:џџџџџџџџџш
l
PlaceholderPlaceholder*
shape:@*
dtype0*&
_output_shapes
:@
І
AssignAssignconv1/kernelPlaceholder*
use_locking( *
T0*
_class
loc:@conv1/kernel*
validate_shape(*&
_output_shapes
:@
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
:@*
shape:@

Assign_1Assign
conv1/biasPlaceholder_1*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
n
Placeholder_2Placeholder*&
_output_shapes
:@*
shape:@*
dtype0
Р
Assign_2Assignfire2/squeeze1x1/kernelPlaceholder_2*
validate_shape(*&
_output_shapes
:@*
use_locking( *
T0**
_class 
loc:@fire2/squeeze1x1/kernel
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
А
Assign_3Assignfire2/squeeze1x1/biasPlaceholder_3*
_output_shapes
:*
use_locking( *
T0*(
_class
loc:@fire2/squeeze1x1/bias*
validate_shape(
n
Placeholder_4Placeholder*&
_output_shapes
:@*
shape:@*
dtype0
О
Assign_4Assignfire2/expand1x1/kernelPlaceholder_4*)
_class
loc:@fire2/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking( *
T0
V
Placeholder_5Placeholder*
shape:@*
dtype0*
_output_shapes
:@
Ў
Assign_5Assignfire2/expand1x1/biasPlaceholder_5*
T0*'
_class
loc:@fire2/expand1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking( 
n
Placeholder_6Placeholder*
dtype0*&
_output_shapes
:@*
shape:@
О
Assign_6Assignfire2/expand3x3/kernelPlaceholder_6*
use_locking( *
T0*)
_class
loc:@fire2/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@
V
Placeholder_7Placeholder*
shape:@*
dtype0*
_output_shapes
:@
Ў
Assign_7Assignfire2/expand3x3/biasPlaceholder_7*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0*'
_class
loc:@fire2/expand3x3/bias
p
Placeholder_8Placeholder*
dtype0*'
_output_shapes
:*
shape:
С
Assign_8Assignfire3/squeeze1x1/kernelPlaceholder_8*
use_locking( *
T0**
_class 
loc:@fire3/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:
V
Placeholder_9Placeholder*
_output_shapes
:*
shape:*
dtype0
А
Assign_9Assignfire3/squeeze1x1/biasPlaceholder_9*
_output_shapes
:*
use_locking( *
T0*(
_class
loc:@fire3/squeeze1x1/bias*
validate_shape(
o
Placeholder_10Placeholder*
dtype0*&
_output_shapes
:@*
shape:@
Р
	Assign_10Assignfire3/expand1x1/kernelPlaceholder_10*
T0*)
_class
loc:@fire3/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking( 
W
Placeholder_11Placeholder*
dtype0*
_output_shapes
:@*
shape:@
А
	Assign_11Assignfire3/expand1x1/biasPlaceholder_11*
use_locking( *
T0*'
_class
loc:@fire3/expand1x1/bias*
validate_shape(*
_output_shapes
:@
o
Placeholder_12Placeholder*
dtype0*&
_output_shapes
:@*
shape:@
Р
	Assign_12Assignfire3/expand3x3/kernelPlaceholder_12*
use_locking( *
T0*)
_class
loc:@fire3/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@
W
Placeholder_13Placeholder*
_output_shapes
:@*
shape:@*
dtype0
А
	Assign_13Assignfire3/expand3x3/biasPlaceholder_13*'
_class
loc:@fire3/expand3x3/bias*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
q
Placeholder_14Placeholder*
dtype0*'
_output_shapes
: *
shape: 
У
	Assign_14Assignfire4/squeeze1x1/kernelPlaceholder_14*
use_locking( *
T0**
_class 
loc:@fire4/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: 
W
Placeholder_15Placeholder*
dtype0*
_output_shapes
: *
shape: 
В
	Assign_15Assignfire4/squeeze1x1/biasPlaceholder_15*
T0*(
_class
loc:@fire4/squeeze1x1/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
q
Placeholder_16Placeholder*
dtype0*'
_output_shapes
: *
shape: 
С
	Assign_16Assignfire4/expand1x1/kernelPlaceholder_16*
use_locking( *
T0*)
_class
loc:@fire4/expand1x1/kernel*
validate_shape(*'
_output_shapes
: 
Y
Placeholder_17Placeholder*
_output_shapes	
:*
shape:*
dtype0
Б
	Assign_17Assignfire4/expand1x1/biasPlaceholder_17*
use_locking( *
T0*'
_class
loc:@fire4/expand1x1/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_18Placeholder*
dtype0*'
_output_shapes
: *
shape: 
С
	Assign_18Assignfire4/expand3x3/kernelPlaceholder_18*
use_locking( *
T0*)
_class
loc:@fire4/expand3x3/kernel*
validate_shape(*'
_output_shapes
: 
Y
Placeholder_19Placeholder*
_output_shapes	
:*
shape:*
dtype0
Б
	Assign_19Assignfire4/expand3x3/biasPlaceholder_19*
use_locking( *
T0*'
_class
loc:@fire4/expand3x3/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_20Placeholder*
dtype0*'
_output_shapes
: *
shape: 
У
	Assign_20Assignfire5/squeeze1x1/kernelPlaceholder_20*'
_output_shapes
: *
use_locking( *
T0**
_class 
loc:@fire5/squeeze1x1/kernel*
validate_shape(
W
Placeholder_21Placeholder*
shape: *
dtype0*
_output_shapes
: 
В
	Assign_21Assignfire5/squeeze1x1/biasPlaceholder_21*
use_locking( *
T0*(
_class
loc:@fire5/squeeze1x1/bias*
validate_shape(*
_output_shapes
: 
q
Placeholder_22Placeholder*
dtype0*'
_output_shapes
: *
shape: 
С
	Assign_22Assignfire5/expand1x1/kernelPlaceholder_22*
use_locking( *
T0*)
_class
loc:@fire5/expand1x1/kernel*
validate_shape(*'
_output_shapes
: 
Y
Placeholder_23Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_23Assignfire5/expand1x1/biasPlaceholder_23*'
_class
loc:@fire5/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0
q
Placeholder_24Placeholder*
shape: *
dtype0*'
_output_shapes
: 
С
	Assign_24Assignfire5/expand3x3/kernelPlaceholder_24*
use_locking( *
T0*)
_class
loc:@fire5/expand3x3/kernel*
validate_shape(*'
_output_shapes
: 
Y
Placeholder_25Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_25Assignfire5/expand3x3/biasPlaceholder_25*
use_locking( *
T0*'
_class
loc:@fire5/expand3x3/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_26Placeholder*
shape:0*
dtype0*'
_output_shapes
:0
У
	Assign_26Assignfire6/squeeze1x1/kernelPlaceholder_26*
use_locking( *
T0**
_class 
loc:@fire6/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0
W
Placeholder_27Placeholder*
dtype0*
_output_shapes
:0*
shape:0
В
	Assign_27Assignfire6/squeeze1x1/biasPlaceholder_27*
use_locking( *
T0*(
_class
loc:@fire6/squeeze1x1/bias*
validate_shape(*
_output_shapes
:0
q
Placeholder_28Placeholder*
dtype0*'
_output_shapes
:0Р*
shape:0Р
С
	Assign_28Assignfire6/expand1x1/kernelPlaceholder_28*
use_locking( *
T0*)
_class
loc:@fire6/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р
Y
Placeholder_29Placeholder*
shape:Р*
dtype0*
_output_shapes	
:Р
Б
	Assign_29Assignfire6/expand1x1/biasPlaceholder_29*
use_locking( *
T0*'
_class
loc:@fire6/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р
q
Placeholder_30Placeholder*
dtype0*'
_output_shapes
:0Р*
shape:0Р
С
	Assign_30Assignfire6/expand3x3/kernelPlaceholder_30*
validate_shape(*'
_output_shapes
:0Р*
use_locking( *
T0*)
_class
loc:@fire6/expand3x3/kernel
Y
Placeholder_31Placeholder*
_output_shapes	
:Р*
shape:Р*
dtype0
Б
	Assign_31Assignfire6/expand3x3/biasPlaceholder_31*
use_locking( *
T0*'
_class
loc:@fire6/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р
q
Placeholder_32Placeholder*
shape:0*
dtype0*'
_output_shapes
:0
У
	Assign_32Assignfire7/squeeze1x1/kernelPlaceholder_32*
use_locking( *
T0**
_class 
loc:@fire7/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0
W
Placeholder_33Placeholder*
shape:0*
dtype0*
_output_shapes
:0
В
	Assign_33Assignfire7/squeeze1x1/biasPlaceholder_33*
use_locking( *
T0*(
_class
loc:@fire7/squeeze1x1/bias*
validate_shape(*
_output_shapes
:0
q
Placeholder_34Placeholder*
dtype0*'
_output_shapes
:0Р*
shape:0Р
С
	Assign_34Assignfire7/expand1x1/kernelPlaceholder_34*
use_locking( *
T0*)
_class
loc:@fire7/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р
Y
Placeholder_35Placeholder*
shape:Р*
dtype0*
_output_shapes	
:Р
Б
	Assign_35Assignfire7/expand1x1/biasPlaceholder_35*
_output_shapes	
:Р*
use_locking( *
T0*'
_class
loc:@fire7/expand1x1/bias*
validate_shape(
q
Placeholder_36Placeholder*
dtype0*'
_output_shapes
:0Р*
shape:0Р
С
	Assign_36Assignfire7/expand3x3/kernelPlaceholder_36*)
_class
loc:@fire7/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р*
use_locking( *
T0
Y
Placeholder_37Placeholder*
dtype0*
_output_shapes	
:Р*
shape:Р
Б
	Assign_37Assignfire7/expand3x3/biasPlaceholder_37*
_output_shapes	
:Р*
use_locking( *
T0*'
_class
loc:@fire7/expand3x3/bias*
validate_shape(
q
Placeholder_38Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
У
	Assign_38Assignfire8/squeeze1x1/kernelPlaceholder_38*
use_locking( *
T0**
_class 
loc:@fire8/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@
W
Placeholder_39Placeholder*
shape:@*
dtype0*
_output_shapes
:@
В
	Assign_39Assignfire8/squeeze1x1/biasPlaceholder_39*(
_class
loc:@fire8/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
q
Placeholder_40Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
С
	Assign_40Assignfire8/expand1x1/kernelPlaceholder_40*
validate_shape(*'
_output_shapes
:@*
use_locking( *
T0*)
_class
loc:@fire8/expand1x1/kernel
Y
Placeholder_41Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_41Assignfire8/expand1x1/biasPlaceholder_41*
use_locking( *
T0*'
_class
loc:@fire8/expand1x1/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_42Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
С
	Assign_42Assignfire8/expand3x3/kernelPlaceholder_42*)
_class
loc:@fire8/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking( *
T0
Y
Placeholder_43Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_43Assignfire8/expand3x3/biasPlaceholder_43*
_output_shapes	
:*
use_locking( *
T0*'
_class
loc:@fire8/expand3x3/bias*
validate_shape(
q
Placeholder_44Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
У
	Assign_44Assignfire9/squeeze1x1/kernelPlaceholder_44*
use_locking( *
T0**
_class 
loc:@fire9/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@
W
Placeholder_45Placeholder*
dtype0*
_output_shapes
:@*
shape:@
В
	Assign_45Assignfire9/squeeze1x1/biasPlaceholder_45*(
_class
loc:@fire9/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
q
Placeholder_46Placeholder*'
_output_shapes
:@*
shape:@*
dtype0
С
	Assign_46Assignfire9/expand1x1/kernelPlaceholder_46*
use_locking( *
T0*)
_class
loc:@fire9/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@
Y
Placeholder_47Placeholder*
shape:*
dtype0*
_output_shapes	
:
Б
	Assign_47Assignfire9/expand1x1/biasPlaceholder_47*
use_locking( *
T0*'
_class
loc:@fire9/expand1x1/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_48Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
С
	Assign_48Assignfire9/expand3x3/kernelPlaceholder_48*
use_locking( *
T0*)
_class
loc:@fire9/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@
Y
Placeholder_49Placeholder*
shape:*
dtype0*
_output_shapes	
:
Б
	Assign_49Assignfire9/expand3x3/biasPlaceholder_49*
T0*'
_class
loc:@fire9/expand3x3/bias*
validate_shape(*
_output_shapes	
:*
use_locking( 
s
Placeholder_50Placeholder*
dtype0*(
_output_shapes
:ш*
shape:ш
А
	Assign_50Assignconv10/kernelPlaceholder_50*
use_locking( *
T0* 
_class
loc:@conv10/kernel*
validate_shape(*(
_output_shapes
:ш
Y
Placeholder_51Placeholder*
dtype0*
_output_shapes	
:ш*
shape:ш

	Assign_51Assignconv10/biasPlaceholder_51*
T0*
_class
loc:@conv10/bias*
validate_shape(*
_output_shapes	
:ш*
use_locking( 

IsVariableInitializedIsVariableInitializedconv1/kernel*
_class
loc:@conv1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitialized
conv1/bias*
_class
loc:@conv1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializedfire2/squeeze1x1/kernel**
_class 
loc:@fire2/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedfire2/squeeze1x1/bias*(
_class
loc:@fire2/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializedfire2/expand1x1/kernel*)
_class
loc:@fire2/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializedfire2/expand1x1/bias*'
_class
loc:@fire2/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedfire2/expand3x3/kernel*)
_class
loc:@fire2/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedfire2/expand3x3/bias*'
_class
loc:@fire2/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitializedfire3/squeeze1x1/kernel**
_class 
loc:@fire3/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedfire3/squeeze1x1/bias*(
_class
loc:@fire3/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedfire3/expand1x1/kernel*)
_class
loc:@fire3/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedfire3/expand1x1/bias*'
_class
loc:@fire3/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializedfire3/expand3x3/kernel*
dtype0*
_output_shapes
: *)
_class
loc:@fire3/expand3x3/kernel

IsVariableInitialized_13IsVariableInitializedfire3/expand3x3/bias*'
_class
loc:@fire3/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedfire4/squeeze1x1/kernel**
_class 
loc:@fire4/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedfire4/squeeze1x1/bias*(
_class
loc:@fire4/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedfire4/expand1x1/kernel*)
_class
loc:@fire4/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedfire4/expand1x1/bias*'
_class
loc:@fire4/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedfire4/expand3x3/kernel*)
_class
loc:@fire4/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedfire4/expand3x3/bias*'
_class
loc:@fire4/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedfire5/squeeze1x1/kernel**
_class 
loc:@fire5/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitializedfire5/squeeze1x1/bias*
dtype0*
_output_shapes
: *(
_class
loc:@fire5/squeeze1x1/bias

IsVariableInitialized_22IsVariableInitializedfire5/expand1x1/kernel*)
_class
loc:@fire5/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializedfire5/expand1x1/bias*
dtype0*
_output_shapes
: *'
_class
loc:@fire5/expand1x1/bias

IsVariableInitialized_24IsVariableInitializedfire5/expand3x3/kernel*
dtype0*
_output_shapes
: *)
_class
loc:@fire5/expand3x3/kernel

IsVariableInitialized_25IsVariableInitializedfire5/expand3x3/bias*'
_class
loc:@fire5/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_26IsVariableInitializedfire6/squeeze1x1/kernel**
_class 
loc:@fire6/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_27IsVariableInitializedfire6/squeeze1x1/bias*(
_class
loc:@fire6/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_28IsVariableInitializedfire6/expand1x1/kernel*)
_class
loc:@fire6/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_29IsVariableInitializedfire6/expand1x1/bias*'
_class
loc:@fire6/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_30IsVariableInitializedfire6/expand3x3/kernel*)
_class
loc:@fire6/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_31IsVariableInitializedfire6/expand3x3/bias*'
_class
loc:@fire6/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_32IsVariableInitializedfire7/squeeze1x1/kernel**
_class 
loc:@fire7/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_33IsVariableInitializedfire7/squeeze1x1/bias*
_output_shapes
: *(
_class
loc:@fire7/squeeze1x1/bias*
dtype0

IsVariableInitialized_34IsVariableInitializedfire7/expand1x1/kernel*)
_class
loc:@fire7/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_35IsVariableInitializedfire7/expand1x1/bias*'
_class
loc:@fire7/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_36IsVariableInitializedfire7/expand3x3/kernel*)
_class
loc:@fire7/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_37IsVariableInitializedfire7/expand3x3/bias*'
_class
loc:@fire7/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_38IsVariableInitializedfire8/squeeze1x1/kernel**
_class 
loc:@fire8/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_39IsVariableInitializedfire8/squeeze1x1/bias*
_output_shapes
: *(
_class
loc:@fire8/squeeze1x1/bias*
dtype0

IsVariableInitialized_40IsVariableInitializedfire8/expand1x1/kernel*)
_class
loc:@fire8/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_41IsVariableInitializedfire8/expand1x1/bias*
dtype0*
_output_shapes
: *'
_class
loc:@fire8/expand1x1/bias

IsVariableInitialized_42IsVariableInitializedfire8/expand3x3/kernel*
dtype0*
_output_shapes
: *)
_class
loc:@fire8/expand3x3/kernel

IsVariableInitialized_43IsVariableInitializedfire8/expand3x3/bias*
_output_shapes
: *'
_class
loc:@fire8/expand3x3/bias*
dtype0

IsVariableInitialized_44IsVariableInitializedfire9/squeeze1x1/kernel**
_class 
loc:@fire9/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_45IsVariableInitializedfire9/squeeze1x1/bias*(
_class
loc:@fire9/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_46IsVariableInitializedfire9/expand1x1/kernel*)
_class
loc:@fire9/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_47IsVariableInitializedfire9/expand1x1/bias*
dtype0*
_output_shapes
: *'
_class
loc:@fire9/expand1x1/bias

IsVariableInitialized_48IsVariableInitializedfire9/expand3x3/kernel*)
_class
loc:@fire9/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_49IsVariableInitializedfire9/expand3x3/bias*'
_class
loc:@fire9/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_50IsVariableInitializedconv10/kernel* 
_class
loc:@conv10/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_51IsVariableInitializedconv10/bias*
_class
loc:@conv10/bias*
dtype0*
_output_shapes
: 
Т
initNoOp^conv1/bias/Assign^conv1/kernel/Assign^conv10/bias/Assign^conv10/kernel/Assign^fire2/expand1x1/bias/Assign^fire2/expand1x1/kernel/Assign^fire2/expand3x3/bias/Assign^fire2/expand3x3/kernel/Assign^fire2/squeeze1x1/bias/Assign^fire2/squeeze1x1/kernel/Assign^fire3/expand1x1/bias/Assign^fire3/expand1x1/kernel/Assign^fire3/expand3x3/bias/Assign^fire3/expand3x3/kernel/Assign^fire3/squeeze1x1/bias/Assign^fire3/squeeze1x1/kernel/Assign^fire4/expand1x1/bias/Assign^fire4/expand1x1/kernel/Assign^fire4/expand3x3/bias/Assign^fire4/expand3x3/kernel/Assign^fire4/squeeze1x1/bias/Assign^fire4/squeeze1x1/kernel/Assign^fire5/expand1x1/bias/Assign^fire5/expand1x1/kernel/Assign^fire5/expand3x3/bias/Assign^fire5/expand3x3/kernel/Assign^fire5/squeeze1x1/bias/Assign^fire5/squeeze1x1/kernel/Assign^fire6/expand1x1/bias/Assign^fire6/expand1x1/kernel/Assign^fire6/expand3x3/bias/Assign^fire6/expand3x3/kernel/Assign^fire6/squeeze1x1/bias/Assign^fire6/squeeze1x1/kernel/Assign^fire7/expand1x1/bias/Assign^fire7/expand1x1/kernel/Assign^fire7/expand3x3/bias/Assign^fire7/expand3x3/kernel/Assign^fire7/squeeze1x1/bias/Assign^fire7/squeeze1x1/kernel/Assign^fire8/expand1x1/bias/Assign^fire8/expand1x1/kernel/Assign^fire8/expand3x3/bias/Assign^fire8/expand3x3/kernel/Assign^fire8/squeeze1x1/bias/Assign^fire8/squeeze1x1/kernel/Assign^fire9/expand1x1/bias/Assign^fire9/expand1x1/kernel/Assign^fire9/expand3x3/bias/Assign^fire9/expand3x3/kernel/Assign^fire9/squeeze1x1/bias/Assign^fire9/squeeze1x1/kernel/Assign
v
conv10_1/random_uniform/shapeConst*%
valueB"         
   *
dtype0*
_output_shapes
:
`
conv10_1/random_uniform/minConst*
valueB
 *лН*
dtype0*
_output_shapes
: 
`
conv10_1/random_uniform/maxConst*
valueB
 *л=*
dtype0*
_output_shapes
: 
Г
%conv10_1/random_uniform/RandomUniformRandomUniformconv10_1/random_uniform/shape*'
_output_shapes
:
*
seed2НїЧ*
seedБџх)*
T0*
dtype0
}
conv10_1/random_uniform/subSubconv10_1/random_uniform/maxconv10_1/random_uniform/min*
T0*
_output_shapes
: 

conv10_1/random_uniform/mulMul%conv10_1/random_uniform/RandomUniformconv10_1/random_uniform/sub*
T0*'
_output_shapes
:


conv10_1/random_uniformAddconv10_1/random_uniform/mulconv10_1/random_uniform/min*'
_output_shapes
:
*
T0

conv10_1/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:
*
	container *
shape:

Щ
conv10_1/kernel/AssignAssignconv10_1/kernelconv10_1/random_uniform*"
_class
loc:@conv10_1/kernel*
validate_shape(*'
_output_shapes
:
*
use_locking(*
T0

conv10_1/kernel/readIdentityconv10_1/kernel*
T0*"
_class
loc:@conv10_1/kernel*'
_output_shapes
:

[
conv10_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

y
conv10_1/bias
VariableV2*
dtype0*
_output_shapes
:
*
	container *
shape:
*
shared_name 
­
conv10_1/bias/AssignAssignconv10_1/biasconv10_1/Const*
use_locking(*
T0* 
_class
loc:@conv10_1/bias*
validate_shape(*
_output_shapes
:

t
conv10_1/bias/readIdentityconv10_1/bias*
_output_shapes
:
*
T0* 
_class
loc:@conv10_1/bias
s
"conv10_1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
я
conv10_1/convolutionConv2Ddrop9/cond/Mergeconv10_1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ
*
	dilations
*
T0

conv10_1/BiasAddBiasAddconv10_1/convolutionconv10_1/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ
*
T0
f
relu_conv10_1/ReluReluconv10_1/BiasAdd*/
_output_shapes
:џџџџџџџџџ
*
T0

1global_average_pooling2d_2/Mean/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Н
global_average_pooling2d_2/MeanMeanrelu_conv10_1/Relu1global_average_pooling2d_2/Mean/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ
*
	keep_dims( *

Tidx0
l
loss_1/SoftmaxSoftmaxglobal_average_pooling2d_2/Mean*
T0*'
_output_shapes
:џџџџџџџџџ

^
SGD/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
r
SGD/iterations
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
К
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*
use_locking(*
T0	*!
_class
loc:@SGD/iterations*
validate_shape(*
_output_shapes
: 
s
SGD/iterations/readIdentitySGD/iterations*
T0	*!
_class
loc:@SGD/iterations*
_output_shapes
: 
Y
SGD/lr/initial_valueConst*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
j
SGD/lr
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
T0*
_class
loc:@SGD/lr*
validate_shape(*
_output_shapes
: *
use_locking(
[
SGD/lr/readIdentitySGD/lr*
T0*
_class
loc:@SGD/lr*
_output_shapes
: 
_
SGD/momentum/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
SGD/momentum
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
В
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@SGD/momentum
m
SGD/momentum/readIdentitySGD/momentum*
T0*
_class
loc:@SGD/momentum*
_output_shapes
: 
\
SGD/decay/initial_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
m
	SGD/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
І
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
_class
loc:@SGD/decay*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
d
SGD/decay/readIdentity	SGD/decay*
_output_shapes
: *
T0*
_class
loc:@SGD/decay

loss_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
n
loss_sample_weightsPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
q
&loss_2/loss_loss/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ђ
loss_2/loss_loss/SumSumloss_1/Softmax&loss_2/loss_loss/Sum/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*

Tidx0
{
loss_2/loss_loss/truedivRealDivloss_1/Softmaxloss_2/loss_loss/Sum*
T0*'
_output_shapes
:џџџџџџџџџ

[
loss_2/loss_loss/ConstConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
[
loss_2/loss_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
loss_2/loss_loss/subSubloss_2/loss_loss/sub/xloss_2/loss_loss/Const*
T0*
_output_shapes
: 

&loss_2/loss_loss/clip_by_value/MinimumMinimumloss_2/loss_loss/truedivloss_2/loss_loss/sub*
T0*'
_output_shapes
:џџџџџџџџџ


loss_2/loss_loss/clip_by_valueMaximum&loss_2/loss_loss/clip_by_value/Minimumloss_2/loss_loss/Const*
T0*'
_output_shapes
:џџџџџџџџџ

m
loss_2/loss_loss/LogLogloss_2/loss_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ

p
loss_2/loss_loss/mulMulloss_targetloss_2/loss_loss/Log*
T0*'
_output_shapes
:џџџџџџџџџ

s
(loss_2/loss_loss/Sum_1/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ј
loss_2/loss_loss/Sum_1Sumloss_2/loss_loss/mul(loss_2/loss_loss/Sum_1/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
a
loss_2/loss_loss/NegNegloss_2/loss_loss/Sum_1*
T0*#
_output_shapes
:џџџџџџџџџ
j
'loss_2/loss_loss/Mean/reduction_indicesConst*
_output_shapes
: *
valueB *
dtype0
Ї
loss_2/loss_loss/MeanMeanloss_2/loss_loss/Neg'loss_2/loss_loss/Mean/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
w
loss_2/loss_loss/mul_1Mulloss_2/loss_loss/Meanloss_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0
`
loss_2/loss_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss_2/loss_loss/NotEqualNotEqualloss_sample_weightsloss_2/loss_loss/NotEqual/y*#
_output_shapes
:џџџџџџџџџ*
T0

loss_2/loss_loss/CastCastloss_2/loss_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
b
loss_2/loss_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss_2/loss_loss/Mean_1Meanloss_2/loss_loss/Castloss_2/loss_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss_2/loss_loss/truediv_1RealDivloss_2/loss_loss/mul_1loss_2/loss_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
b
loss_2/loss_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss_2/loss_loss/Mean_2Meanloss_2/loss_loss/truediv_1loss_2/loss_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Q
loss_2/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y

loss_2/mulMulloss_2/mul/xloss_2/loss_loss/Mean_2*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxloss_targetmetrics/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxloss_1/Softmaxmetrics/acc/ArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*#
_output_shapes
:џџџџџџџџџ*
T0	
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
~
training/SGD/gradients/ShapeConst*
valueB *
_class
loc:@loss_2/mul*
dtype0*
_output_shapes
: 

 training/SGD/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss_2/mul*
dtype0*
_output_shapes
: 
Е
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss_2/mul
Ї
*training/SGD/gradients/loss_2/mul_grad/MulMultraining/SGD/gradients/Fillloss_2/loss_loss/Mean_2*
T0*
_class
loc:@loss_2/mul*
_output_shapes
: 

,training/SGD/gradients/loss_2/mul_grad/Mul_1Multraining/SGD/gradients/Fillloss_2/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss_2/mul
З
Atraining/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Reshape/shapeConst*
valueB:**
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
:

;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ReshapeReshape,training/SGD/gradients/loss_2/mul_grad/Mul_1Atraining/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
:
П
9training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ShapeShapeloss_2/loss_loss/truediv_1*
T0*
out_type0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
:
Є
8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/TileTile;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Reshape9training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape*

Tmultiples0*
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
С
;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_1Shapeloss_2/loss_loss/truediv_1*
T0*
out_type0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
:
Њ
;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB **
_class 
loc:@loss_2/loss_loss/Mean_2
Џ
9training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: **
_class 
loc:@loss_2/loss_loss/Mean_2
Ђ
8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ProdProd;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_19training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss_2/loss_loss/Mean_2
Б
;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Const_1Const*
valueB: **
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
:
І
:training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Prod_1Prod;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_2;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Const_1*
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ћ
=training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Maximum/yConst*
value	B :**
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
: 

;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/MaximumMaximum:training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Prod_1=training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Maximum/y*
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
: 

<training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/floordivFloorDiv8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Prod;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Maximum*
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
: 
ъ
8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/CastCast<training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0**
_class 
loc:@loss_2/loss_loss/Mean_2*
Truncate( 

;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/truedivRealDiv8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Tile8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Cast*
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
С
<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/ShapeShapeloss_2/loss_loss/mul_1*
T0*
out_type0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*
_output_shapes
:
А
>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape_1Const*
valueB *-
_class#
!loc:@loss_2/loss_loss/truediv_1*
dtype0*
_output_shapes
: 
Я
Ltraining/SGD/gradients/loss_2/loss_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ќ
>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDivRealDiv;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/truedivloss_2/loss_loss/Mean_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
О
:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/SumSum>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDivLtraining/SGD/gradients/loss_2/loss_loss/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*
_output_shapes
:
Ў
>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/ReshapeReshape:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Sum<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
Ж
:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/NegNegloss_2/loss_loss/mul_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
§
@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_1RealDiv:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Negloss_2/loss_loss/Mean_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ

@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_2RealDiv@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_1loss_2/loss_loss/Mean_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ

:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/mulMul;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/truediv@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_2*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
О
<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Sum_1Sum:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/mulNtraining/SGD/gradients/loss_2/loss_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ї
@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Reshape_1Reshape<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Sum_1>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*-
_class#
!loc:@loss_2/loss_loss/truediv_1
И
8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/ShapeShapeloss_2/loss_loss/Mean*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@loss_2/loss_loss/mul_1
И
:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape_1Shapeloss_sample_weights*
T0*
out_type0*)
_class
loc:@loss_2/loss_loss/mul_1*
_output_shapes
:
П
Htraining/SGD/gradients/loss_2/loss_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape_1*)
_class
loc:@loss_2/loss_loss/mul_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ы
6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/MulMul>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Reshapeloss_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@loss_2/loss_loss/mul_1
Њ
6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/SumSum6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/MulHtraining/SGD/gradients/loss_2/loss_loss/mul_1_grad/BroadcastGradientArgs*)
_class
loc:@loss_2/loss_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/ReshapeReshape6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Sum8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*)
_class
loc:@loss_2/loss_loss/mul_1
я
8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Mul_1Mulloss_2/loss_loss/Mean>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Reshape*#
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@loss_2/loss_loss/mul_1
А
8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Sum_1Sum8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Mul_1Jtraining/SGD/gradients/loss_2/loss_loss/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss_2/loss_loss/mul_1*
_output_shapes
:
Є
<training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Reshape_1Reshape8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Sum_1:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape_1*
T0*
Tshape0*)
_class
loc:@loss_2/loss_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
Е
7training/SGD/gradients/loss_2/loss_loss/Mean_grad/ShapeShapeloss_2/loss_loss/Neg*
_output_shapes
:*
T0*
out_type0*(
_class
loc:@loss_2/loss_loss/Mean
Ђ
6training/SGD/gradients/loss_2/loss_loss/Mean_grad/SizeConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 
ъ
5training/SGD/gradients/loss_2/loss_loss/Mean_grad/addAdd'loss_2/loss_loss/Mean/reduction_indices6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Size*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: 
§
5training/SGD/gradients/loss_2/loss_loss/Mean_grad/modFloorMod5training/SGD/gradients/loss_2/loss_loss/Mean_grad/add6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Size*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: 
­
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_1Const*
valueB: *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
:
Љ
=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/startConst*
value	B : *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 
Љ
=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/deltaConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 
Ш
7training/SGD/gradients/loss_2/loss_loss/Mean_grad/rangeRange=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/start6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Size=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/delta*

Tidx0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
Ј
<training/SGD/gradients/loss_2/loss_loss/Mean_grad/Fill/valueConst*
_output_shapes
: *
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0

6training/SGD/gradients/loss_2/loss_loss/Mean_grad/FillFill9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_1<training/SGD/gradients/loss_2/loss_loss/Mean_grad/Fill/value*
T0*

index_type0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: 

?training/SGD/gradients/loss_2/loss_loss/Mean_grad/DynamicStitchDynamicStitch7training/SGD/gradients/loss_2/loss_loss/Mean_grad/range5training/SGD/gradients/loss_2/loss_loss/Mean_grad/mod7training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Fill*
N*
_output_shapes
:*
T0*(
_class
loc:@loss_2/loss_loss/Mean
Ї
;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum/yConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 

9training/SGD/gradients/loss_2/loss_loss/Mean_grad/MaximumMaximum?training/SGD/gradients/loss_2/loss_loss/Mean_grad/DynamicStitch;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum/y*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:

:training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordivFloorDiv7training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
Ї
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/ReshapeReshape:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Reshape?training/SGD/gradients/loss_2/loss_loss/Mean_grad/DynamicStitch*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*(
_class
loc:@loss_2/loss_loss/Mean

6training/SGD/gradients/loss_2/loss_loss/Mean_grad/TileTile9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Reshape:training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordiv*

Tmultiples0*
T0*(
_class
loc:@loss_2/loss_loss/Mean*#
_output_shapes
:џџџџџџџџџ
З
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_2Shapeloss_2/loss_loss/Neg*
T0*
out_type0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
И
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_3Shapeloss_2/loss_loss/Mean*
T0*
out_type0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
Ћ
7training/SGD/gradients/loss_2/loss_loss/Mean_grad/ConstConst*
valueB: *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
:

6training/SGD/gradients/loss_2/loss_loss/Mean_grad/ProdProd9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_27training/SGD/gradients/loss_2/loss_loss/Mean_grad/Const*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
­
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Const_1Const*
valueB: *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
:

8training/SGD/gradients/loss_2/loss_loss/Mean_grad/Prod_1Prod9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_39training/SGD/gradients/loss_2/loss_loss/Mean_grad/Const_1*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Љ
=training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1/yConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 

;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1Maximum8training/SGD/gradients/loss_2/loss_loss/Mean_grad/Prod_1=training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1/y*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: 

<training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordiv_1FloorDiv6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Prod;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: *
T0
ц
6training/SGD/gradients/loss_2/loss_loss/Mean_grad/CastCast<training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordiv_1*(
_class
loc:@loss_2/loss_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

9training/SGD/gradients/loss_2/loss_loss/Mean_grad/truedivRealDiv6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Tile6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Cast*
T0*(
_class
loc:@loss_2/loss_loss/Mean*#
_output_shapes
:џџџџџџџџџ
Э
4training/SGD/gradients/loss_2/loss_loss/Neg_grad/NegNeg9training/SGD/gradients/loss_2/loss_loss/Mean_grad/truediv*
T0*'
_class
loc:@loss_2/loss_loss/Neg*#
_output_shapes
:џџџџџџџџџ
З
8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/ShapeShapeloss_2/loss_loss/mul*
T0*
out_type0*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
:
Є
7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/SizeConst*
_output_shapes
: *
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0
ь
6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/addAdd(loss_2/loss_loss/Sum_1/reduction_indices7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss_2/loss_loss/Sum_1
џ
6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/modFloorMod6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/add7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss_2/loss_loss/Sum_1
Ј
:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape_1Const*
valueB *)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 
Ћ
>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *)
_class
loc:@loss_2/loss_loss/Sum_1
Ћ
>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/deltaConst*
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 
Э
8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/rangeRange>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/start7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Size>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/delta*

Tidx0*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
:
Њ
=training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Fill/valueConst*
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 

7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/FillFill:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape_1=training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Fill/value*
T0*

index_type0*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
: 

@training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/DynamicStitchDynamicStitch8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/mod8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Fill*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1*
N*
_output_shapes
:
Љ
<training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Maximum/yConst*
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 

:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/MaximumMaximum@training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/DynamicStitch<training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Maximum/y*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
:*
T0

;training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/floordivFloorDiv8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Maximum*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
:*
T0
Б
:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/ReshapeReshape4training/SGD/gradients/loss_2/loss_loss/Neg_grad/Neg@training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/DynamicStitch*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*
Tshape0*)
_class
loc:@loss_2/loss_loss/Sum_1
Ї
7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/TileTile:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Reshape;training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1*'
_output_shapes
:џџџџџџџџџ

Њ
6training/SGD/gradients/loss_2/loss_loss/mul_grad/ShapeShapeloss_target*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@loss_2/loss_loss/mul
Е
8training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape_1Shapeloss_2/loss_loss/Log*
T0*
out_type0*'
_class
loc:@loss_2/loss_loss/mul*
_output_shapes
:
З
Ftraining/SGD/gradients/loss_2/loss_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape8training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape_1*
T0*'
_class
loc:@loss_2/loss_loss/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
х
4training/SGD/gradients/loss_2/loss_loss/mul_grad/MulMul7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Tileloss_2/loss_loss/Log*
T0*'
_class
loc:@loss_2/loss_loss/mul*'
_output_shapes
:џџџџџџџџџ

Ђ
4training/SGD/gradients/loss_2/loss_loss/mul_grad/SumSum4training/SGD/gradients/loss_2/loss_loss/mul_grad/MulFtraining/SGD/gradients/loss_2/loss_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*'
_class
loc:@loss_2/loss_loss/mul*
_output_shapes
:
Ѓ
8training/SGD/gradients/loss_2/loss_loss/mul_grad/ReshapeReshape4training/SGD/gradients/loss_2/loss_loss/mul_grad/Sum6training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*
Tshape0*'
_class
loc:@loss_2/loss_loss/mul
о
6training/SGD/gradients/loss_2/loss_loss/mul_grad/Mul_1Mulloss_target7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Tile*'
_class
loc:@loss_2/loss_loss/mul*'
_output_shapes
:џџџџџџџџџ
*
T0
Ј
6training/SGD/gradients/loss_2/loss_loss/mul_grad/Sum_1Sum6training/SGD/gradients/loss_2/loss_loss/mul_grad/Mul_1Htraining/SGD/gradients/loss_2/loss_loss/mul_grad/BroadcastGradientArgs:1*'
_class
loc:@loss_2/loss_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
 
:training/SGD/gradients/loss_2/loss_loss/mul_grad/Reshape_1Reshape6training/SGD/gradients/loss_2/loss_loss/mul_grad/Sum_18training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape_1*'
_output_shapes
:џџџџџџџџџ
*
T0*
Tshape0*'
_class
loc:@loss_2/loss_loss/mul

;training/SGD/gradients/loss_2/loss_loss/Log_grad/Reciprocal
Reciprocalloss_2/loss_loss/clip_by_value;^training/SGD/gradients/loss_2/loss_loss/mul_grad/Reshape_1*
T0*'
_class
loc:@loss_2/loss_loss/Log*'
_output_shapes
:џџџџџџџџџ


4training/SGD/gradients/loss_2/loss_loss/Log_grad/mulMul:training/SGD/gradients/loss_2/loss_loss/mul_grad/Reshape_1;training/SGD/gradients/loss_2/loss_loss/Log_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ
*
T0*'
_class
loc:@loss_2/loss_loss/Log
й
@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ShapeShape&loss_2/loss_loss/clip_by_value/Minimum*
T0*
out_type0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
:
И
Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_1Const*
valueB *1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
dtype0*
_output_shapes
: 
щ
Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_2Shape4training/SGD/gradients/loss_2/loss_loss/Log_grad/mul*
T0*
out_type0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
:
О
Ftraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
dtype0
Ы
@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zerosFillBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_2Ftraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros/Const*

index_type0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ
*
T0
ќ
Gtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/GreaterEqualGreaterEqual&loss_2/loss_loss/clip_by_value/Minimumloss_2/loss_loss/Const*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ

п
Ptraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ShapeBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_1*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ё
Atraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/SelectSelectGtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/GreaterEqual4training/SGD/gradients/loss_2/loss_loss/Log_grad/mul@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ

ѓ
Ctraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Select_1SelectGtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/GreaterEqual@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros4training/SGD/gradients/loss_2/loss_loss/Log_grad/mul*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ
*
T0
Э
>training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/SumSumAtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/SelectPtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
:
Т
Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ReshapeReshape>training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Sum@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape*
T0*
Tshape0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ

г
@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Sum_1SumCtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Select_1Rtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
З
Dtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Reshape_1Reshape@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Sum_1Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
: 
л
Htraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/ShapeShapeloss_2/loss_loss/truediv*
_output_shapes
:*
T0*
out_type0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum
Ш
Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_2ShapeBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Reshape*
T0*
out_type0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
:
Ю
Ntraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ы
Htraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zerosFillJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_2Ntraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ

і
Ltraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss_2/loss_loss/truedivloss_2/loss_loss/sub*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ

џ
Xtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/ShapeJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_1*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

Itraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SelectSelectLtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/LessEqualBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ReshapeHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zeros*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ


Ktraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Select_1SelectLtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/LessEqualHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zerosBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Reshape*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ
*
T0
э
Ftraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SumSumItraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SelectXtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
т
Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/ReshapeReshapeFtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SumHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:џџџџџџџџџ
*
T0*
Tshape0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum
ѓ
Htraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Sum_1SumKtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Select_1Ztraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
з
Ltraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Sum_1Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
: 
Е
:training/SGD/gradients/loss_2/loss_loss/truediv_grad/ShapeShapeloss_1/Softmax*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss_2/loss_loss/truediv
Н
<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape_1Shapeloss_2/loss_loss/Sum*
T0*
out_type0*+
_class!
loc:@loss_2/loss_loss/truediv*
_output_shapes
:
Ч
Jtraining/SGD/gradients/loss_2/loss_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*+
_class!
loc:@loss_2/loss_loss/truediv

<training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDivRealDivJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Reshapeloss_2/loss_loss/Sum*'
_output_shapes
:џџџџџџџџџ
*
T0*+
_class!
loc:@loss_2/loss_loss/truediv
Ж
8training/SGD/gradients/loss_2/loss_loss/truediv_grad/SumSum<training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDivJtraining/SGD/gradients/loss_2/loss_loss/truediv_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
Њ
<training/SGD/gradients/loss_2/loss_loss/truediv_grad/ReshapeReshape8training/SGD/gradients/loss_2/loss_loss/truediv_grad/Sum:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape*
Tshape0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ
*
T0
Ў
8training/SGD/gradients/loss_2/loss_loss/truediv_grad/NegNegloss_1/Softmax*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ

ј
>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_1RealDiv8training/SGD/gradients/loss_2/loss_loss/truediv_grad/Negloss_2/loss_loss/Sum*'
_output_shapes
:џџџџџџџџџ
*
T0*+
_class!
loc:@loss_2/loss_loss/truediv
ў
>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_2RealDiv>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_1loss_2/loss_loss/Sum*'
_output_shapes
:џџџџџџџџџ
*
T0*+
_class!
loc:@loss_2/loss_loss/truediv
Њ
8training/SGD/gradients/loss_2/loss_loss/truediv_grad/mulMulJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Reshape>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_2*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ

Ж
:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Sum_1Sum8training/SGD/gradients/loss_2/loss_loss/truediv_grad/mulLtraining/SGD/gradients/loss_2/loss_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss_2/loss_loss/truediv*
_output_shapes
:
А
>training/SGD/gradients/loss_2/loss_loss/truediv_grad/Reshape_1Reshape:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Sum_1<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ
­
6training/SGD/gradients/loss_2/loss_loss/Sum_grad/ShapeShapeloss_1/Softmax*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@loss_2/loss_loss/Sum
 
5training/SGD/gradients/loss_2/loss_loss/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*'
_class
loc:@loss_2/loss_loss/Sum
ф
4training/SGD/gradients/loss_2/loss_loss/Sum_grad/addAdd&loss_2/loss_loss/Sum/reduction_indices5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Size*
T0*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
: 
ї
4training/SGD/gradients/loss_2/loss_loss/Sum_grad/modFloorMod4training/SGD/gradients/loss_2/loss_loss/Sum_grad/add5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Size*
T0*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
: 
Є
8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape_1Const*
valueB *'
_class
loc:@loss_2/loss_loss/Sum*
dtype0*
_output_shapes
: 
Ї
<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/startConst*
_output_shapes
: *
value	B : *'
_class
loc:@loss_2/loss_loss/Sum*
dtype0
Ї
<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/deltaConst*
_output_shapes
: *
value	B :*'
_class
loc:@loss_2/loss_loss/Sum*
dtype0
У
6training/SGD/gradients/loss_2/loss_loss/Sum_grad/rangeRange<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/start5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Size<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/delta*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
:*

Tidx0
І
;training/SGD/gradients/loss_2/loss_loss/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*'
_class
loc:@loss_2/loss_loss/Sum*
dtype0

5training/SGD/gradients/loss_2/loss_loss/Sum_grad/FillFill8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape_1;training/SGD/gradients/loss_2/loss_loss/Sum_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*'
_class
loc:@loss_2/loss_loss/Sum

>training/SGD/gradients/loss_2/loss_loss/Sum_grad/DynamicStitchDynamicStitch6training/SGD/gradients/loss_2/loss_loss/Sum_grad/range4training/SGD/gradients/loss_2/loss_loss/Sum_grad/mod6training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Fill*'
_class
loc:@loss_2/loss_loss/Sum*
N*
_output_shapes
:*
T0
Ѕ
:training/SGD/gradients/loss_2/loss_loss/Sum_grad/Maximum/yConst*
value	B :*'
_class
loc:@loss_2/loss_loss/Sum*
dtype0*
_output_shapes
: 

8training/SGD/gradients/loss_2/loss_loss/Sum_grad/MaximumMaximum>training/SGD/gradients/loss_2/loss_loss/Sum_grad/DynamicStitch:training/SGD/gradients/loss_2/loss_loss/Sum_grad/Maximum/y*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
:*
T0

9training/SGD/gradients/loss_2/loss_loss/Sum_grad/floordivFloorDiv6training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Maximum*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
:*
T0
Е
8training/SGD/gradients/loss_2/loss_loss/Sum_grad/ReshapeReshape>training/SGD/gradients/loss_2/loss_loss/truediv_grad/Reshape_1>training/SGD/gradients/loss_2/loss_loss/Sum_grad/DynamicStitch*
T0*
Tshape0*'
_class
loc:@loss_2/loss_loss/Sum*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

5training/SGD/gradients/loss_2/loss_loss/Sum_grad/TileTile8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Reshape9training/SGD/gradients/loss_2/loss_loss/Sum_grad/floordiv*

Tmultiples0*
T0*'
_class
loc:@loss_2/loss_loss/Sum*'
_output_shapes
:џџџџџџџџџ


training/SGD/gradients/AddNAddN<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Reshape5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Tile*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*
N*'
_output_shapes
:џџџџџџџџџ

З
.training/SGD/gradients/loss_1/Softmax_grad/mulMultraining/SGD/gradients/AddNloss_1/Softmax*
T0*!
_class
loc:@loss_1/Softmax*'
_output_shapes
:џџџџџџџџџ

Ў
@training/SGD/gradients/loss_1/Softmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*!
_class
loc:@loss_1/Softmax*
dtype0*
_output_shapes
: 

.training/SGD/gradients/loss_1/Softmax_grad/SumSum.training/SGD/gradients/loss_1/Softmax_grad/mul@training/SGD/gradients/loss_1/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*!
_class
loc:@loss_1/Softmax*'
_output_shapes
:џџџџџџџџџ
з
.training/SGD/gradients/loss_1/Softmax_grad/subSubtraining/SGD/gradients/AddN.training/SGD/gradients/loss_1/Softmax_grad/Sum*
T0*!
_class
loc:@loss_1/Softmax*'
_output_shapes
:џџџџџџџџџ

Ь
0training/SGD/gradients/loss_1/Softmax_grad/mul_1Mul.training/SGD/gradients/loss_1/Softmax_grad/subloss_1/Softmax*'
_output_shapes
:џџџџџџџџџ
*
T0*!
_class
loc:@loss_1/Softmax
Ч
Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ShapeShaperelu_conv10_1/Relu*
out_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:*
T0
Ж
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean

?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/addAdd1global_average_pooling2d_2/Mean/reduction_indices@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Size*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
Ї
?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/modFloorMod?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/add@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Size*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:*
T0
С
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*2
_class(
&$loc:@global_average_pooling2d_2/Mean
Н
Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/startConst*
value	B : *2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
Н
Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean
њ
Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/rangeRangeGtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/start@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/SizeGtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/delta*

Tidx0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
М
Ftraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Fill/valueConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
Р
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/FillFillCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_1Ftraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
Х
Itraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/DynamicStitchDynamicStitchAtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/modAtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Fill*
_output_shapes
:*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
N
Л
Etraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
Й
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/MaximumMaximumItraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/DynamicStitchEtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum/y*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
Б
Dtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordivFloorDivAtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ShapeCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
т
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ReshapeReshape0training/SGD/gradients/loss_1/Softmax_grad/mul_1Itraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/DynamicStitch*
T0*
Tshape0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
ю
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/TileTileCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ReshapeDtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordiv*

Tmultiples0*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Щ
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_2Shaperelu_conv10_1/Relu*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
ж
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_3Shapeglobal_average_pooling2d_2/Mean*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
П
Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ConstConst*
valueB: *2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
:
Т
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/ProdProdCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_2Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Const*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
С
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Const_1Const*
valueB: *2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
:
Ц
Btraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Prod_1ProdCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_3Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
Н
Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1/yConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
В
Etraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1MaximumBtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Prod_1Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
А
Ftraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordiv_1FloorDiv@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/ProdEtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
: 

@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/CastCastFtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordiv_1*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
Р
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/truedivRealDiv@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Tile@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Cast*2
_class(
&$loc:@global_average_pooling2d_2/Mean*/
_output_shapes
:џџџџџџџџџ
*
T0
§
7training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGradReluGradCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/truedivrelu_conv10_1/Relu*
T0*%
_class
loc:@relu_conv10_1/Relu*/
_output_shapes
:џџџџџџџџџ

с
8training/SGD/gradients/conv10_1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv10_1/BiasAdd*
data_formatNHWC*
_output_shapes
:

ж
7training/SGD/gradients/conv10_1/convolution_grad/ShapeNShapeNdrop9/cond/Mergeconv10_1/kernel/read*
T0*
out_type0*'
_class
loc:@conv10_1/convolution*
N* 
_output_shapes
::
Ж
Dtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput7training/SGD/gradients/conv10_1/convolution_grad/ShapeNconv10_1/kernel/read7training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGrad*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*'
_class
loc:@conv10_1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
­
Etraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterdrop9/cond/Merge9training/SGD/gradients/conv10_1/convolution_grad/ShapeN:17training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@conv10_1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:
*
	dilations


6training/SGD/gradients/drop9/cond/Merge_grad/cond_gradSwitchDtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropInputdrop9/cond/pred_id*'
_class
loc:@conv10_1/convolution*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ*
T0
Я
training/SGD/gradients/SwitchSwitchfire9/concat/concatdrop9/cond/pred_id*
T0*&
_class
loc:@fire9/concat/concat*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ
Џ
training/SGD/gradients/IdentityIdentitytraining/SGD/gradients/Switch:1*
T0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ
Ѕ
training/SGD/gradients/Shape_1Shapetraining/SGD/gradients/Switch:1*
T0*
out_type0*&
_class
loc:@fire9/concat/concat*
_output_shapes
:
Б
"training/SGD/gradients/zeros/ConstConst ^training/SGD/gradients/Identity*
valueB
 *    *&
_class
loc:@fire9/concat/concat*
dtype0*
_output_shapes
: 
н
training/SGD/gradients/zerosFilltraining/SGD/gradients/Shape_1"training/SGD/gradients/zeros/Const*0
_output_shapes
:џџџџџџџџџ*
T0*

index_type0*&
_class
loc:@fire9/concat/concat

9training/SGD/gradients/drop9/cond/Switch_1_grad/cond_gradMerge6training/SGD/gradients/drop9/cond/Merge_grad/cond_gradtraining/SGD/gradients/zeros*&
_class
loc:@fire9/concat/concat*
N*2
_output_shapes 
:џџџџџџџџџ: *
T0
Й
8training/SGD/gradients/drop9/cond/dropout/mul_grad/ShapeShapedrop9/cond/dropout/div*
T0*
out_type0*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:
Н
:training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape_1Shapedrop9/cond/dropout/Floor*
T0*
out_type0*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:
П
Htraining/SGD/gradients/drop9/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape:training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape_1*
T0*)
_class
loc:@drop9/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ї
6training/SGD/gradients/drop9/cond/dropout/mul_grad/MulMul8training/SGD/gradients/drop9/cond/Merge_grad/cond_grad:1drop9/cond/dropout/Floor*0
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@drop9/cond/dropout/mul
Њ
6training/SGD/gradients/drop9/cond/dropout/mul_grad/SumSum6training/SGD/gradients/drop9/cond/dropout/mul_grad/MulHtraining/SGD/gradients/drop9/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:
Ћ
:training/SGD/gradients/drop9/cond/dropout/mul_grad/ReshapeReshape6training/SGD/gradients/drop9/cond/dropout/mul_grad/Sum8training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape*0
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*)
_class
loc:@drop9/cond/dropout/mul
ї
8training/SGD/gradients/drop9/cond/dropout/mul_grad/Mul_1Muldrop9/cond/dropout/div8training/SGD/gradients/drop9/cond/Merge_grad/cond_grad:1*
T0*)
_class
loc:@drop9/cond/dropout/mul*0
_output_shapes
:џџџџџџџџџ
А
8training/SGD/gradients/drop9/cond/dropout/mul_grad/Sum_1Sum8training/SGD/gradients/drop9/cond/dropout/mul_grad/Mul_1Jtraining/SGD/gradients/drop9/cond/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:
Б
<training/SGD/gradients/drop9/cond/dropout/mul_grad/Reshape_1Reshape8training/SGD/gradients/drop9/cond/dropout/mul_grad/Sum_1:training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape_1*
Tshape0*)
_class
loc:@drop9/cond/dropout/mul*0
_output_shapes
:џџџџџџџџџ*
T0
Б
8training/SGD/gradients/drop9/cond/dropout/div_grad/ShapeShapedrop9/cond/mul*
T0*
out_type0*)
_class
loc:@drop9/cond/dropout/div*
_output_shapes
:
Ј
:training/SGD/gradients/drop9/cond/dropout/div_grad/Shape_1Const*
valueB *)
_class
loc:@drop9/cond/dropout/div*
dtype0*
_output_shapes
: 
П
Htraining/SGD/gradients/drop9/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs8training/SGD/gradients/drop9/cond/dropout/div_grad/Shape:training/SGD/gradients/drop9/cond/dropout/div_grad/Shape_1*
T0*)
_class
loc:@drop9/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

:training/SGD/gradients/drop9/cond/dropout/div_grad/RealDivRealDiv:training/SGD/gradients/drop9/cond/dropout/mul_grad/Reshapedrop9/cond/dropout/keep_prob*0
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@drop9/cond/dropout/div
Ў
6training/SGD/gradients/drop9/cond/dropout/div_grad/SumSum:training/SGD/gradients/drop9/cond/dropout/div_grad/RealDivHtraining/SGD/gradients/drop9/cond/dropout/div_grad/BroadcastGradientArgs*
T0*)
_class
loc:@drop9/cond/dropout/div*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ћ
:training/SGD/gradients/drop9/cond/dropout/div_grad/ReshapeReshape6training/SGD/gradients/drop9/cond/dropout/div_grad/Sum8training/SGD/gradients/drop9/cond/dropout/div_grad/Shape*
Tshape0*)
_class
loc:@drop9/cond/dropout/div*0
_output_shapes
:џџџџџџџџџ*
T0
Г
6training/SGD/gradients/drop9/cond/dropout/div_grad/NegNegdrop9/cond/mul*
T0*)
_class
loc:@drop9/cond/dropout/div*0
_output_shapes
:џџџџџџџџџ

<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_1RealDiv6training/SGD/gradients/drop9/cond/dropout/div_grad/Negdrop9/cond/dropout/keep_prob*0
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@drop9/cond/dropout/div

<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_2RealDiv<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_1drop9/cond/dropout/keep_prob*0
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@drop9/cond/dropout/div

6training/SGD/gradients/drop9/cond/dropout/div_grad/mulMul:training/SGD/gradients/drop9/cond/dropout/mul_grad/Reshape<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_2*
T0*)
_class
loc:@drop9/cond/dropout/div*0
_output_shapes
:џџџџџџџџџ
Ў
8training/SGD/gradients/drop9/cond/dropout/div_grad/Sum_1Sum6training/SGD/gradients/drop9/cond/dropout/div_grad/mulJtraining/SGD/gradients/drop9/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@drop9/cond/dropout/div

<training/SGD/gradients/drop9/cond/dropout/div_grad/Reshape_1Reshape8training/SGD/gradients/drop9/cond/dropout/div_grad/Sum_1:training/SGD/gradients/drop9/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*)
_class
loc:@drop9/cond/dropout/div*
_output_shapes
: 
Њ
0training/SGD/gradients/drop9/cond/mul_grad/ShapeShapedrop9/cond/mul/Switch:1*
_output_shapes
:*
T0*
out_type0*!
_class
loc:@drop9/cond/mul

2training/SGD/gradients/drop9/cond/mul_grad/Shape_1Const*
_output_shapes
: *
valueB *!
_class
loc:@drop9/cond/mul*
dtype0

@training/SGD/gradients/drop9/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs0training/SGD/gradients/drop9/cond/mul_grad/Shape2training/SGD/gradients/drop9/cond/mul_grad/Shape_1*
T0*!
_class
loc:@drop9/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
с
.training/SGD/gradients/drop9/cond/mul_grad/MulMul:training/SGD/gradients/drop9/cond/dropout/div_grad/Reshapedrop9/cond/mul/y*!
_class
loc:@drop9/cond/mul*0
_output_shapes
:џџџџџџџџџ*
T0

.training/SGD/gradients/drop9/cond/mul_grad/SumSum.training/SGD/gradients/drop9/cond/mul_grad/Mul@training/SGD/gradients/drop9/cond/mul_grad/BroadcastGradientArgs*!
_class
loc:@drop9/cond/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

2training/SGD/gradients/drop9/cond/mul_grad/ReshapeReshape.training/SGD/gradients/drop9/cond/mul_grad/Sum0training/SGD/gradients/drop9/cond/mul_grad/Shape*
T0*
Tshape0*!
_class
loc:@drop9/cond/mul*0
_output_shapes
:џџџџџџџџџ
ъ
0training/SGD/gradients/drop9/cond/mul_grad/Mul_1Muldrop9/cond/mul/Switch:1:training/SGD/gradients/drop9/cond/dropout/div_grad/Reshape*!
_class
loc:@drop9/cond/mul*0
_output_shapes
:џџџџџџџџџ*
T0

0training/SGD/gradients/drop9/cond/mul_grad/Sum_1Sum0training/SGD/gradients/drop9/cond/mul_grad/Mul_1Btraining/SGD/gradients/drop9/cond/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*!
_class
loc:@drop9/cond/mul*
_output_shapes
:
ї
4training/SGD/gradients/drop9/cond/mul_grad/Reshape_1Reshape0training/SGD/gradients/drop9/cond/mul_grad/Sum_12training/SGD/gradients/drop9/cond/mul_grad/Shape_1*
T0*
Tshape0*!
_class
loc:@drop9/cond/mul*
_output_shapes
: 
б
training/SGD/gradients/Switch_1Switchfire9/concat/concatdrop9/cond/pred_id*
T0*&
_class
loc:@fire9/concat/concat*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ
Б
!training/SGD/gradients/Identity_1Identitytraining/SGD/gradients/Switch_1*0
_output_shapes
:џџџџџџџџџ*
T0*&
_class
loc:@fire9/concat/concat
Ѕ
training/SGD/gradients/Shape_2Shapetraining/SGD/gradients/Switch_1*
T0*
out_type0*&
_class
loc:@fire9/concat/concat*
_output_shapes
:
Е
$training/SGD/gradients/zeros_1/ConstConst"^training/SGD/gradients/Identity_1*
valueB
 *    *&
_class
loc:@fire9/concat/concat*
dtype0*
_output_shapes
: 
с
training/SGD/gradients/zeros_1Filltraining/SGD/gradients/Shape_2$training/SGD/gradients/zeros_1/Const*
T0*

index_type0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ

;training/SGD/gradients/drop9/cond/mul/Switch_grad/cond_gradMergetraining/SGD/gradients/zeros_12training/SGD/gradients/drop9/cond/mul_grad/Reshape*
N*2
_output_shapes 
:џџџџџџџџџ: *
T0*&
_class
loc:@fire9/concat/concat

training/SGD/gradients/AddN_1AddN9training/SGD/gradients/drop9/cond/Switch_1_grad/cond_grad;training/SGD/gradients/drop9/cond/mul/Switch_grad/cond_grad*
T0*&
_class
loc:@fire9/concat/concat*
N*0
_output_shapes
:џџџџџџџџџ

4training/SGD/gradients/fire9/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire9/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire9/concat/concat_grad/modFloorModfire9/concat/concat/axis4training/SGD/gradients/fire9/concat/concat_grad/Rank*&
_class
loc:@fire9/concat/concat*
_output_shapes
: *
T0
Ж
5training/SGD/gradients/fire9/concat/concat_grad/ShapeShapefire9/relu_expand1x1/Relu*
out_type0*&
_class
loc:@fire9/concat/concat*
_output_shapes
:*
T0
т
6training/SGD/gradients/fire9/concat/concat_grad/ShapeNShapeNfire9/relu_expand1x1/Relufire9/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire9/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire9/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire9/concat/concat_grad/mod6training/SGD/gradients/fire9/concat/concat_grad/ShapeN8training/SGD/gradients/fire9/concat/concat_grad/ShapeN:1* 
_output_shapes
::*&
_class
loc:@fire9/concat/concat*
N
У
5training/SGD/gradients/fire9/concat/concat_grad/SliceSlicetraining/SGD/gradients/AddN_1<training/SGD/gradients/fire9/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire9/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ
Щ
7training/SGD/gradients/fire9/concat/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN_1>training/SGD/gradients/fire9/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire9/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire9/concat/concat_grad/Slicefire9/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire9/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire9/concat/concat_grad/Slice_1fire9/relu_expand3x3/Relu*,
_class"
 loc:@fire9/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ*
T0
ї
?training/SGD/gradients/fire9/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire9/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ї
?training/SGD/gradients/fire9/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGrad*
_output_shapes	
:*
T0**
_class 
loc:@fire9/expand3x3/BiasAdd*
data_formatNHWC
ѕ
>training/SGD/gradients/fire9/expand1x1/convolution_grad/ShapeNShapeNfire9/relu_squeeze1x1/Relufire9/expand1x1/kernel/read*
out_type0*.
_class$
" loc:@fire9/expand1x1/convolution*
N* 
_output_shapes
::*
T0
и
Ktraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire9/expand1x1/convolution_grad/ShapeNfire9/expand1x1/kernel/read>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
г
Ltraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire9/relu_squeeze1x1/Relu@training/SGD/gradients/fire9/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand1x1/convolution
ѕ
>training/SGD/gradients/fire9/expand3x3/convolution_grad/ShapeNShapeNfire9/relu_squeeze1x1/Relufire9/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire9/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire9/expand3x3/convolution_grad/ShapeNfire9/expand3x3/kernel/read>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
в
Ltraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire9/relu_squeeze1x1/Relu@training/SGD/gradients/fire9/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGrad*'
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
В
training/SGD/gradients/AddN_2AddNKtraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire9/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ@
я
?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_2fire9/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire9/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ@
љ
@training/SGD/gradients/fire9/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire9/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
ё
?training/SGD/gradients/fire9/squeeze1x1/convolution_grad/ShapeNShapeNfire8/concat/concatfire9/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire9/squeeze1x1/convolution*
N* 
_output_shapes
::
о
Ltraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire9/squeeze1x1/convolution_grad/ShapeNfire9/squeeze1x1/kernel/read?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*/
_class%
#!loc:@fire9/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations

а
Mtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire8/concat/concatAtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGrad*'
_output_shapes
:@*
	dilations
*
T0*/
_class%
#!loc:@fire9/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID

4training/SGD/gradients/fire8/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire8/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire8/concat/concat_grad/modFloorModfire8/concat/concat/axis4training/SGD/gradients/fire8/concat/concat_grad/Rank*
T0*&
_class
loc:@fire8/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire8/concat/concat_grad/ShapeShapefire8/relu_expand1x1/Relu*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire8/concat/concat
т
6training/SGD/gradients/fire8/concat/concat_grad/ShapeNShapeNfire8/relu_expand1x1/Relufire8/relu_expand3x3/Relu*
N* 
_output_shapes
::*
T0*
out_type0*&
_class
loc:@fire8/concat/concat
Ц
<training/SGD/gradients/fire8/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire8/concat/concat_grad/mod6training/SGD/gradients/fire8/concat/concat_grad/ShapeN8training/SGD/gradients/fire8/concat/concat_grad/ShapeN:1*
N* 
_output_shapes
::*&
_class
loc:@fire8/concat/concat
ђ
5training/SGD/gradients/fire8/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire8/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire8/concat/concat_grad/ShapeN*0
_output_shapes
:џџџџџџџџџ*
T0*
Index0*&
_class
loc:@fire8/concat/concat
ј
7training/SGD/gradients/fire8/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire8/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire8/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire8/concat/concat*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire8/concat/concat_grad/Slicefire8/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@fire8/relu_expand1x1/Relu

>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire8/concat/concat_grad/Slice_1fire8/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire8/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ
ї
?training/SGD/gradients/fire8/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire8/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ї
?training/SGD/gradients/fire8/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire8/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ѕ
>training/SGD/gradients/fire8/expand1x1/convolution_grad/ShapeNShapeNfire8/relu_squeeze1x1/Relufire8/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire8/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire8/expand1x1/convolution_grad/ShapeNfire8/expand1x1/kernel/read>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*.
_class$
" loc:@fire8/expand1x1/convolution*
data_formatNHWC*
strides

г
Ltraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire8/relu_squeeze1x1/Relu@training/SGD/gradients/fire8/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGrad*.
_class$
" loc:@fire8/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0
ѕ
>training/SGD/gradients/fire8/expand3x3/convolution_grad/ShapeNShapeNfire8/relu_squeeze1x1/Relufire8/expand3x3/kernel/read*
out_type0*.
_class$
" loc:@fire8/expand3x3/convolution*
N* 
_output_shapes
::*
T0
з
Ktraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire8/expand3x3/convolution_grad/ShapeNfire8/expand3x3/kernel/read>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire8/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ@
в
Ltraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire8/relu_squeeze1x1/Relu@training/SGD/gradients/fire8/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGrad*
paddingSAME*'
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire8/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
В
training/SGD/gradients/AddN_3AddNKtraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropInput*/
_output_shapes
:џџџџџџџџџ@*
T0*.
_class$
" loc:@fire8/expand1x1/convolution*
N
я
?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_3fire8/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire8/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ@
љ
@training/SGD/gradients/fire8/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*+
_class!
loc:@fire8/squeeze1x1/BiasAdd*
data_formatNHWC
ё
?training/SGD/gradients/fire8/squeeze1x1/convolution_grad/ShapeNShapeNfire7/concat/concatfire8/squeeze1x1/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0*/
_class%
#!loc:@fire8/squeeze1x1/convolution
о
Ltraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire8/squeeze1x1/convolution_grad/ShapeNfire8/squeeze1x1/kernel/read?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGrad*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*/
_class%
#!loc:@fire8/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
а
Mtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire7/concat/concatAtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGrad*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*/
_class%
#!loc:@fire8/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

4training/SGD/gradients/fire7/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire7/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire7/concat/concat_grad/modFloorModfire7/concat/concat/axis4training/SGD/gradients/fire7/concat/concat_grad/Rank*
T0*&
_class
loc:@fire7/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire7/concat/concat_grad/ShapeShapefire7/relu_expand1x1/Relu*
T0*
out_type0*&
_class
loc:@fire7/concat/concat*
_output_shapes
:
т
6training/SGD/gradients/fire7/concat/concat_grad/ShapeNShapeNfire7/relu_expand1x1/Relufire7/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire7/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire7/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire7/concat/concat_grad/mod6training/SGD/gradients/fire7/concat/concat_grad/ShapeN8training/SGD/gradients/fire7/concat/concat_grad/ShapeN:1*&
_class
loc:@fire7/concat/concat*
N* 
_output_shapes
::
ђ
5training/SGD/gradients/fire7/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire7/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire7/concat/concat_grad/ShapeN*0
_output_shapes
:џџџџџџџџџР*
T0*
Index0*&
_class
loc:@fire7/concat/concat
ј
7training/SGD/gradients/fire7/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire7/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire7/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire7/concat/concat*0
_output_shapes
:џџџџџџџџџР

>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire7/concat/concat_grad/Slicefire7/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire7/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџР

>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire7/concat/concat_grad/Slice_1fire7/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџР*
T0*,
_class"
 loc:@fire7/relu_expand3x3/Relu
ї
?training/SGD/gradients/fire7/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:Р*
T0**
_class 
loc:@fire7/expand1x1/BiasAdd
ї
?training/SGD/gradients/fire7/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire7/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:Р
ѕ
>training/SGD/gradients/fire7/expand1x1/convolution_grad/ShapeNShapeNfire7/relu_squeeze1x1/Relufire7/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire7/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire7/expand1x1/convolution_grad/ShapeNfire7/expand1x1/kernel/read>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGrad*
T0*.
_class$
" loc:@fire7/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0*
	dilations

г
Ltraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire7/relu_squeeze1x1/Relu@training/SGD/gradients/fire7/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGrad*
T0*.
_class$
" loc:@fire7/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:0Р*
	dilations

ѕ
>training/SGD/gradients/fire7/expand3x3/convolution_grad/ShapeNShapeNfire7/relu_squeeze1x1/Relufire7/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire7/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire7/expand3x3/convolution_grad/ShapeNfire7/expand3x3/kernel/read>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGrad*
T0*.
_class$
" loc:@fire7/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ0*
	dilations

в
Ltraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire7/relu_squeeze1x1/Relu@training/SGD/gradients/fire7/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGrad*'
_output_shapes
:0Р*
	dilations
*
T0*.
_class$
" loc:@fire7/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
В
training/SGD/gradients/AddN_4AddNKtraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire7/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ0
я
?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_4fire7/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire7/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ0
љ
@training/SGD/gradients/fire7/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGrad*
_output_shapes
:0*
T0*+
_class!
loc:@fire7/squeeze1x1/BiasAdd*
data_formatNHWC
ё
?training/SGD/gradients/fire7/squeeze1x1/convolution_grad/ShapeNShapeNfire6/concat/concatfire7/squeeze1x1/kernel/read* 
_output_shapes
::*
T0*
out_type0*/
_class%
#!loc:@fire7/squeeze1x1/convolution*
N
о
Ltraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire7/squeeze1x1/convolution_grad/ShapeNfire7/squeeze1x1/kernel/read?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGrad*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*/
_class%
#!loc:@fire7/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
а
Mtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire6/concat/concatAtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGrad*'
_output_shapes
:0*
	dilations
*
T0*/
_class%
#!loc:@fire7/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID

4training/SGD/gradients/fire6/concat/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :*&
_class
loc:@fire6/concat/concat
и
3training/SGD/gradients/fire6/concat/concat_grad/modFloorModfire6/concat/concat/axis4training/SGD/gradients/fire6/concat/concat_grad/Rank*
T0*&
_class
loc:@fire6/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire6/concat/concat_grad/ShapeShapefire6/relu_expand1x1/Relu*
T0*
out_type0*&
_class
loc:@fire6/concat/concat*
_output_shapes
:
т
6training/SGD/gradients/fire6/concat/concat_grad/ShapeNShapeNfire6/relu_expand1x1/Relufire6/relu_expand3x3/Relu*
out_type0*&
_class
loc:@fire6/concat/concat*
N* 
_output_shapes
::*
T0
Ц
<training/SGD/gradients/fire6/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire6/concat/concat_grad/mod6training/SGD/gradients/fire6/concat/concat_grad/ShapeN8training/SGD/gradients/fire6/concat/concat_grad/ShapeN:1*&
_class
loc:@fire6/concat/concat*
N* 
_output_shapes
::
ђ
5training/SGD/gradients/fire6/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire6/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire6/concat/concat_grad/ShapeN*&
_class
loc:@fire6/concat/concat*0
_output_shapes
:џџџџџџџџџР*
T0*
Index0
ј
7training/SGD/gradients/fire6/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire6/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire6/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire6/concat/concat*0
_output_shapes
:џџџџџџџџџР

>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire6/concat/concat_grad/Slicefire6/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџР*
T0*,
_class"
 loc:@fire6/relu_expand1x1/Relu

>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire6/concat/concat_grad/Slice_1fire6/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire6/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџР
ї
?training/SGD/gradients/fire6/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGrad*
_output_shapes	
:Р*
T0**
_class 
loc:@fire6/expand1x1/BiasAdd*
data_formatNHWC
ї
?training/SGD/gradients/fire6/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire6/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:Р
ѕ
>training/SGD/gradients/fire6/expand1x1/convolution_grad/ShapeNShapeNfire6/relu_squeeze1x1/Relufire6/expand1x1/kernel/read* 
_output_shapes
::*
T0*
out_type0*.
_class$
" loc:@fire6/expand1x1/convolution*
N
и
Ktraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire6/expand1x1/convolution_grad/ShapeNfire6/expand1x1/kernel/read>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire6/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0
г
Ltraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire6/relu_squeeze1x1/Relu@training/SGD/gradients/fire6/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGrad*'
_output_shapes
:0Р*
	dilations
*
T0*.
_class$
" loc:@fire6/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
ѕ
>training/SGD/gradients/fire6/expand3x3/convolution_grad/ShapeNShapeNfire6/relu_squeeze1x1/Relufire6/expand3x3/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0*.
_class$
" loc:@fire6/expand3x3/convolution
з
Ktraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire6/expand3x3/convolution_grad/ShapeNfire6/expand3x3/kernel/read>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ0*
	dilations
*
T0*.
_class$
" loc:@fire6/expand3x3/convolution
в
Ltraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire6/relu_squeeze1x1/Relu@training/SGD/gradients/fire6/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGrad*.
_class$
" loc:@fire6/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:0Р*
	dilations
*
T0
В
training/SGD/gradients/AddN_5AddNKtraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire6/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ0
я
?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_5fire6/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire6/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ0
љ
@training/SGD/gradients/fire6/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:0*
T0*+
_class!
loc:@fire6/squeeze1x1/BiasAdd
ы
?training/SGD/gradients/fire6/squeeze1x1/convolution_grad/ShapeNShapeNpool5/MaxPoolfire6/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire6/squeeze1x1/convolution*
N* 
_output_shapes
::
о
Ltraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire6/squeeze1x1/convolution_grad/ShapeNfire6/squeeze1x1/kernel/read?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*/
_class%
#!loc:@fire6/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations

Ъ
Mtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterpool5/MaxPoolAtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGrad*'
_output_shapes
:0*
	dilations
*
T0*/
_class%
#!loc:@fire6/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
ц
5training/SGD/gradients/pool5/MaxPool_grad/MaxPoolGradMaxPoolGradfire5/concat/concatpool5/MaxPoolLtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropInput*
T0* 
_class
loc:@pool5/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*0
_output_shapes
:џџџџџџџџџ

4training/SGD/gradients/fire5/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire5/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire5/concat/concat_grad/modFloorModfire5/concat/concat/axis4training/SGD/gradients/fire5/concat/concat_grad/Rank*
T0*&
_class
loc:@fire5/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire5/concat/concat_grad/ShapeShapefire5/relu_expand1x1/Relu*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire5/concat/concat
т
6training/SGD/gradients/fire5/concat/concat_grad/ShapeNShapeNfire5/relu_expand1x1/Relufire5/relu_expand3x3/Relu*
out_type0*&
_class
loc:@fire5/concat/concat*
N* 
_output_shapes
::*
T0
Ц
<training/SGD/gradients/fire5/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire5/concat/concat_grad/mod6training/SGD/gradients/fire5/concat/concat_grad/ShapeN8training/SGD/gradients/fire5/concat/concat_grad/ShapeN:1*&
_class
loc:@fire5/concat/concat*
N* 
_output_shapes
::
л
5training/SGD/gradients/fire5/concat/concat_grad/SliceSlice5training/SGD/gradients/pool5/MaxPool_grad/MaxPoolGrad<training/SGD/gradients/fire5/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire5/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire5/concat/concat*0
_output_shapes
:џџџџџџџџџ
с
7training/SGD/gradients/fire5/concat/concat_grad/Slice_1Slice5training/SGD/gradients/pool5/MaxPool_grad/MaxPoolGrad>training/SGD/gradients/fire5/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire5/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire5/concat/concat*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire5/concat/concat_grad/Slicefire5/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire5/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire5/concat/concat_grad/Slice_1fire5/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@fire5/relu_expand3x3/Relu
ї
?training/SGD/gradients/fire5/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0**
_class 
loc:@fire5/expand1x1/BiasAdd
ї
?training/SGD/gradients/fire5/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire5/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ѕ
>training/SGD/gradients/fire5/expand1x1/convolution_grad/ShapeNShapeNfire5/relu_squeeze1x1/Relufire5/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire5/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire5/expand1x1/convolution_grad/ShapeNfire5/expand1x1/kernel/read>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*.
_class$
" loc:@fire5/expand1x1/convolution*
data_formatNHWC*
strides

г
Ltraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire5/relu_squeeze1x1/Relu@training/SGD/gradients/fire5/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
: *
	dilations
*
T0*.
_class$
" loc:@fire5/expand1x1/convolution
ѕ
>training/SGD/gradients/fire5/expand3x3/convolution_grad/ShapeNShapeNfire5/relu_squeeze1x1/Relufire5/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire5/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire5/expand3x3/convolution_grad/ShapeNfire5/expand3x3/kernel/read>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*.
_class$
" loc:@fire5/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
в
Ltraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire5/relu_squeeze1x1/Relu@training/SGD/gradients/fire5/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
: *
	dilations
*
T0*.
_class$
" loc:@fire5/expand3x3/convolution
В
training/SGD/gradients/AddN_6AddNKtraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire5/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ 
я
?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_6fire5/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire5/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ 
љ
@training/SGD/gradients/fire5/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire5/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
ё
?training/SGD/gradients/fire5/squeeze1x1/convolution_grad/ShapeNShapeNfire4/concat/concatfire5/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire5/squeeze1x1/convolution*
N* 
_output_shapes
::
о
Ltraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire5/squeeze1x1/convolution_grad/ShapeNfire5/squeeze1x1/kernel/read?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGrad*/
_class%
#!loc:@fire5/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0
а
Mtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire4/concat/concatAtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGrad*'
_output_shapes
: *
	dilations
*
T0*/
_class%
#!loc:@fire5/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID

4training/SGD/gradients/fire4/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire4/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire4/concat/concat_grad/modFloorModfire4/concat/concat/axis4training/SGD/gradients/fire4/concat/concat_grad/Rank*
T0*&
_class
loc:@fire4/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire4/concat/concat_grad/ShapeShapefire4/relu_expand1x1/Relu*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire4/concat/concat
т
6training/SGD/gradients/fire4/concat/concat_grad/ShapeNShapeNfire4/relu_expand1x1/Relufire4/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire4/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire4/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire4/concat/concat_grad/mod6training/SGD/gradients/fire4/concat/concat_grad/ShapeN8training/SGD/gradients/fire4/concat/concat_grad/ShapeN:1*&
_class
loc:@fire4/concat/concat*
N* 
_output_shapes
::
ђ
5training/SGD/gradients/fire4/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire4/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire4/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire4/concat/concat*0
_output_shapes
:џџџџџџџџџ
ј
7training/SGD/gradients/fire4/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire4/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire4/concat/concat_grad/ShapeN:1*&
_class
loc:@fire4/concat/concat*0
_output_shapes
:џџџџџџџџџ*
T0*
Index0

>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire4/concat/concat_grad/Slicefire4/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire4/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire4/concat/concat_grad/Slice_1fire4/relu_expand3x3/Relu*,
_class"
 loc:@fire4/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ*
T0
ї
?training/SGD/gradients/fire4/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGrad**
_class 
loc:@fire4/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:*
T0
ї
?training/SGD/gradients/fire4/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire4/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ѕ
>training/SGD/gradients/fire4/expand1x1/convolution_grad/ShapeNShapeNfire4/relu_squeeze1x1/Relufire4/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire4/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire4/expand1x1/convolution_grad/ShapeNfire4/expand1x1/kernel/read>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*.
_class$
" loc:@fire4/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
г
Ltraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire4/relu_squeeze1x1/Relu@training/SGD/gradients/fire4/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGrad*'
_output_shapes
: *
	dilations
*
T0*.
_class$
" loc:@fire4/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
ѕ
>training/SGD/gradients/fire4/expand3x3/convolution_grad/ShapeNShapeNfire4/relu_squeeze1x1/Relufire4/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire4/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire4/expand3x3/convolution_grad/ShapeNfire4/expand3x3/kernel/read>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGrad*
T0*.
_class$
" loc:@fire4/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ *
	dilations

в
Ltraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire4/relu_squeeze1x1/Relu@training/SGD/gradients/fire4/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
: *
	dilations
*
T0*.
_class$
" loc:@fire4/expand3x3/convolution
В
training/SGD/gradients/AddN_7AddNKtraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropInput*
N*/
_output_shapes
:џџџџџџџџџ *
T0*.
_class$
" loc:@fire4/expand1x1/convolution
я
?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_7fire4/relu_squeeze1x1/Relu*-
_class#
!loc:@fire4/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ *
T0
љ
@training/SGD/gradients/fire4/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire4/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
ы
?training/SGD/gradients/fire4/squeeze1x1/convolution_grad/ShapeNShapeNpool3/MaxPoolfire4/squeeze1x1/kernel/read* 
_output_shapes
::*
T0*
out_type0*/
_class%
#!loc:@fire4/squeeze1x1/convolution*
N
о
Ltraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire4/squeeze1x1/convolution_grad/ShapeNfire4/squeeze1x1/kernel/read?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*/
_class%
#!loc:@fire4/squeeze1x1/convolution
Ъ
Mtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterpool3/MaxPoolAtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire4/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
: 
ц
5training/SGD/gradients/pool3/MaxPool_grad/MaxPoolGradMaxPoolGradfire3/concat/concatpool3/MaxPoolLtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropInput*0
_output_shapes
:џџџџџџџџџ*
T0* 
_class
loc:@pool3/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingVALID

4training/SGD/gradients/fire3/concat/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :*&
_class
loc:@fire3/concat/concat
и
3training/SGD/gradients/fire3/concat/concat_grad/modFloorModfire3/concat/concat/axis4training/SGD/gradients/fire3/concat/concat_grad/Rank*
T0*&
_class
loc:@fire3/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire3/concat/concat_grad/ShapeShapefire3/relu_expand1x1/Relu*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire3/concat/concat
т
6training/SGD/gradients/fire3/concat/concat_grad/ShapeNShapeNfire3/relu_expand1x1/Relufire3/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire3/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire3/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire3/concat/concat_grad/mod6training/SGD/gradients/fire3/concat/concat_grad/ShapeN8training/SGD/gradients/fire3/concat/concat_grad/ShapeN:1*&
_class
loc:@fire3/concat/concat*
N* 
_output_shapes
::
к
5training/SGD/gradients/fire3/concat/concat_grad/SliceSlice5training/SGD/gradients/pool3/MaxPool_grad/MaxPoolGrad<training/SGD/gradients/fire3/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire3/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire3/concat/concat*/
_output_shapes
:џџџџџџџџџ@
р
7training/SGD/gradients/fire3/concat/concat_grad/Slice_1Slice5training/SGD/gradients/pool3/MaxPool_grad/MaxPoolGrad>training/SGD/gradients/fire3/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire3/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire3/concat/concat*/
_output_shapes
:џџџџџџџџџ@

>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire3/concat/concat_grad/Slicefire3/relu_expand1x1/Relu*,
_class"
 loc:@fire3/relu_expand1x1/Relu*/
_output_shapes
:џџџџџџџџџ@*
T0

>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire3/concat/concat_grad/Slice_1fire3/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire3/relu_expand3x3/Relu*/
_output_shapes
:џџџџџџџџџ@
і
?training/SGD/gradients/fire3/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire3/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
і
?training/SGD/gradients/fire3/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire3/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes
:@
ѕ
>training/SGD/gradients/fire3/expand1x1/convolution_grad/ShapeNShapeNfire3/relu_squeeze1x1/Relufire3/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire3/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire3/expand1x1/convolution_grad/ShapeNfire3/expand1x1/kernel/read>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire3/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ
в
Ltraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire3/relu_squeeze1x1/Relu@training/SGD/gradients/fire3/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*&
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire3/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ѕ
>training/SGD/gradients/fire3/expand3x3/convolution_grad/ShapeNShapeNfire3/relu_squeeze1x1/Relufire3/expand3x3/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0*.
_class$
" loc:@fire3/expand3x3/convolution
з
Ktraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire3/expand3x3/convolution_grad/ShapeNfire3/expand3x3/kernel/read>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGrad*
T0*.
_class$
" loc:@fire3/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ*
	dilations

б
Ltraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire3/relu_squeeze1x1/Relu@training/SGD/gradients/fire3/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGrad*
T0*.
_class$
" loc:@fire3/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@*
	dilations

В
training/SGD/gradients/AddN_8AddNKtraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropInput*
N*/
_output_shapes
:џџџџџџџџџ*
T0*.
_class$
" loc:@fire3/expand1x1/convolution
я
?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_8fire3/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ*
T0*-
_class#
!loc:@fire3/relu_squeeze1x1/Relu
љ
@training/SGD/gradients/fire3/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire3/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:
ё
?training/SGD/gradients/fire3/squeeze1x1/convolution_grad/ShapeNShapeNfire2/concat/concatfire3/squeeze1x1/kernel/read*
out_type0*/
_class%
#!loc:@fire3/squeeze1x1/convolution*
N* 
_output_shapes
::*
T0
о
Ltraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire3/squeeze1x1/convolution_grad/ShapeNfire3/squeeze1x1/kernel/read?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGrad*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*/
_class%
#!loc:@fire3/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
а
Mtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire2/concat/concatAtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire3/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:

4training/SGD/gradients/fire2/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire2/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire2/concat/concat_grad/modFloorModfire2/concat/concat/axis4training/SGD/gradients/fire2/concat/concat_grad/Rank*
T0*&
_class
loc:@fire2/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire2/concat/concat_grad/ShapeShapefire2/relu_expand1x1/Relu*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire2/concat/concat
т
6training/SGD/gradients/fire2/concat/concat_grad/ShapeNShapeNfire2/relu_expand1x1/Relufire2/relu_expand3x3/Relu* 
_output_shapes
::*
T0*
out_type0*&
_class
loc:@fire2/concat/concat*
N
Ц
<training/SGD/gradients/fire2/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire2/concat/concat_grad/mod6training/SGD/gradients/fire2/concat/concat_grad/ShapeN8training/SGD/gradients/fire2/concat/concat_grad/ShapeN:1*&
_class
loc:@fire2/concat/concat*
N* 
_output_shapes
::
ё
5training/SGD/gradients/fire2/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire2/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire2/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire2/concat/concat*/
_output_shapes
:џџџџџџџџџ@
ї
7training/SGD/gradients/fire2/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire2/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire2/concat/concat_grad/ShapeN:1*/
_output_shapes
:џџџџџџџџџ@*
T0*
Index0*&
_class
loc:@fire2/concat/concat

>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire2/concat/concat_grad/Slicefire2/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire2/relu_expand1x1/Relu*/
_output_shapes
:џџџџџџџџџ@

>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire2/concat/concat_grad/Slice_1fire2/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire2/relu_expand3x3/Relu*/
_output_shapes
:џџџџџџџџџ@
і
?training/SGD/gradients/fire2/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire2/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
і
?training/SGD/gradients/fire2/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0**
_class 
loc:@fire2/expand3x3/BiasAdd
ѕ
>training/SGD/gradients/fire2/expand1x1/convolution_grad/ShapeNShapeNfire2/relu_squeeze1x1/Relufire2/expand1x1/kernel/read*
out_type0*.
_class$
" loc:@fire2/expand1x1/convolution*
N* 
_output_shapes
::*
T0
и
Ktraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire2/expand1x1/convolution_grad/ShapeNfire2/expand1x1/kernel/read>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*.
_class$
" loc:@fire2/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
в
Ltraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire2/relu_squeeze1x1/Relu@training/SGD/gradients/fire2/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGrad*&
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire2/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
ѕ
>training/SGD/gradients/fire2/expand3x3/convolution_grad/ShapeNShapeNfire2/relu_squeeze1x1/Relufire2/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire2/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire2/expand3x3/convolution_grad/ShapeNfire2/expand3x3/kernel/read>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire2/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ
б
Ltraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire2/relu_squeeze1x1/Relu@training/SGD/gradients/fire2/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire2/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:@
В
training/SGD/gradients/AddN_9AddNKtraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire2/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ
я
?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_9fire2/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire2/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ
љ
@training/SGD/gradients/fire2/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGrad*+
_class!
loc:@fire2/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0
ы
?training/SGD/gradients/fire2/squeeze1x1/convolution_grad/ShapeNShapeNpool1/MaxPoolfire2/squeeze1x1/kernel/read* 
_output_shapes
::*
T0*
out_type0*/
_class%
#!loc:@fire2/squeeze1x1/convolution*
N
н
Ltraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire2/squeeze1x1/convolution_grad/ShapeNfire2/squeeze1x1/kernel/read?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire2/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
Щ
Mtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterpool1/MaxPoolAtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGrad*&
_output_shapes
:@*
	dilations
*
T0*/
_class%
#!loc:@fire2/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
с
5training/SGD/gradients/pool1/MaxPool_grad/MaxPoolGradMaxPoolGradrelu_conv1/Relupool1/MaxPoolLtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropInput*/
_output_shapes
:џџџџџџџџџ@*
T0* 
_class
loc:@pool1/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
ц
4training/SGD/gradients/relu_conv1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/pool1/MaxPool_grad/MaxPoolGradrelu_conv1/Relu*"
_class
loc:@relu_conv1/Relu*/
_output_shapes
:џџџџџџџџџ@*
T0
и
5training/SGD/gradients/conv1/BiasAdd_grad/BiasAddGradBiasAddGrad4training/SGD/gradients/relu_conv1/Relu_grad/ReluGrad*
T0* 
_class
loc:@conv1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
Ф
4training/SGD/gradients/conv1/convolution_grad/ShapeNShapeNinput_1conv1/kernel/read* 
_output_shapes
::*
T0*
out_type0*$
_class
loc:@conv1/convolution*
N
І
Atraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4training/SGD/gradients/conv1/convolution_grad/ShapeNconv1/kernel/read4training/SGD/gradients/relu_conv1/Relu_grad/ReluGrad*$
_class
loc:@conv1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ  *
	dilations
*
T0

Btraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterinput_16training/SGD/gradients/conv1/convolution_grad/ShapeN:14training/SGD/gradients/relu_conv1/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:@*
	dilations
*
T0*$
_class
loc:@conv1/convolution
^
training/SGD/AssignAdd/valueConst*
dtype0	*
_output_shapes
: *
value	B	 R
Ј
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*
T0	*!
_class
loc:@SGD/iterations*
_output_shapes
: *
use_locking( 
{
"training/SGD/zeros/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
]
training/SGD/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/SGD/zerosFill"training/SGD/zeros/shape_as_tensortraining/SGD/zeros/Const*&
_output_shapes
:@*
T0*

index_type0

training/SGD/Variable
VariableV2*
shared_name *
dtype0*&
_output_shapes
:@*
	container *
shape:@
е
training/SGD/Variable/AssignAssigntraining/SGD/Variabletraining/SGD/zeros*
T0*(
_class
loc:@training/SGD/Variable*
validate_shape(*&
_output_shapes
:@*
use_locking(

training/SGD/Variable/readIdentitytraining/SGD/Variable*
T0*(
_class
loc:@training/SGD/Variable*&
_output_shapes
:@
a
training/SGD/zeros_1Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_1
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
б
training/SGD/Variable_1/AssignAssigntraining/SGD/Variable_1training/SGD/zeros_1*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_1*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_1/readIdentitytraining/SGD/Variable_1*
_output_shapes
:@*
T0**
_class 
loc:@training/SGD/Variable_1
}
$training/SGD/zeros_2/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
_
training/SGD/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ё
training/SGD/zeros_2Fill$training/SGD/zeros_2/shape_as_tensortraining/SGD/zeros_2/Const*&
_output_shapes
:@*
T0*

index_type0

training/SGD/Variable_2
VariableV2*
shared_name *
dtype0*&
_output_shapes
:@*
	container *
shape:@
н
training/SGD/Variable_2/AssignAssigntraining/SGD/Variable_2training/SGD/zeros_2*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_2*
validate_shape(*&
_output_shapes
:@

training/SGD/Variable_2/readIdentitytraining/SGD/Variable_2*
T0**
_class 
loc:@training/SGD/Variable_2*&
_output_shapes
:@
a
training/SGD/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:

training/SGD/Variable_3
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
б
training/SGD/Variable_3/AssignAssigntraining/SGD/Variable_3training/SGD/zeros_3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_3

training/SGD/Variable_3/readIdentitytraining/SGD/Variable_3*
T0**
_class 
loc:@training/SGD/Variable_3*
_output_shapes
:
}
$training/SGD/zeros_4/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ё
training/SGD/zeros_4Fill$training/SGD/zeros_4/shape_as_tensortraining/SGD/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:@

training/SGD/Variable_4
VariableV2*
shape:@*
shared_name *
dtype0*&
_output_shapes
:@*
	container 
н
training/SGD/Variable_4/AssignAssigntraining/SGD/Variable_4training/SGD/zeros_4*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_4*
validate_shape(*&
_output_shapes
:@

training/SGD/Variable_4/readIdentitytraining/SGD/Variable_4*
T0**
_class 
loc:@training/SGD/Variable_4*&
_output_shapes
:@
a
training/SGD/zeros_5Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_5
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
б
training/SGD/Variable_5/AssignAssigntraining/SGD/Variable_5training/SGD/zeros_5*
T0**
_class 
loc:@training/SGD/Variable_5*
validate_shape(*
_output_shapes
:@*
use_locking(

training/SGD/Variable_5/readIdentitytraining/SGD/Variable_5*
T0**
_class 
loc:@training/SGD/Variable_5*
_output_shapes
:@
}
$training/SGD/zeros_6/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         @   
_
training/SGD/zeros_6/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ё
training/SGD/zeros_6Fill$training/SGD/zeros_6/shape_as_tensortraining/SGD/zeros_6/Const*
T0*

index_type0*&
_output_shapes
:@

training/SGD/Variable_6
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
н
training/SGD/Variable_6/AssignAssigntraining/SGD/Variable_6training/SGD/zeros_6*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_6*
validate_shape(*&
_output_shapes
:@

training/SGD/Variable_6/readIdentitytraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*&
_output_shapes
:@*
T0
a
training/SGD/zeros_7Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_7
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
б
training/SGD/Variable_7/AssignAssigntraining/SGD/Variable_7training/SGD/zeros_7*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_7*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_7/readIdentitytraining/SGD/Variable_7*
_output_shapes
:@*
T0**
_class 
loc:@training/SGD/Variable_7
}
$training/SGD/zeros_8/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
_
training/SGD/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ђ
training/SGD/zeros_8Fill$training/SGD/zeros_8/shape_as_tensortraining/SGD/zeros_8/Const*'
_output_shapes
:*
T0*

index_type0

training/SGD/Variable_8
VariableV2*
shared_name *
dtype0*'
_output_shapes
:*
	container *
shape:
о
training/SGD/Variable_8/AssignAssigntraining/SGD/Variable_8training/SGD/zeros_8*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_8*
validate_shape(*'
_output_shapes
:

training/SGD/Variable_8/readIdentitytraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*'
_output_shapes
:*
T0
a
training/SGD/zeros_9Const*
dtype0*
_output_shapes
:*
valueB*    

training/SGD/Variable_9
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
б
training/SGD/Variable_9/AssignAssigntraining/SGD/Variable_9training/SGD/zeros_9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_9

training/SGD/Variable_9/readIdentitytraining/SGD/Variable_9*
_output_shapes
:*
T0**
_class 
loc:@training/SGD/Variable_9
~
%training/SGD/zeros_10/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         @   
`
training/SGD/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/SGD/zeros_10Fill%training/SGD/zeros_10/shape_as_tensortraining/SGD/zeros_10/Const*&
_output_shapes
:@*
T0*

index_type0

training/SGD/Variable_10
VariableV2*
shared_name *
dtype0*&
_output_shapes
:@*
	container *
shape:@
с
training/SGD/Variable_10/AssignAssigntraining/SGD/Variable_10training/SGD/zeros_10*
T0*+
_class!
loc:@training/SGD/Variable_10*
validate_shape(*&
_output_shapes
:@*
use_locking(
Ё
training/SGD/Variable_10/readIdentitytraining/SGD/Variable_10*
T0*+
_class!
loc:@training/SGD/Variable_10*&
_output_shapes
:@
b
training/SGD/zeros_11Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_11
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
е
training/SGD/Variable_11/AssignAssigntraining/SGD/Variable_11training/SGD/zeros_11*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_11*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_11/readIdentitytraining/SGD/Variable_11*
T0*+
_class!
loc:@training/SGD/Variable_11*
_output_shapes
:@
~
%training/SGD/zeros_12/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/SGD/zeros_12Fill%training/SGD/zeros_12/shape_as_tensortraining/SGD/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:@

training/SGD/Variable_12
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
с
training/SGD/Variable_12/AssignAssigntraining/SGD/Variable_12training/SGD/zeros_12*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_12*
validate_shape(*&
_output_shapes
:@
Ё
training/SGD/Variable_12/readIdentitytraining/SGD/Variable_12*
T0*+
_class!
loc:@training/SGD/Variable_12*&
_output_shapes
:@
b
training/SGD/zeros_13Const*
_output_shapes
:@*
valueB@*    *
dtype0

training/SGD/Variable_13
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
е
training/SGD/Variable_13/AssignAssigntraining/SGD/Variable_13training/SGD/zeros_13*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_13*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_13/readIdentitytraining/SGD/Variable_13*
T0*+
_class!
loc:@training/SGD/Variable_13*
_output_shapes
:@
~
%training/SGD/zeros_14/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_14/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ѕ
training/SGD/zeros_14Fill%training/SGD/zeros_14/shape_as_tensortraining/SGD/zeros_14/Const*
T0*

index_type0*'
_output_shapes
: 

training/SGD/Variable_14
VariableV2*
shape: *
shared_name *
dtype0*'
_output_shapes
: *
	container 
т
training/SGD/Variable_14/AssignAssigntraining/SGD/Variable_14training/SGD/zeros_14*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_14*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_14/readIdentitytraining/SGD/Variable_14*'
_output_shapes
: *
T0*+
_class!
loc:@training/SGD/Variable_14
b
training/SGD/zeros_15Const*
_output_shapes
: *
valueB *    *
dtype0

training/SGD/Variable_15
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
е
training/SGD/Variable_15/AssignAssigntraining/SGD/Variable_15training/SGD/zeros_15*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_15*
validate_shape(*
_output_shapes
: 

training/SGD/Variable_15/readIdentitytraining/SGD/Variable_15*
T0*+
_class!
loc:@training/SGD/Variable_15*
_output_shapes
: 
~
%training/SGD/zeros_16/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_16Fill%training/SGD/zeros_16/shape_as_tensortraining/SGD/zeros_16/Const*

index_type0*'
_output_shapes
: *
T0

training/SGD/Variable_16
VariableV2*'
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
т
training/SGD/Variable_16/AssignAssigntraining/SGD/Variable_16training/SGD/zeros_16*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_16*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_16/readIdentitytraining/SGD/Variable_16*
T0*+
_class!
loc:@training/SGD/Variable_16*'
_output_shapes
: 
d
training/SGD/zeros_17Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_17
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
ж
training/SGD/Variable_17/AssignAssigntraining/SGD/Variable_17training/SGD/zeros_17*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_17*
validate_shape(*
_output_shapes	
:

training/SGD/Variable_17/readIdentitytraining/SGD/Variable_17*
T0*+
_class!
loc:@training/SGD/Variable_17*
_output_shapes	
:
~
%training/SGD/zeros_18/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"             
`
training/SGD/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_18Fill%training/SGD/zeros_18/shape_as_tensortraining/SGD/zeros_18/Const*
T0*

index_type0*'
_output_shapes
: 

training/SGD/Variable_18
VariableV2*
dtype0*'
_output_shapes
: *
	container *
shape: *
shared_name 
т
training/SGD/Variable_18/AssignAssigntraining/SGD/Variable_18training/SGD/zeros_18*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_18*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_18/readIdentitytraining/SGD/Variable_18*'
_output_shapes
: *
T0*+
_class!
loc:@training/SGD/Variable_18
d
training/SGD/zeros_19Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_19
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/SGD/Variable_19/AssignAssigntraining/SGD/Variable_19training/SGD/zeros_19*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_19*
validate_shape(

training/SGD/Variable_19/readIdentitytraining/SGD/Variable_19*
T0*+
_class!
loc:@training/SGD/Variable_19*
_output_shapes	
:
~
%training/SGD/zeros_20/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"             
`
training/SGD/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_20Fill%training/SGD/zeros_20/shape_as_tensortraining/SGD/zeros_20/Const*'
_output_shapes
: *
T0*

index_type0

training/SGD/Variable_20
VariableV2*
shape: *
shared_name *
dtype0*'
_output_shapes
: *
	container 
т
training/SGD/Variable_20/AssignAssigntraining/SGD/Variable_20training/SGD/zeros_20*
T0*+
_class!
loc:@training/SGD/Variable_20*
validate_shape(*'
_output_shapes
: *
use_locking(
Ђ
training/SGD/Variable_20/readIdentitytraining/SGD/Variable_20*
T0*+
_class!
loc:@training/SGD/Variable_20*'
_output_shapes
: 
b
training/SGD/zeros_21Const*
dtype0*
_output_shapes
: *
valueB *    

training/SGD/Variable_21
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
е
training/SGD/Variable_21/AssignAssigntraining/SGD/Variable_21training/SGD/zeros_21*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_21*
validate_shape(

training/SGD/Variable_21/readIdentitytraining/SGD/Variable_21*+
_class!
loc:@training/SGD/Variable_21*
_output_shapes
: *
T0
~
%training/SGD/zeros_22/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_22Fill%training/SGD/zeros_22/shape_as_tensortraining/SGD/zeros_22/Const*
T0*

index_type0*'
_output_shapes
: 

training/SGD/Variable_22
VariableV2*
shared_name *
dtype0*'
_output_shapes
: *
	container *
shape: 
т
training/SGD/Variable_22/AssignAssigntraining/SGD/Variable_22training/SGD/zeros_22*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_22*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_22/readIdentitytraining/SGD/Variable_22*
T0*+
_class!
loc:@training/SGD/Variable_22*'
_output_shapes
: 
d
training/SGD/zeros_23Const*
_output_shapes	
:*
valueB*    *
dtype0

training/SGD/Variable_23
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ж
training/SGD/Variable_23/AssignAssigntraining/SGD/Variable_23training/SGD/zeros_23*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_23*
validate_shape(*
_output_shapes	
:

training/SGD/Variable_23/readIdentitytraining/SGD/Variable_23*
_output_shapes	
:*
T0*+
_class!
loc:@training/SGD/Variable_23
~
%training/SGD/zeros_24/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_24/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ѕ
training/SGD/zeros_24Fill%training/SGD/zeros_24/shape_as_tensortraining/SGD/zeros_24/Const*
T0*

index_type0*'
_output_shapes
: 

training/SGD/Variable_24
VariableV2*
dtype0*'
_output_shapes
: *
	container *
shape: *
shared_name 
т
training/SGD/Variable_24/AssignAssigntraining/SGD/Variable_24training/SGD/zeros_24*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_24*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_24/readIdentitytraining/SGD/Variable_24*
T0*+
_class!
loc:@training/SGD/Variable_24*'
_output_shapes
: 
d
training/SGD/zeros_25Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_25
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ж
training/SGD/Variable_25/AssignAssigntraining/SGD/Variable_25training/SGD/zeros_25*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_25

training/SGD/Variable_25/readIdentitytraining/SGD/Variable_25*
_output_shapes	
:*
T0*+
_class!
loc:@training/SGD/Variable_25
~
%training/SGD/zeros_26/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_26Fill%training/SGD/zeros_26/shape_as_tensortraining/SGD/zeros_26/Const*

index_type0*'
_output_shapes
:0*
T0

training/SGD/Variable_26
VariableV2*
shared_name *
dtype0*'
_output_shapes
:0*
	container *
shape:0
т
training/SGD/Variable_26/AssignAssigntraining/SGD/Variable_26training/SGD/zeros_26*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_26*
validate_shape(*'
_output_shapes
:0
Ђ
training/SGD/Variable_26/readIdentitytraining/SGD/Variable_26*'
_output_shapes
:0*
T0*+
_class!
loc:@training/SGD/Variable_26
b
training/SGD/zeros_27Const*
valueB0*    *
dtype0*
_output_shapes
:0

training/SGD/Variable_27
VariableV2*
dtype0*
_output_shapes
:0*
	container *
shape:0*
shared_name 
е
training/SGD/Variable_27/AssignAssigntraining/SGD/Variable_27training/SGD/zeros_27*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_27*
validate_shape(*
_output_shapes
:0

training/SGD/Variable_27/readIdentitytraining/SGD/Variable_27*
T0*+
_class!
loc:@training/SGD/Variable_27*
_output_shapes
:0
~
%training/SGD/zeros_28/shape_as_tensorConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_28/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_28Fill%training/SGD/zeros_28/shape_as_tensortraining/SGD/zeros_28/Const*
T0*

index_type0*'
_output_shapes
:0Р

training/SGD/Variable_28
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
т
training/SGD/Variable_28/AssignAssigntraining/SGD/Variable_28training/SGD/zeros_28*'
_output_shapes
:0Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_28*
validate_shape(
Ђ
training/SGD/Variable_28/readIdentitytraining/SGD/Variable_28*'
_output_shapes
:0Р*
T0*+
_class!
loc:@training/SGD/Variable_28
d
training/SGD/zeros_29Const*
valueBР*    *
dtype0*
_output_shapes	
:Р

training/SGD/Variable_29
VariableV2*
shape:Р*
shared_name *
dtype0*
_output_shapes	
:Р*
	container 
ж
training/SGD/Variable_29/AssignAssigntraining/SGD/Variable_29training/SGD/zeros_29*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_29*
validate_shape(*
_output_shapes	
:Р

training/SGD/Variable_29/readIdentitytraining/SGD/Variable_29*
_output_shapes	
:Р*
T0*+
_class!
loc:@training/SGD/Variable_29
~
%training/SGD/zeros_30/shape_as_tensorConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_30/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ѕ
training/SGD/zeros_30Fill%training/SGD/zeros_30/shape_as_tensortraining/SGD/zeros_30/Const*
T0*

index_type0*'
_output_shapes
:0Р

training/SGD/Variable_30
VariableV2*
shared_name *
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р
т
training/SGD/Variable_30/AssignAssigntraining/SGD/Variable_30training/SGD/zeros_30*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_30*
validate_shape(*'
_output_shapes
:0Р
Ђ
training/SGD/Variable_30/readIdentitytraining/SGD/Variable_30*'
_output_shapes
:0Р*
T0*+
_class!
loc:@training/SGD/Variable_30
d
training/SGD/zeros_31Const*
valueBР*    *
dtype0*
_output_shapes	
:Р

training/SGD/Variable_31
VariableV2*
shared_name *
dtype0*
_output_shapes	
:Р*
	container *
shape:Р
ж
training/SGD/Variable_31/AssignAssigntraining/SGD/Variable_31training/SGD/zeros_31*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_31*
validate_shape(*
_output_shapes	
:Р

training/SGD/Variable_31/readIdentitytraining/SGD/Variable_31*
T0*+
_class!
loc:@training/SGD/Variable_31*
_output_shapes	
:Р
~
%training/SGD/zeros_32/shape_as_tensorConst*%
valueB"        0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_32Fill%training/SGD/zeros_32/shape_as_tensortraining/SGD/zeros_32/Const*'
_output_shapes
:0*
T0*

index_type0

training/SGD/Variable_32
VariableV2*
shape:0*
shared_name *
dtype0*'
_output_shapes
:0*
	container 
т
training/SGD/Variable_32/AssignAssigntraining/SGD/Variable_32training/SGD/zeros_32*'
_output_shapes
:0*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_32*
validate_shape(
Ђ
training/SGD/Variable_32/readIdentitytraining/SGD/Variable_32*
T0*+
_class!
loc:@training/SGD/Variable_32*'
_output_shapes
:0
b
training/SGD/zeros_33Const*
valueB0*    *
dtype0*
_output_shapes
:0

training/SGD/Variable_33
VariableV2*
shared_name *
dtype0*
_output_shapes
:0*
	container *
shape:0
е
training/SGD/Variable_33/AssignAssigntraining/SGD/Variable_33training/SGD/zeros_33*
_output_shapes
:0*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_33*
validate_shape(

training/SGD/Variable_33/readIdentitytraining/SGD/Variable_33*
T0*+
_class!
loc:@training/SGD/Variable_33*
_output_shapes
:0
~
%training/SGD/zeros_34/shape_as_tensorConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_34Fill%training/SGD/zeros_34/shape_as_tensortraining/SGD/zeros_34/Const*
T0*

index_type0*'
_output_shapes
:0Р

training/SGD/Variable_34
VariableV2*
shared_name *
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р
т
training/SGD/Variable_34/AssignAssigntraining/SGD/Variable_34training/SGD/zeros_34*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_34*
validate_shape(*'
_output_shapes
:0Р
Ђ
training/SGD/Variable_34/readIdentitytraining/SGD/Variable_34*'
_output_shapes
:0Р*
T0*+
_class!
loc:@training/SGD/Variable_34
d
training/SGD/zeros_35Const*
dtype0*
_output_shapes	
:Р*
valueBР*    

training/SGD/Variable_35
VariableV2*
dtype0*
_output_shapes	
:Р*
	container *
shape:Р*
shared_name 
ж
training/SGD/Variable_35/AssignAssigntraining/SGD/Variable_35training/SGD/zeros_35*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_35*
validate_shape(*
_output_shapes	
:Р

training/SGD/Variable_35/readIdentitytraining/SGD/Variable_35*
_output_shapes	
:Р*
T0*+
_class!
loc:@training/SGD/Variable_35
~
%training/SGD/zeros_36/shape_as_tensorConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_36/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ѕ
training/SGD/zeros_36Fill%training/SGD/zeros_36/shape_as_tensortraining/SGD/zeros_36/Const*
T0*

index_type0*'
_output_shapes
:0Р

training/SGD/Variable_36
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
т
training/SGD/Variable_36/AssignAssigntraining/SGD/Variable_36training/SGD/zeros_36*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_36*
validate_shape(*'
_output_shapes
:0Р
Ђ
training/SGD/Variable_36/readIdentitytraining/SGD/Variable_36*
T0*+
_class!
loc:@training/SGD/Variable_36*'
_output_shapes
:0Р
d
training/SGD/zeros_37Const*
valueBР*    *
dtype0*
_output_shapes	
:Р

training/SGD/Variable_37
VariableV2*
shape:Р*
shared_name *
dtype0*
_output_shapes	
:Р*
	container 
ж
training/SGD/Variable_37/AssignAssigntraining/SGD/Variable_37training/SGD/zeros_37*+
_class!
loc:@training/SGD/Variable_37*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0

training/SGD/Variable_37/readIdentitytraining/SGD/Variable_37*
T0*+
_class!
loc:@training/SGD/Variable_37*
_output_shapes	
:Р
~
%training/SGD/zeros_38/shape_as_tensorConst*%
valueB"        @   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_38Fill%training/SGD/zeros_38/shape_as_tensortraining/SGD/zeros_38/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_38
VariableV2*'
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
т
training/SGD/Variable_38/AssignAssigntraining/SGD/Variable_38training/SGD/zeros_38*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_38
Ђ
training/SGD/Variable_38/readIdentitytraining/SGD/Variable_38*
T0*+
_class!
loc:@training/SGD/Variable_38*'
_output_shapes
:@
b
training/SGD/zeros_39Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_39
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
е
training/SGD/Variable_39/AssignAssigntraining/SGD/Variable_39training/SGD/zeros_39*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_39*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_39/readIdentitytraining/SGD/Variable_39*
_output_shapes
:@*
T0*+
_class!
loc:@training/SGD/Variable_39
~
%training/SGD/zeros_40/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_40/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ѕ
training/SGD/zeros_40Fill%training/SGD/zeros_40/shape_as_tensortraining/SGD/zeros_40/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_40
VariableV2*
shape:@*
shared_name *
dtype0*'
_output_shapes
:@*
	container 
т
training/SGD/Variable_40/AssignAssigntraining/SGD/Variable_40training/SGD/zeros_40*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_40*
validate_shape(*'
_output_shapes
:@
Ђ
training/SGD/Variable_40/readIdentitytraining/SGD/Variable_40*
T0*+
_class!
loc:@training/SGD/Variable_40*'
_output_shapes
:@
d
training/SGD/zeros_41Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_41
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/SGD/Variable_41/AssignAssigntraining/SGD/Variable_41training/SGD/zeros_41*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_41

training/SGD/Variable_41/readIdentitytraining/SGD/Variable_41*+
_class!
loc:@training/SGD/Variable_41*
_output_shapes	
:*
T0
~
%training/SGD/zeros_42/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_42/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_42Fill%training/SGD/zeros_42/shape_as_tensortraining/SGD/zeros_42/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_42
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
т
training/SGD/Variable_42/AssignAssigntraining/SGD/Variable_42training/SGD/zeros_42*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_42
Ђ
training/SGD/Variable_42/readIdentitytraining/SGD/Variable_42*
T0*+
_class!
loc:@training/SGD/Variable_42*'
_output_shapes
:@
d
training/SGD/zeros_43Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_43
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
ж
training/SGD/Variable_43/AssignAssigntraining/SGD/Variable_43training/SGD/zeros_43*+
_class!
loc:@training/SGD/Variable_43*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/SGD/Variable_43/readIdentitytraining/SGD/Variable_43*
T0*+
_class!
loc:@training/SGD/Variable_43*
_output_shapes	
:
~
%training/SGD/zeros_44/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"         @   
`
training/SGD/zeros_44/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ѕ
training/SGD/zeros_44Fill%training/SGD/zeros_44/shape_as_tensortraining/SGD/zeros_44/Const*'
_output_shapes
:@*
T0*

index_type0

training/SGD/Variable_44
VariableV2*
shape:@*
shared_name *
dtype0*'
_output_shapes
:@*
	container 
т
training/SGD/Variable_44/AssignAssigntraining/SGD/Variable_44training/SGD/zeros_44*+
_class!
loc:@training/SGD/Variable_44*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0
Ђ
training/SGD/Variable_44/readIdentitytraining/SGD/Variable_44*
T0*+
_class!
loc:@training/SGD/Variable_44*'
_output_shapes
:@
b
training/SGD/zeros_45Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_45
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
е
training/SGD/Variable_45/AssignAssigntraining/SGD/Variable_45training/SGD/zeros_45*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_45*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_45/readIdentitytraining/SGD/Variable_45*
T0*+
_class!
loc:@training/SGD/Variable_45*
_output_shapes
:@
~
%training/SGD/zeros_46/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_46/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_46Fill%training/SGD/zeros_46/shape_as_tensortraining/SGD/zeros_46/Const*

index_type0*'
_output_shapes
:@*
T0

training/SGD/Variable_46
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
т
training/SGD/Variable_46/AssignAssigntraining/SGD/Variable_46training/SGD/zeros_46*'
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_46*
validate_shape(
Ђ
training/SGD/Variable_46/readIdentitytraining/SGD/Variable_46*'
_output_shapes
:@*
T0*+
_class!
loc:@training/SGD/Variable_46
d
training/SGD/zeros_47Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_47
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
ж
training/SGD/Variable_47/AssignAssigntraining/SGD/Variable_47training/SGD/zeros_47*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_47

training/SGD/Variable_47/readIdentitytraining/SGD/Variable_47*+
_class!
loc:@training/SGD/Variable_47*
_output_shapes	
:*
T0
~
%training/SGD/zeros_48/shape_as_tensorConst*
_output_shapes
:*%
valueB"      @      *
dtype0
`
training/SGD/zeros_48/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_48Fill%training/SGD/zeros_48/shape_as_tensortraining/SGD/zeros_48/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_48
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
т
training/SGD/Variable_48/AssignAssigntraining/SGD/Variable_48training/SGD/zeros_48*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_48*
validate_shape(*'
_output_shapes
:@
Ђ
training/SGD/Variable_48/readIdentitytraining/SGD/Variable_48*+
_class!
loc:@training/SGD/Variable_48*'
_output_shapes
:@*
T0
d
training/SGD/zeros_49Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_49
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
ж
training/SGD/Variable_49/AssignAssigntraining/SGD/Variable_49training/SGD/zeros_49*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_49*
validate_shape(

training/SGD/Variable_49/readIdentitytraining/SGD/Variable_49*
T0*+
_class!
loc:@training/SGD/Variable_49*
_output_shapes	
:
~
%training/SGD/zeros_50/shape_as_tensorConst*%
valueB"         
   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_50/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ѕ
training/SGD/zeros_50Fill%training/SGD/zeros_50/shape_as_tensortraining/SGD/zeros_50/Const*'
_output_shapes
:
*
T0*

index_type0

training/SGD/Variable_50
VariableV2*
shared_name *
dtype0*'
_output_shapes
:
*
	container *
shape:

т
training/SGD/Variable_50/AssignAssigntraining/SGD/Variable_50training/SGD/zeros_50*
T0*+
_class!
loc:@training/SGD/Variable_50*
validate_shape(*'
_output_shapes
:
*
use_locking(
Ђ
training/SGD/Variable_50/readIdentitytraining/SGD/Variable_50*'
_output_shapes
:
*
T0*+
_class!
loc:@training/SGD/Variable_50
b
training/SGD/zeros_51Const*
valueB
*    *
dtype0*
_output_shapes
:


training/SGD/Variable_51
VariableV2*
shape:
*
shared_name *
dtype0*
_output_shapes
:
*
	container 
е
training/SGD/Variable_51/AssignAssigntraining/SGD/Variable_51training/SGD/zeros_51*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_51*
validate_shape(*
_output_shapes
:


training/SGD/Variable_51/readIdentitytraining/SGD/Variable_51*
T0*+
_class!
loc:@training/SGD/Variable_51*
_output_shapes
:

w
training/SGD/mulMulSGD/momentum/readtraining/SGD/Variable/read*
T0*&
_output_shapes
:@

training/SGD/mul_1MulSGD/lr/readBtraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
n
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*
T0*&
_output_shapes
:@
Ъ
training/SGD/AssignAssigntraining/SGD/Variabletraining/SGD/sub*
T0*(
_class
loc:@training/SGD/Variable*
validate_shape(*&
_output_shapes
:@*
use_locking(
o
training/SGD/mul_2MulSGD/momentum/readtraining/SGD/sub*
T0*&
_output_shapes
:@
o
training/SGD/addAddconv1/kernel/readtraining/SGD/mul_2*
T0*&
_output_shapes
:@

training/SGD/mul_3MulSGD/lr/readBtraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
p
training/SGD/sub_1Subtraining/SGD/addtraining/SGD/mul_3*
T0*&
_output_shapes
:@
М
training/SGD/Assign_1Assignconv1/kerneltraining/SGD/sub_1*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv1/kernel
o
training/SGD/mul_4MulSGD/momentum/readtraining/SGD/Variable_1/read*
_output_shapes
:@*
T0

training/SGD/mul_5MulSGD/lr/read5training/SGD/gradients/conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
f
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*
_output_shapes
:@*
T0
Ц
training/SGD/Assign_2Assigntraining/SGD/Variable_1training/SGD/sub_2*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_1*
validate_shape(*
_output_shapes
:@
e
training/SGD/mul_6MulSGD/momentum/readtraining/SGD/sub_2*
_output_shapes
:@*
T0
c
training/SGD/add_1Addconv1/bias/readtraining/SGD/mul_6*
T0*
_output_shapes
:@

training/SGD/mul_7MulSGD/lr/read5training/SGD/gradients/conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
f
training/SGD/sub_3Subtraining/SGD/add_1training/SGD/mul_7*
T0*
_output_shapes
:@
Ќ
training/SGD/Assign_3Assign
conv1/biastraining/SGD/sub_3*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
:@
{
training/SGD/mul_8MulSGD/momentum/readtraining/SGD/Variable_2/read*&
_output_shapes
:@*
T0
І
training/SGD/mul_9MulSGD/lr/readMtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
r
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*
T0*&
_output_shapes
:@
в
training/SGD/Assign_4Assigntraining/SGD/Variable_2training/SGD/sub_4*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_2*
validate_shape(*&
_output_shapes
:@
r
training/SGD/mul_10MulSGD/momentum/readtraining/SGD/sub_4*&
_output_shapes
:@*
T0
}
training/SGD/add_2Addfire2/squeeze1x1/kernel/readtraining/SGD/mul_10*
T0*&
_output_shapes
:@
Ї
training/SGD/mul_11MulSGD/lr/readMtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
s
training/SGD/sub_5Subtraining/SGD/add_2training/SGD/mul_11*
T0*&
_output_shapes
:@
в
training/SGD/Assign_5Assignfire2/squeeze1x1/kerneltraining/SGD/sub_5*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@fire2/squeeze1x1/kernel
p
training/SGD/mul_12MulSGD/momentum/readtraining/SGD/Variable_3/read*
_output_shapes
:*
T0

training/SGD/mul_13MulSGD/lr/read@training/SGD/gradients/fire2/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
h
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*
T0*
_output_shapes
:
Ц
training/SGD/Assign_6Assigntraining/SGD/Variable_3training/SGD/sub_6*
T0**
_class 
loc:@training/SGD/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(
f
training/SGD/mul_14MulSGD/momentum/readtraining/SGD/sub_6*
T0*
_output_shapes
:
o
training/SGD/add_3Addfire2/squeeze1x1/bias/readtraining/SGD/mul_14*
T0*
_output_shapes
:

training/SGD/mul_15MulSGD/lr/read@training/SGD/gradients/fire2/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
g
training/SGD/sub_7Subtraining/SGD/add_3training/SGD/mul_15*
_output_shapes
:*
T0
Т
training/SGD/Assign_7Assignfire2/squeeze1x1/biastraining/SGD/sub_7*
T0*(
_class
loc:@fire2/squeeze1x1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
|
training/SGD/mul_16MulSGD/momentum/readtraining/SGD/Variable_4/read*
T0*&
_output_shapes
:@
І
training/SGD/mul_17MulSGD/lr/readLtraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
t
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*&
_output_shapes
:@*
T0
в
training/SGD/Assign_8Assigntraining/SGD/Variable_4training/SGD/sub_8**
_class 
loc:@training/SGD/Variable_4*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0
r
training/SGD/mul_18MulSGD/momentum/readtraining/SGD/sub_8*&
_output_shapes
:@*
T0
|
training/SGD/add_4Addfire2/expand1x1/kernel/readtraining/SGD/mul_18*&
_output_shapes
:@*
T0
І
training/SGD/mul_19MulSGD/lr/readLtraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
s
training/SGD/sub_9Subtraining/SGD/add_4training/SGD/mul_19*
T0*&
_output_shapes
:@
а
training/SGD/Assign_9Assignfire2/expand1x1/kerneltraining/SGD/sub_9*&
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire2/expand1x1/kernel*
validate_shape(
p
training/SGD/mul_20MulSGD/momentum/readtraining/SGD/Variable_5/read*
T0*
_output_shapes
:@

training/SGD/mul_21MulSGD/lr/read?training/SGD/gradients/fire2/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
i
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*
T0*
_output_shapes
:@
Ш
training/SGD/Assign_10Assigntraining/SGD/Variable_5training/SGD/sub_10*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_5
g
training/SGD/mul_22MulSGD/momentum/readtraining/SGD/sub_10*
T0*
_output_shapes
:@
n
training/SGD/add_5Addfire2/expand1x1/bias/readtraining/SGD/mul_22*
_output_shapes
:@*
T0

training/SGD/mul_23MulSGD/lr/read?training/SGD/gradients/fire2/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
h
training/SGD/sub_11Subtraining/SGD/add_5training/SGD/mul_23*
T0*
_output_shapes
:@
Т
training/SGD/Assign_11Assignfire2/expand1x1/biastraining/SGD/sub_11*
use_locking(*
T0*'
_class
loc:@fire2/expand1x1/bias*
validate_shape(*
_output_shapes
:@
|
training/SGD/mul_24MulSGD/momentum/readtraining/SGD/Variable_6/read*
T0*&
_output_shapes
:@
І
training/SGD/mul_25MulSGD/lr/readLtraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
u
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25*
T0*&
_output_shapes
:@
д
training/SGD/Assign_12Assigntraining/SGD/Variable_6training/SGD/sub_12*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_6*
validate_shape(*&
_output_shapes
:@
s
training/SGD/mul_26MulSGD/momentum/readtraining/SGD/sub_12*
T0*&
_output_shapes
:@
|
training/SGD/add_6Addfire2/expand3x3/kernel/readtraining/SGD/mul_26*
T0*&
_output_shapes
:@
І
training/SGD/mul_27MulSGD/lr/readLtraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
t
training/SGD/sub_13Subtraining/SGD/add_6training/SGD/mul_27*
T0*&
_output_shapes
:@
в
training/SGD/Assign_13Assignfire2/expand3x3/kerneltraining/SGD/sub_13*
use_locking(*
T0*)
_class
loc:@fire2/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@
p
training/SGD/mul_28MulSGD/momentum/readtraining/SGD/Variable_7/read*
_output_shapes
:@*
T0

training/SGD/mul_29MulSGD/lr/read?training/SGD/gradients/fire2/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
T0*
_output_shapes
:@
Ш
training/SGD/Assign_14Assigntraining/SGD/Variable_7training/SGD/sub_14*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_7*
validate_shape(*
_output_shapes
:@
g
training/SGD/mul_30MulSGD/momentum/readtraining/SGD/sub_14*
T0*
_output_shapes
:@
n
training/SGD/add_7Addfire2/expand3x3/bias/readtraining/SGD/mul_30*
_output_shapes
:@*
T0

training/SGD/mul_31MulSGD/lr/read?training/SGD/gradients/fire2/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
h
training/SGD/sub_15Subtraining/SGD/add_7training/SGD/mul_31*
_output_shapes
:@*
T0
Т
training/SGD/Assign_15Assignfire2/expand3x3/biastraining/SGD/sub_15*
use_locking(*
T0*'
_class
loc:@fire2/expand3x3/bias*
validate_shape(*
_output_shapes
:@
}
training/SGD/mul_32MulSGD/momentum/readtraining/SGD/Variable_8/read*
T0*'
_output_shapes
:
Ј
training/SGD/mul_33MulSGD/lr/readMtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:
v
training/SGD/sub_16Subtraining/SGD/mul_32training/SGD/mul_33*'
_output_shapes
:*
T0
е
training/SGD/Assign_16Assigntraining/SGD/Variable_8training/SGD/sub_16*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_8*
validate_shape(*'
_output_shapes
:
t
training/SGD/mul_34MulSGD/momentum/readtraining/SGD/sub_16*
T0*'
_output_shapes
:
~
training/SGD/add_8Addfire3/squeeze1x1/kernel/readtraining/SGD/mul_34*
T0*'
_output_shapes
:
Ј
training/SGD/mul_35MulSGD/lr/readMtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:
u
training/SGD/sub_17Subtraining/SGD/add_8training/SGD/mul_35*
T0*'
_output_shapes
:
е
training/SGD/Assign_17Assignfire3/squeeze1x1/kerneltraining/SGD/sub_17*
validate_shape(*'
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@fire3/squeeze1x1/kernel
p
training/SGD/mul_36MulSGD/momentum/readtraining/SGD/Variable_9/read*
T0*
_output_shapes
:

training/SGD/mul_37MulSGD/lr/read@training/SGD/gradients/fire3/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/SGD/sub_18Subtraining/SGD/mul_36training/SGD/mul_37*
T0*
_output_shapes
:
Ш
training/SGD/Assign_18Assigntraining/SGD/Variable_9training/SGD/sub_18*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_9*
validate_shape(
g
training/SGD/mul_38MulSGD/momentum/readtraining/SGD/sub_18*
T0*
_output_shapes
:
o
training/SGD/add_9Addfire3/squeeze1x1/bias/readtraining/SGD/mul_38*
_output_shapes
:*
T0

training/SGD/mul_39MulSGD/lr/read@training/SGD/gradients/fire3/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
h
training/SGD/sub_19Subtraining/SGD/add_9training/SGD/mul_39*
T0*
_output_shapes
:
Ф
training/SGD/Assign_19Assignfire3/squeeze1x1/biastraining/SGD/sub_19*
use_locking(*
T0*(
_class
loc:@fire3/squeeze1x1/bias*
validate_shape(*
_output_shapes
:
}
training/SGD/mul_40MulSGD/momentum/readtraining/SGD/Variable_10/read*
T0*&
_output_shapes
:@
І
training/SGD/mul_41MulSGD/lr/readLtraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
u
training/SGD/sub_20Subtraining/SGD/mul_40training/SGD/mul_41*
T0*&
_output_shapes
:@
ж
training/SGD/Assign_20Assigntraining/SGD/Variable_10training/SGD/sub_20*
T0*+
_class!
loc:@training/SGD/Variable_10*
validate_shape(*&
_output_shapes
:@*
use_locking(
s
training/SGD/mul_42MulSGD/momentum/readtraining/SGD/sub_20*
T0*&
_output_shapes
:@
}
training/SGD/add_10Addfire3/expand1x1/kernel/readtraining/SGD/mul_42*
T0*&
_output_shapes
:@
І
training/SGD/mul_43MulSGD/lr/readLtraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
u
training/SGD/sub_21Subtraining/SGD/add_10training/SGD/mul_43*&
_output_shapes
:@*
T0
в
training/SGD/Assign_21Assignfire3/expand1x1/kerneltraining/SGD/sub_21*
use_locking(*
T0*)
_class
loc:@fire3/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@
q
training/SGD/mul_44MulSGD/momentum/readtraining/SGD/Variable_11/read*
_output_shapes
:@*
T0

training/SGD/mul_45MulSGD/lr/read?training/SGD/gradients/fire3/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_22Subtraining/SGD/mul_44training/SGD/mul_45*
_output_shapes
:@*
T0
Ъ
training/SGD/Assign_22Assigntraining/SGD/Variable_11training/SGD/sub_22*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_11*
validate_shape(
g
training/SGD/mul_46MulSGD/momentum/readtraining/SGD/sub_22*
T0*
_output_shapes
:@
o
training/SGD/add_11Addfire3/expand1x1/bias/readtraining/SGD/mul_46*
T0*
_output_shapes
:@

training/SGD/mul_47MulSGD/lr/read?training/SGD/gradients/fire3/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_23Subtraining/SGD/add_11training/SGD/mul_47*
T0*
_output_shapes
:@
Т
training/SGD/Assign_23Assignfire3/expand1x1/biastraining/SGD/sub_23*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*'
_class
loc:@fire3/expand1x1/bias
}
training/SGD/mul_48MulSGD/momentum/readtraining/SGD/Variable_12/read*
T0*&
_output_shapes
:@
І
training/SGD/mul_49MulSGD/lr/readLtraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
u
training/SGD/sub_24Subtraining/SGD/mul_48training/SGD/mul_49*
T0*&
_output_shapes
:@
ж
training/SGD/Assign_24Assigntraining/SGD/Variable_12training/SGD/sub_24*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_12*
validate_shape(*&
_output_shapes
:@
s
training/SGD/mul_50MulSGD/momentum/readtraining/SGD/sub_24*
T0*&
_output_shapes
:@
}
training/SGD/add_12Addfire3/expand3x3/kernel/readtraining/SGD/mul_50*
T0*&
_output_shapes
:@
І
training/SGD/mul_51MulSGD/lr/readLtraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
u
training/SGD/sub_25Subtraining/SGD/add_12training/SGD/mul_51*
T0*&
_output_shapes
:@
в
training/SGD/Assign_25Assignfire3/expand3x3/kerneltraining/SGD/sub_25*
use_locking(*
T0*)
_class
loc:@fire3/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@
q
training/SGD/mul_52MulSGD/momentum/readtraining/SGD/Variable_13/read*
T0*
_output_shapes
:@

training/SGD/mul_53MulSGD/lr/read?training/SGD/gradients/fire3/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_26Subtraining/SGD/mul_52training/SGD/mul_53*
T0*
_output_shapes
:@
Ъ
training/SGD/Assign_26Assigntraining/SGD/Variable_13training/SGD/sub_26*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_13*
validate_shape(*
_output_shapes
:@
g
training/SGD/mul_54MulSGD/momentum/readtraining/SGD/sub_26*
T0*
_output_shapes
:@
o
training/SGD/add_13Addfire3/expand3x3/bias/readtraining/SGD/mul_54*
_output_shapes
:@*
T0

training/SGD/mul_55MulSGD/lr/read?training/SGD/gradients/fire3/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_27Subtraining/SGD/add_13training/SGD/mul_55*
_output_shapes
:@*
T0
Т
training/SGD/Assign_27Assignfire3/expand3x3/biastraining/SGD/sub_27*
use_locking(*
T0*'
_class
loc:@fire3/expand3x3/bias*
validate_shape(*
_output_shapes
:@
~
training/SGD/mul_56MulSGD/momentum/readtraining/SGD/Variable_14/read*
T0*'
_output_shapes
: 
Ј
training/SGD/mul_57MulSGD/lr/readMtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_28Subtraining/SGD/mul_56training/SGD/mul_57*'
_output_shapes
: *
T0
з
training/SGD/Assign_28Assigntraining/SGD/Variable_14training/SGD/sub_28*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_14*
validate_shape(*'
_output_shapes
: 
t
training/SGD/mul_58MulSGD/momentum/readtraining/SGD/sub_28*'
_output_shapes
: *
T0

training/SGD/add_14Addfire4/squeeze1x1/kernel/readtraining/SGD/mul_58*
T0*'
_output_shapes
: 
Ј
training/SGD/mul_59MulSGD/lr/readMtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_29Subtraining/SGD/add_14training/SGD/mul_59*
T0*'
_output_shapes
: 
е
training/SGD/Assign_29Assignfire4/squeeze1x1/kerneltraining/SGD/sub_29*'
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@fire4/squeeze1x1/kernel*
validate_shape(
q
training/SGD/mul_60MulSGD/momentum/readtraining/SGD/Variable_15/read*
_output_shapes
: *
T0

training/SGD/mul_61MulSGD/lr/read@training/SGD/gradients/fire4/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/SGD/sub_30Subtraining/SGD/mul_60training/SGD/mul_61*
T0*
_output_shapes
: 
Ъ
training/SGD/Assign_30Assigntraining/SGD/Variable_15training/SGD/sub_30*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_15*
validate_shape(*
_output_shapes
: 
g
training/SGD/mul_62MulSGD/momentum/readtraining/SGD/sub_30*
T0*
_output_shapes
: 
p
training/SGD/add_15Addfire4/squeeze1x1/bias/readtraining/SGD/mul_62*
_output_shapes
: *
T0

training/SGD/mul_63MulSGD/lr/read@training/SGD/gradients/fire4/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/SGD/sub_31Subtraining/SGD/add_15training/SGD/mul_63*
_output_shapes
: *
T0
Ф
training/SGD/Assign_31Assignfire4/squeeze1x1/biastraining/SGD/sub_31*(
_class
loc:@fire4/squeeze1x1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
~
training/SGD/mul_64MulSGD/momentum/readtraining/SGD/Variable_16/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_65MulSGD/lr/readLtraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_32Subtraining/SGD/mul_64training/SGD/mul_65*'
_output_shapes
: *
T0
з
training/SGD/Assign_32Assigntraining/SGD/Variable_16training/SGD/sub_32*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_16*
validate_shape(*'
_output_shapes
: 
t
training/SGD/mul_66MulSGD/momentum/readtraining/SGD/sub_32*'
_output_shapes
: *
T0
~
training/SGD/add_16Addfire4/expand1x1/kernel/readtraining/SGD/mul_66*'
_output_shapes
: *
T0
Ї
training/SGD/mul_67MulSGD/lr/readLtraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
: *
T0
v
training/SGD/sub_33Subtraining/SGD/add_16training/SGD/mul_67*'
_output_shapes
: *
T0
г
training/SGD/Assign_33Assignfire4/expand1x1/kerneltraining/SGD/sub_33*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@fire4/expand1x1/kernel
r
training/SGD/mul_68MulSGD/momentum/readtraining/SGD/Variable_17/read*
T0*
_output_shapes	
:

training/SGD/mul_69MulSGD/lr/read?training/SGD/gradients/fire4/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
j
training/SGD/sub_34Subtraining/SGD/mul_68training/SGD/mul_69*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_34Assigntraining/SGD/Variable_17training/SGD/sub_34*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_17
h
training/SGD/mul_70MulSGD/momentum/readtraining/SGD/sub_34*
T0*
_output_shapes	
:
p
training/SGD/add_17Addfire4/expand1x1/bias/readtraining/SGD/mul_70*
T0*
_output_shapes	
:

training/SGD/mul_71MulSGD/lr/read?training/SGD/gradients/fire4/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/SGD/sub_35Subtraining/SGD/add_17training/SGD/mul_71*
T0*
_output_shapes	
:
У
training/SGD/Assign_35Assignfire4/expand1x1/biastraining/SGD/sub_35*
T0*'
_class
loc:@fire4/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
~
training/SGD/mul_72MulSGD/momentum/readtraining/SGD/Variable_18/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_73MulSGD/lr/readLtraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_36Subtraining/SGD/mul_72training/SGD/mul_73*'
_output_shapes
: *
T0
з
training/SGD/Assign_36Assigntraining/SGD/Variable_18training/SGD/sub_36*+
_class!
loc:@training/SGD/Variable_18*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0
t
training/SGD/mul_74MulSGD/momentum/readtraining/SGD/sub_36*
T0*'
_output_shapes
: 
~
training/SGD/add_18Addfire4/expand3x3/kernel/readtraining/SGD/mul_74*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_75MulSGD/lr/readLtraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_37Subtraining/SGD/add_18training/SGD/mul_75*'
_output_shapes
: *
T0
г
training/SGD/Assign_37Assignfire4/expand3x3/kerneltraining/SGD/sub_37*
use_locking(*
T0*)
_class
loc:@fire4/expand3x3/kernel*
validate_shape(*'
_output_shapes
: 
r
training/SGD/mul_76MulSGD/momentum/readtraining/SGD/Variable_19/read*
_output_shapes	
:*
T0

training/SGD/mul_77MulSGD/lr/read?training/SGD/gradients/fire4/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/SGD/sub_38Subtraining/SGD/mul_76training/SGD/mul_77*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_38Assigntraining/SGD/Variable_19training/SGD/sub_38*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_19
h
training/SGD/mul_78MulSGD/momentum/readtraining/SGD/sub_38*
T0*
_output_shapes	
:
p
training/SGD/add_19Addfire4/expand3x3/bias/readtraining/SGD/mul_78*
_output_shapes	
:*
T0

training/SGD/mul_79MulSGD/lr/read?training/SGD/gradients/fire4/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/SGD/sub_39Subtraining/SGD/add_19training/SGD/mul_79*
T0*
_output_shapes	
:
У
training/SGD/Assign_39Assignfire4/expand3x3/biastraining/SGD/sub_39*'
_class
loc:@fire4/expand3x3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
~
training/SGD/mul_80MulSGD/momentum/readtraining/SGD/Variable_20/read*'
_output_shapes
: *
T0
Ј
training/SGD/mul_81MulSGD/lr/readMtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_40Subtraining/SGD/mul_80training/SGD/mul_81*'
_output_shapes
: *
T0
з
training/SGD/Assign_40Assigntraining/SGD/Variable_20training/SGD/sub_40*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_20*
validate_shape(*'
_output_shapes
: 
t
training/SGD/mul_82MulSGD/momentum/readtraining/SGD/sub_40*'
_output_shapes
: *
T0

training/SGD/add_20Addfire5/squeeze1x1/kernel/readtraining/SGD/mul_82*
T0*'
_output_shapes
: 
Ј
training/SGD/mul_83MulSGD/lr/readMtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_41Subtraining/SGD/add_20training/SGD/mul_83*
T0*'
_output_shapes
: 
е
training/SGD/Assign_41Assignfire5/squeeze1x1/kerneltraining/SGD/sub_41**
_class 
loc:@fire5/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0
q
training/SGD/mul_84MulSGD/momentum/readtraining/SGD/Variable_21/read*
T0*
_output_shapes
: 

training/SGD/mul_85MulSGD/lr/read@training/SGD/gradients/fire5/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/SGD/sub_42Subtraining/SGD/mul_84training/SGD/mul_85*
T0*
_output_shapes
: 
Ъ
training/SGD/Assign_42Assigntraining/SGD/Variable_21training/SGD/sub_42*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_21*
validate_shape(*
_output_shapes
: 
g
training/SGD/mul_86MulSGD/momentum/readtraining/SGD/sub_42*
T0*
_output_shapes
: 
p
training/SGD/add_21Addfire5/squeeze1x1/bias/readtraining/SGD/mul_86*
T0*
_output_shapes
: 

training/SGD/mul_87MulSGD/lr/read@training/SGD/gradients/fire5/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
i
training/SGD/sub_43Subtraining/SGD/add_21training/SGD/mul_87*
T0*
_output_shapes
: 
Ф
training/SGD/Assign_43Assignfire5/squeeze1x1/biastraining/SGD/sub_43*
use_locking(*
T0*(
_class
loc:@fire5/squeeze1x1/bias*
validate_shape(*
_output_shapes
: 
~
training/SGD/mul_88MulSGD/momentum/readtraining/SGD/Variable_22/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_89MulSGD/lr/readLtraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_44Subtraining/SGD/mul_88training/SGD/mul_89*'
_output_shapes
: *
T0
з
training/SGD/Assign_44Assigntraining/SGD/Variable_22training/SGD/sub_44*
T0*+
_class!
loc:@training/SGD/Variable_22*
validate_shape(*'
_output_shapes
: *
use_locking(
t
training/SGD/mul_90MulSGD/momentum/readtraining/SGD/sub_44*
T0*'
_output_shapes
: 
~
training/SGD/add_22Addfire5/expand1x1/kernel/readtraining/SGD/mul_90*'
_output_shapes
: *
T0
Ї
training/SGD/mul_91MulSGD/lr/readLtraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_45Subtraining/SGD/add_22training/SGD/mul_91*'
_output_shapes
: *
T0
г
training/SGD/Assign_45Assignfire5/expand1x1/kerneltraining/SGD/sub_45*)
_class
loc:@fire5/expand1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0
r
training/SGD/mul_92MulSGD/momentum/readtraining/SGD/Variable_23/read*
T0*
_output_shapes	
:

training/SGD/mul_93MulSGD/lr/read?training/SGD/gradients/fire5/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/SGD/sub_46Subtraining/SGD/mul_92training/SGD/mul_93*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_46Assigntraining/SGD/Variable_23training/SGD/sub_46*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_23*
validate_shape(
h
training/SGD/mul_94MulSGD/momentum/readtraining/SGD/sub_46*
T0*
_output_shapes	
:
p
training/SGD/add_23Addfire5/expand1x1/bias/readtraining/SGD/mul_94*
_output_shapes	
:*
T0

training/SGD/mul_95MulSGD/lr/read?training/SGD/gradients/fire5/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
j
training/SGD/sub_47Subtraining/SGD/add_23training/SGD/mul_95*
T0*
_output_shapes	
:
У
training/SGD/Assign_47Assignfire5/expand1x1/biastraining/SGD/sub_47*
T0*'
_class
loc:@fire5/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
~
training/SGD/mul_96MulSGD/momentum/readtraining/SGD/Variable_24/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_97MulSGD/lr/readLtraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
: *
T0
v
training/SGD/sub_48Subtraining/SGD/mul_96training/SGD/mul_97*'
_output_shapes
: *
T0
з
training/SGD/Assign_48Assigntraining/SGD/Variable_24training/SGD/sub_48*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_24
t
training/SGD/mul_98MulSGD/momentum/readtraining/SGD/sub_48*
T0*'
_output_shapes
: 
~
training/SGD/add_24Addfire5/expand3x3/kernel/readtraining/SGD/mul_98*'
_output_shapes
: *
T0
Ї
training/SGD/mul_99MulSGD/lr/readLtraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_49Subtraining/SGD/add_24training/SGD/mul_99*
T0*'
_output_shapes
: 
г
training/SGD/Assign_49Assignfire5/expand3x3/kerneltraining/SGD/sub_49*'
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@fire5/expand3x3/kernel*
validate_shape(
s
training/SGD/mul_100MulSGD/momentum/readtraining/SGD/Variable_25/read*
T0*
_output_shapes	
:

training/SGD/mul_101MulSGD/lr/read?training/SGD/gradients/fire5/expand3x3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
l
training/SGD/sub_50Subtraining/SGD/mul_100training/SGD/mul_101*
_output_shapes	
:*
T0
Ы
training/SGD/Assign_50Assigntraining/SGD/Variable_25training/SGD/sub_50*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_25
i
training/SGD/mul_102MulSGD/momentum/readtraining/SGD/sub_50*
T0*
_output_shapes	
:
q
training/SGD/add_25Addfire5/expand3x3/bias/readtraining/SGD/mul_102*
_output_shapes	
:*
T0

training/SGD/mul_103MulSGD/lr/read?training/SGD/gradients/fire5/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
k
training/SGD/sub_51Subtraining/SGD/add_25training/SGD/mul_103*
_output_shapes	
:*
T0
У
training/SGD/Assign_51Assignfire5/expand3x3/biastraining/SGD/sub_51*
use_locking(*
T0*'
_class
loc:@fire5/expand3x3/bias*
validate_shape(*
_output_shapes	
:

training/SGD/mul_104MulSGD/momentum/readtraining/SGD/Variable_26/read*'
_output_shapes
:0*
T0
Љ
training/SGD/mul_105MulSGD/lr/readMtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0
x
training/SGD/sub_52Subtraining/SGD/mul_104training/SGD/mul_105*
T0*'
_output_shapes
:0
з
training/SGD/Assign_52Assigntraining/SGD/Variable_26training/SGD/sub_52*+
_class!
loc:@training/SGD/Variable_26*
validate_shape(*'
_output_shapes
:0*
use_locking(*
T0
u
training/SGD/mul_106MulSGD/momentum/readtraining/SGD/sub_52*
T0*'
_output_shapes
:0

training/SGD/add_26Addfire6/squeeze1x1/kernel/readtraining/SGD/mul_106*
T0*'
_output_shapes
:0
Љ
training/SGD/mul_107MulSGD/lr/readMtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:0*
T0
w
training/SGD/sub_53Subtraining/SGD/add_26training/SGD/mul_107*
T0*'
_output_shapes
:0
е
training/SGD/Assign_53Assignfire6/squeeze1x1/kerneltraining/SGD/sub_53*
use_locking(*
T0**
_class 
loc:@fire6/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0
r
training/SGD/mul_108MulSGD/momentum/readtraining/SGD/Variable_27/read*
T0*
_output_shapes
:0

training/SGD/mul_109MulSGD/lr/read@training/SGD/gradients/fire6/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
k
training/SGD/sub_54Subtraining/SGD/mul_108training/SGD/mul_109*
T0*
_output_shapes
:0
Ъ
training/SGD/Assign_54Assigntraining/SGD/Variable_27training/SGD/sub_54*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_27
h
training/SGD/mul_110MulSGD/momentum/readtraining/SGD/sub_54*
T0*
_output_shapes
:0
q
training/SGD/add_27Addfire6/squeeze1x1/bias/readtraining/SGD/mul_110*
T0*
_output_shapes
:0

training/SGD/mul_111MulSGD/lr/read@training/SGD/gradients/fire6/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
j
training/SGD/sub_55Subtraining/SGD/add_27training/SGD/mul_111*
T0*
_output_shapes
:0
Ф
training/SGD/Assign_55Assignfire6/squeeze1x1/biastraining/SGD/sub_55*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*(
_class
loc:@fire6/squeeze1x1/bias

training/SGD/mul_112MulSGD/momentum/readtraining/SGD/Variable_28/read*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_113MulSGD/lr/readLtraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
x
training/SGD/sub_56Subtraining/SGD/mul_112training/SGD/mul_113*'
_output_shapes
:0Р*
T0
з
training/SGD/Assign_56Assigntraining/SGD/Variable_28training/SGD/sub_56*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_28*
validate_shape(*'
_output_shapes
:0Р
u
training/SGD/mul_114MulSGD/momentum/readtraining/SGD/sub_56*
T0*'
_output_shapes
:0Р

training/SGD/add_28Addfire6/expand1x1/kernel/readtraining/SGD/mul_114*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_115MulSGD/lr/readLtraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_57Subtraining/SGD/add_28training/SGD/mul_115*'
_output_shapes
:0Р*
T0
г
training/SGD/Assign_57Assignfire6/expand1x1/kerneltraining/SGD/sub_57*
use_locking(*
T0*)
_class
loc:@fire6/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р
s
training/SGD/mul_116MulSGD/momentum/readtraining/SGD/Variable_29/read*
T0*
_output_shapes	
:Р

training/SGD/mul_117MulSGD/lr/read?training/SGD/gradients/fire6/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
l
training/SGD/sub_58Subtraining/SGD/mul_116training/SGD/mul_117*
_output_shapes	
:Р*
T0
Ы
training/SGD/Assign_58Assigntraining/SGD/Variable_29training/SGD/sub_58*+
_class!
loc:@training/SGD/Variable_29*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0
i
training/SGD/mul_118MulSGD/momentum/readtraining/SGD/sub_58*
T0*
_output_shapes	
:Р
q
training/SGD/add_29Addfire6/expand1x1/bias/readtraining/SGD/mul_118*
T0*
_output_shapes	
:Р

training/SGD/mul_119MulSGD/lr/read?training/SGD/gradients/fire6/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_59Subtraining/SGD/add_29training/SGD/mul_119*
T0*
_output_shapes	
:Р
У
training/SGD/Assign_59Assignfire6/expand1x1/biastraining/SGD/sub_59*'
_class
loc:@fire6/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0

training/SGD/mul_120MulSGD/momentum/readtraining/SGD/Variable_30/read*'
_output_shapes
:0Р*
T0
Ј
training/SGD/mul_121MulSGD/lr/readLtraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
x
training/SGD/sub_60Subtraining/SGD/mul_120training/SGD/mul_121*
T0*'
_output_shapes
:0Р
з
training/SGD/Assign_60Assigntraining/SGD/Variable_30training/SGD/sub_60*
validate_shape(*'
_output_shapes
:0Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_30
u
training/SGD/mul_122MulSGD/momentum/readtraining/SGD/sub_60*
T0*'
_output_shapes
:0Р

training/SGD/add_30Addfire6/expand3x3/kernel/readtraining/SGD/mul_122*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_123MulSGD/lr/readLtraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_61Subtraining/SGD/add_30training/SGD/mul_123*'
_output_shapes
:0Р*
T0
г
training/SGD/Assign_61Assignfire6/expand3x3/kerneltraining/SGD/sub_61*'
_output_shapes
:0Р*
use_locking(*
T0*)
_class
loc:@fire6/expand3x3/kernel*
validate_shape(
s
training/SGD/mul_124MulSGD/momentum/readtraining/SGD/Variable_31/read*
T0*
_output_shapes	
:Р

training/SGD/mul_125MulSGD/lr/read?training/SGD/gradients/fire6/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
l
training/SGD/sub_62Subtraining/SGD/mul_124training/SGD/mul_125*
T0*
_output_shapes	
:Р
Ы
training/SGD/Assign_62Assigntraining/SGD/Variable_31training/SGD/sub_62*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_31
i
training/SGD/mul_126MulSGD/momentum/readtraining/SGD/sub_62*
_output_shapes	
:Р*
T0
q
training/SGD/add_31Addfire6/expand3x3/bias/readtraining/SGD/mul_126*
T0*
_output_shapes	
:Р

training/SGD/mul_127MulSGD/lr/read?training/SGD/gradients/fire6/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_63Subtraining/SGD/add_31training/SGD/mul_127*
_output_shapes	
:Р*
T0
У
training/SGD/Assign_63Assignfire6/expand3x3/biastraining/SGD/sub_63*
T0*'
_class
loc:@fire6/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking(

training/SGD/mul_128MulSGD/momentum/readtraining/SGD/Variable_32/read*'
_output_shapes
:0*
T0
Љ
training/SGD/mul_129MulSGD/lr/readMtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:0*
T0
x
training/SGD/sub_64Subtraining/SGD/mul_128training/SGD/mul_129*'
_output_shapes
:0*
T0
з
training/SGD/Assign_64Assigntraining/SGD/Variable_32training/SGD/sub_64*
validate_shape(*'
_output_shapes
:0*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_32
u
training/SGD/mul_130MulSGD/momentum/readtraining/SGD/sub_64*
T0*'
_output_shapes
:0

training/SGD/add_32Addfire7/squeeze1x1/kernel/readtraining/SGD/mul_130*
T0*'
_output_shapes
:0
Љ
training/SGD/mul_131MulSGD/lr/readMtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0
w
training/SGD/sub_65Subtraining/SGD/add_32training/SGD/mul_131*
T0*'
_output_shapes
:0
е
training/SGD/Assign_65Assignfire7/squeeze1x1/kerneltraining/SGD/sub_65*
use_locking(*
T0**
_class 
loc:@fire7/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0
r
training/SGD/mul_132MulSGD/momentum/readtraining/SGD/Variable_33/read*
_output_shapes
:0*
T0

training/SGD/mul_133MulSGD/lr/read@training/SGD/gradients/fire7/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
k
training/SGD/sub_66Subtraining/SGD/mul_132training/SGD/mul_133*
T0*
_output_shapes
:0
Ъ
training/SGD/Assign_66Assigntraining/SGD/Variable_33training/SGD/sub_66*+
_class!
loc:@training/SGD/Variable_33*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0
h
training/SGD/mul_134MulSGD/momentum/readtraining/SGD/sub_66*
T0*
_output_shapes
:0
q
training/SGD/add_33Addfire7/squeeze1x1/bias/readtraining/SGD/mul_134*
T0*
_output_shapes
:0

training/SGD/mul_135MulSGD/lr/read@training/SGD/gradients/fire7/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
j
training/SGD/sub_67Subtraining/SGD/add_33training/SGD/mul_135*
_output_shapes
:0*
T0
Ф
training/SGD/Assign_67Assignfire7/squeeze1x1/biastraining/SGD/sub_67*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*(
_class
loc:@fire7/squeeze1x1/bias

training/SGD/mul_136MulSGD/momentum/readtraining/SGD/Variable_34/read*'
_output_shapes
:0Р*
T0
Ј
training/SGD/mul_137MulSGD/lr/readLtraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:0Р*
T0
x
training/SGD/sub_68Subtraining/SGD/mul_136training/SGD/mul_137*'
_output_shapes
:0Р*
T0
з
training/SGD/Assign_68Assigntraining/SGD/Variable_34training/SGD/sub_68*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_34*
validate_shape(*'
_output_shapes
:0Р
u
training/SGD/mul_138MulSGD/momentum/readtraining/SGD/sub_68*'
_output_shapes
:0Р*
T0

training/SGD/add_34Addfire7/expand1x1/kernel/readtraining/SGD/mul_138*'
_output_shapes
:0Р*
T0
Ј
training/SGD/mul_139MulSGD/lr/readLtraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_69Subtraining/SGD/add_34training/SGD/mul_139*
T0*'
_output_shapes
:0Р
г
training/SGD/Assign_69Assignfire7/expand1x1/kerneltraining/SGD/sub_69*
T0*)
_class
loc:@fire7/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р*
use_locking(
s
training/SGD/mul_140MulSGD/momentum/readtraining/SGD/Variable_35/read*
T0*
_output_shapes	
:Р

training/SGD/mul_141MulSGD/lr/read?training/SGD/gradients/fire7/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:Р*
T0
l
training/SGD/sub_70Subtraining/SGD/mul_140training/SGD/mul_141*
_output_shapes	
:Р*
T0
Ы
training/SGD/Assign_70Assigntraining/SGD/Variable_35training/SGD/sub_70*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_35
i
training/SGD/mul_142MulSGD/momentum/readtraining/SGD/sub_70*
T0*
_output_shapes	
:Р
q
training/SGD/add_35Addfire7/expand1x1/bias/readtraining/SGD/mul_142*
T0*
_output_shapes	
:Р

training/SGD/mul_143MulSGD/lr/read?training/SGD/gradients/fire7/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_71Subtraining/SGD/add_35training/SGD/mul_143*
_output_shapes	
:Р*
T0
У
training/SGD/Assign_71Assignfire7/expand1x1/biastraining/SGD/sub_71*
_output_shapes	
:Р*
use_locking(*
T0*'
_class
loc:@fire7/expand1x1/bias*
validate_shape(

training/SGD/mul_144MulSGD/momentum/readtraining/SGD/Variable_36/read*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_145MulSGD/lr/readLtraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
x
training/SGD/sub_72Subtraining/SGD/mul_144training/SGD/mul_145*
T0*'
_output_shapes
:0Р
з
training/SGD/Assign_72Assigntraining/SGD/Variable_36training/SGD/sub_72*+
_class!
loc:@training/SGD/Variable_36*
validate_shape(*'
_output_shapes
:0Р*
use_locking(*
T0
u
training/SGD/mul_146MulSGD/momentum/readtraining/SGD/sub_72*
T0*'
_output_shapes
:0Р

training/SGD/add_36Addfire7/expand3x3/kernel/readtraining/SGD/mul_146*'
_output_shapes
:0Р*
T0
Ј
training/SGD/mul_147MulSGD/lr/readLtraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_73Subtraining/SGD/add_36training/SGD/mul_147*
T0*'
_output_shapes
:0Р
г
training/SGD/Assign_73Assignfire7/expand3x3/kerneltraining/SGD/sub_73*
use_locking(*
T0*)
_class
loc:@fire7/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р
s
training/SGD/mul_148MulSGD/momentum/readtraining/SGD/Variable_37/read*
_output_shapes	
:Р*
T0

training/SGD/mul_149MulSGD/lr/read?training/SGD/gradients/fire7/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
l
training/SGD/sub_74Subtraining/SGD/mul_148training/SGD/mul_149*
T0*
_output_shapes	
:Р
Ы
training/SGD/Assign_74Assigntraining/SGD/Variable_37training/SGD/sub_74*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_37
i
training/SGD/mul_150MulSGD/momentum/readtraining/SGD/sub_74*
_output_shapes	
:Р*
T0
q
training/SGD/add_37Addfire7/expand3x3/bias/readtraining/SGD/mul_150*
T0*
_output_shapes	
:Р

training/SGD/mul_151MulSGD/lr/read?training/SGD/gradients/fire7/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_75Subtraining/SGD/add_37training/SGD/mul_151*
T0*
_output_shapes	
:Р
У
training/SGD/Assign_75Assignfire7/expand3x3/biastraining/SGD/sub_75*
use_locking(*
T0*'
_class
loc:@fire7/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р

training/SGD/mul_152MulSGD/momentum/readtraining/SGD/Variable_38/read*'
_output_shapes
:@*
T0
Љ
training/SGD/mul_153MulSGD/lr/readMtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
x
training/SGD/sub_76Subtraining/SGD/mul_152training/SGD/mul_153*
T0*'
_output_shapes
:@
з
training/SGD/Assign_76Assigntraining/SGD/Variable_38training/SGD/sub_76*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_38*
validate_shape(*'
_output_shapes
:@
u
training/SGD/mul_154MulSGD/momentum/readtraining/SGD/sub_76*
T0*'
_output_shapes
:@

training/SGD/add_38Addfire8/squeeze1x1/kernel/readtraining/SGD/mul_154*
T0*'
_output_shapes
:@
Љ
training/SGD/mul_155MulSGD/lr/readMtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_77Subtraining/SGD/add_38training/SGD/mul_155*'
_output_shapes
:@*
T0
е
training/SGD/Assign_77Assignfire8/squeeze1x1/kerneltraining/SGD/sub_77*
use_locking(*
T0**
_class 
loc:@fire8/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@
r
training/SGD/mul_156MulSGD/momentum/readtraining/SGD/Variable_39/read*
T0*
_output_shapes
:@

training/SGD/mul_157MulSGD/lr/read@training/SGD/gradients/fire8/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
k
training/SGD/sub_78Subtraining/SGD/mul_156training/SGD/mul_157*
T0*
_output_shapes
:@
Ъ
training/SGD/Assign_78Assigntraining/SGD/Variable_39training/SGD/sub_78*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_39
h
training/SGD/mul_158MulSGD/momentum/readtraining/SGD/sub_78*
T0*
_output_shapes
:@
q
training/SGD/add_39Addfire8/squeeze1x1/bias/readtraining/SGD/mul_158*
_output_shapes
:@*
T0

training/SGD/mul_159MulSGD/lr/read@training/SGD/gradients/fire8/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
j
training/SGD/sub_79Subtraining/SGD/add_39training/SGD/mul_159*
_output_shapes
:@*
T0
Ф
training/SGD/Assign_79Assignfire8/squeeze1x1/biastraining/SGD/sub_79*
use_locking(*
T0*(
_class
loc:@fire8/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@

training/SGD/mul_160MulSGD/momentum/readtraining/SGD/Variable_40/read*'
_output_shapes
:@*
T0
Ј
training/SGD/mul_161MulSGD/lr/readLtraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
x
training/SGD/sub_80Subtraining/SGD/mul_160training/SGD/mul_161*
T0*'
_output_shapes
:@
з
training/SGD/Assign_80Assigntraining/SGD/Variable_40training/SGD/sub_80*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_40*
validate_shape(*'
_output_shapes
:@
u
training/SGD/mul_162MulSGD/momentum/readtraining/SGD/sub_80*
T0*'
_output_shapes
:@

training/SGD/add_40Addfire8/expand1x1/kernel/readtraining/SGD/mul_162*'
_output_shapes
:@*
T0
Ј
training/SGD/mul_163MulSGD/lr/readLtraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
w
training/SGD/sub_81Subtraining/SGD/add_40training/SGD/mul_163*
T0*'
_output_shapes
:@
г
training/SGD/Assign_81Assignfire8/expand1x1/kerneltraining/SGD/sub_81*)
_class
loc:@fire8/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0
s
training/SGD/mul_164MulSGD/momentum/readtraining/SGD/Variable_41/read*
T0*
_output_shapes	
:

training/SGD/mul_165MulSGD/lr/read?training/SGD/gradients/fire8/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/SGD/sub_82Subtraining/SGD/mul_164training/SGD/mul_165*
_output_shapes	
:*
T0
Ы
training/SGD/Assign_82Assigntraining/SGD/Variable_41training/SGD/sub_82*
T0*+
_class!
loc:@training/SGD/Variable_41*
validate_shape(*
_output_shapes	
:*
use_locking(
i
training/SGD/mul_166MulSGD/momentum/readtraining/SGD/sub_82*
_output_shapes	
:*
T0
q
training/SGD/add_41Addfire8/expand1x1/bias/readtraining/SGD/mul_166*
_output_shapes	
:*
T0

training/SGD/mul_167MulSGD/lr/read?training/SGD/gradients/fire8/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
k
training/SGD/sub_83Subtraining/SGD/add_41training/SGD/mul_167*
T0*
_output_shapes	
:
У
training/SGD/Assign_83Assignfire8/expand1x1/biastraining/SGD/sub_83*'
_class
loc:@fire8/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/SGD/mul_168MulSGD/momentum/readtraining/SGD/Variable_42/read*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_169MulSGD/lr/readLtraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
x
training/SGD/sub_84Subtraining/SGD/mul_168training/SGD/mul_169*
T0*'
_output_shapes
:@
з
training/SGD/Assign_84Assigntraining/SGD/Variable_42training/SGD/sub_84*'
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_42*
validate_shape(
u
training/SGD/mul_170MulSGD/momentum/readtraining/SGD/sub_84*'
_output_shapes
:@*
T0

training/SGD/add_42Addfire8/expand3x3/kernel/readtraining/SGD/mul_170*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_171MulSGD/lr/readLtraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_85Subtraining/SGD/add_42training/SGD/mul_171*'
_output_shapes
:@*
T0
г
training/SGD/Assign_85Assignfire8/expand3x3/kerneltraining/SGD/sub_85*
T0*)
_class
loc:@fire8/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
s
training/SGD/mul_172MulSGD/momentum/readtraining/SGD/Variable_43/read*
_output_shapes	
:*
T0

training/SGD/mul_173MulSGD/lr/read?training/SGD/gradients/fire8/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/SGD/sub_86Subtraining/SGD/mul_172training/SGD/mul_173*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_86Assigntraining/SGD/Variable_43training/SGD/sub_86*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_43*
validate_shape(*
_output_shapes	
:
i
training/SGD/mul_174MulSGD/momentum/readtraining/SGD/sub_86*
T0*
_output_shapes	
:
q
training/SGD/add_43Addfire8/expand3x3/bias/readtraining/SGD/mul_174*
T0*
_output_shapes	
:

training/SGD/mul_175MulSGD/lr/read?training/SGD/gradients/fire8/expand3x3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
k
training/SGD/sub_87Subtraining/SGD/add_43training/SGD/mul_175*
_output_shapes	
:*
T0
У
training/SGD/Assign_87Assignfire8/expand3x3/biastraining/SGD/sub_87*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire8/expand3x3/bias*
validate_shape(

training/SGD/mul_176MulSGD/momentum/readtraining/SGD/Variable_44/read*
T0*'
_output_shapes
:@
Љ
training/SGD/mul_177MulSGD/lr/readMtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
x
training/SGD/sub_88Subtraining/SGD/mul_176training/SGD/mul_177*
T0*'
_output_shapes
:@
з
training/SGD/Assign_88Assigntraining/SGD/Variable_44training/SGD/sub_88*+
_class!
loc:@training/SGD/Variable_44*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0
u
training/SGD/mul_178MulSGD/momentum/readtraining/SGD/sub_88*
T0*'
_output_shapes
:@

training/SGD/add_44Addfire9/squeeze1x1/kernel/readtraining/SGD/mul_178*
T0*'
_output_shapes
:@
Љ
training/SGD/mul_179MulSGD/lr/readMtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
w
training/SGD/sub_89Subtraining/SGD/add_44training/SGD/mul_179*'
_output_shapes
:@*
T0
е
training/SGD/Assign_89Assignfire9/squeeze1x1/kerneltraining/SGD/sub_89*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@fire9/squeeze1x1/kernel
r
training/SGD/mul_180MulSGD/momentum/readtraining/SGD/Variable_45/read*
T0*
_output_shapes
:@

training/SGD/mul_181MulSGD/lr/read@training/SGD/gradients/fire9/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
k
training/SGD/sub_90Subtraining/SGD/mul_180training/SGD/mul_181*
_output_shapes
:@*
T0
Ъ
training/SGD/Assign_90Assigntraining/SGD/Variable_45training/SGD/sub_90*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_45*
validate_shape(*
_output_shapes
:@
h
training/SGD/mul_182MulSGD/momentum/readtraining/SGD/sub_90*
T0*
_output_shapes
:@
q
training/SGD/add_45Addfire9/squeeze1x1/bias/readtraining/SGD/mul_182*
T0*
_output_shapes
:@

training/SGD/mul_183MulSGD/lr/read@training/SGD/gradients/fire9/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
j
training/SGD/sub_91Subtraining/SGD/add_45training/SGD/mul_183*
T0*
_output_shapes
:@
Ф
training/SGD/Assign_91Assignfire9/squeeze1x1/biastraining/SGD/sub_91*
T0*(
_class
loc:@fire9/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(

training/SGD/mul_184MulSGD/momentum/readtraining/SGD/Variable_46/read*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_185MulSGD/lr/readLtraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
x
training/SGD/sub_92Subtraining/SGD/mul_184training/SGD/mul_185*
T0*'
_output_shapes
:@
з
training/SGD/Assign_92Assigntraining/SGD/Variable_46training/SGD/sub_92*'
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_46*
validate_shape(
u
training/SGD/mul_186MulSGD/momentum/readtraining/SGD/sub_92*
T0*'
_output_shapes
:@

training/SGD/add_46Addfire9/expand1x1/kernel/readtraining/SGD/mul_186*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_187MulSGD/lr/readLtraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_93Subtraining/SGD/add_46training/SGD/mul_187*
T0*'
_output_shapes
:@
г
training/SGD/Assign_93Assignfire9/expand1x1/kerneltraining/SGD/sub_93*
T0*)
_class
loc:@fire9/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
s
training/SGD/mul_188MulSGD/momentum/readtraining/SGD/Variable_47/read*
T0*
_output_shapes	
:

training/SGD/mul_189MulSGD/lr/read?training/SGD/gradients/fire9/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/SGD/sub_94Subtraining/SGD/mul_188training/SGD/mul_189*
_output_shapes	
:*
T0
Ы
training/SGD/Assign_94Assigntraining/SGD/Variable_47training/SGD/sub_94*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_47*
validate_shape(*
_output_shapes	
:
i
training/SGD/mul_190MulSGD/momentum/readtraining/SGD/sub_94*
_output_shapes	
:*
T0
q
training/SGD/add_47Addfire9/expand1x1/bias/readtraining/SGD/mul_190*
_output_shapes	
:*
T0

training/SGD/mul_191MulSGD/lr/read?training/SGD/gradients/fire9/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
k
training/SGD/sub_95Subtraining/SGD/add_47training/SGD/mul_191*
T0*
_output_shapes	
:
У
training/SGD/Assign_95Assignfire9/expand1x1/biastraining/SGD/sub_95*
T0*'
_class
loc:@fire9/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

training/SGD/mul_192MulSGD/momentum/readtraining/SGD/Variable_48/read*'
_output_shapes
:@*
T0
Ј
training/SGD/mul_193MulSGD/lr/readLtraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
x
training/SGD/sub_96Subtraining/SGD/mul_192training/SGD/mul_193*
T0*'
_output_shapes
:@
з
training/SGD/Assign_96Assigntraining/SGD/Variable_48training/SGD/sub_96*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_48*
validate_shape(*'
_output_shapes
:@
u
training/SGD/mul_194MulSGD/momentum/readtraining/SGD/sub_96*
T0*'
_output_shapes
:@

training/SGD/add_48Addfire9/expand3x3/kernel/readtraining/SGD/mul_194*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_195MulSGD/lr/readLtraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_97Subtraining/SGD/add_48training/SGD/mul_195*
T0*'
_output_shapes
:@
г
training/SGD/Assign_97Assignfire9/expand3x3/kerneltraining/SGD/sub_97*
use_locking(*
T0*)
_class
loc:@fire9/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@
s
training/SGD/mul_196MulSGD/momentum/readtraining/SGD/Variable_49/read*
T0*
_output_shapes	
:

training/SGD/mul_197MulSGD/lr/read?training/SGD/gradients/fire9/expand3x3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
l
training/SGD/sub_98Subtraining/SGD/mul_196training/SGD/mul_197*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_98Assigntraining/SGD/Variable_49training/SGD/sub_98*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_49*
validate_shape(*
_output_shapes	
:
i
training/SGD/mul_198MulSGD/momentum/readtraining/SGD/sub_98*
T0*
_output_shapes	
:
q
training/SGD/add_49Addfire9/expand3x3/bias/readtraining/SGD/mul_198*
_output_shapes	
:*
T0

training/SGD/mul_199MulSGD/lr/read?training/SGD/gradients/fire9/expand3x3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
k
training/SGD/sub_99Subtraining/SGD/add_49training/SGD/mul_199*
T0*
_output_shapes	
:
У
training/SGD/Assign_99Assignfire9/expand3x3/biastraining/SGD/sub_99*
T0*'
_class
loc:@fire9/expand3x3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

training/SGD/mul_200MulSGD/momentum/readtraining/SGD/Variable_50/read*
T0*'
_output_shapes
:

Ё
training/SGD/mul_201MulSGD/lr/readEtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:
*
T0
y
training/SGD/sub_100Subtraining/SGD/mul_200training/SGD/mul_201*
T0*'
_output_shapes
:

й
training/SGD/Assign_100Assigntraining/SGD/Variable_50training/SGD/sub_100*
validate_shape(*'
_output_shapes
:
*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_50
v
training/SGD/mul_202MulSGD/momentum/readtraining/SGD/sub_100*
T0*'
_output_shapes
:

x
training/SGD/add_50Addconv10_1/kernel/readtraining/SGD/mul_202*'
_output_shapes
:
*
T0
Ё
training/SGD/mul_203MulSGD/lr/readEtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:

x
training/SGD/sub_101Subtraining/SGD/add_50training/SGD/mul_203*
T0*'
_output_shapes
:

Ч
training/SGD/Assign_101Assignconv10_1/kerneltraining/SGD/sub_101*
use_locking(*
T0*"
_class
loc:@conv10_1/kernel*
validate_shape(*'
_output_shapes
:

r
training/SGD/mul_204MulSGD/momentum/readtraining/SGD/Variable_51/read*
_output_shapes
:
*
T0

training/SGD/mul_205MulSGD/lr/read8training/SGD/gradients/conv10_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

l
training/SGD/sub_102Subtraining/SGD/mul_204training/SGD/mul_205*
T0*
_output_shapes
:

Ь
training/SGD/Assign_102Assigntraining/SGD/Variable_51training/SGD/sub_102*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_51*
validate_shape(*
_output_shapes
:

i
training/SGD/mul_206MulSGD/momentum/readtraining/SGD/sub_102*
_output_shapes
:
*
T0
i
training/SGD/add_51Addconv10_1/bias/readtraining/SGD/mul_206*
_output_shapes
:
*
T0

training/SGD/mul_207MulSGD/lr/read8training/SGD/gradients/conv10_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

k
training/SGD/sub_103Subtraining/SGD/add_51training/SGD/mul_207*
_output_shapes
:
*
T0
Ж
training/SGD/Assign_103Assignconv10_1/biastraining/SGD/sub_103*
T0* 
_class
loc:@conv10_1/bias*
validate_shape(*
_output_shapes
:
*
use_locking(
є
training/group_depsNoOp^loss_2/mul^metrics/acc/Mean^training/SGD/Assign^training/SGD/AssignAdd^training/SGD/Assign_1^training/SGD/Assign_10^training/SGD/Assign_100^training/SGD/Assign_101^training/SGD/Assign_102^training/SGD/Assign_103^training/SGD/Assign_11^training/SGD/Assign_12^training/SGD/Assign_13^training/SGD/Assign_14^training/SGD/Assign_15^training/SGD/Assign_16^training/SGD/Assign_17^training/SGD/Assign_18^training/SGD/Assign_19^training/SGD/Assign_2^training/SGD/Assign_20^training/SGD/Assign_21^training/SGD/Assign_22^training/SGD/Assign_23^training/SGD/Assign_24^training/SGD/Assign_25^training/SGD/Assign_26^training/SGD/Assign_27^training/SGD/Assign_28^training/SGD/Assign_29^training/SGD/Assign_3^training/SGD/Assign_30^training/SGD/Assign_31^training/SGD/Assign_32^training/SGD/Assign_33^training/SGD/Assign_34^training/SGD/Assign_35^training/SGD/Assign_36^training/SGD/Assign_37^training/SGD/Assign_38^training/SGD/Assign_39^training/SGD/Assign_4^training/SGD/Assign_40^training/SGD/Assign_41^training/SGD/Assign_42^training/SGD/Assign_43^training/SGD/Assign_44^training/SGD/Assign_45^training/SGD/Assign_46^training/SGD/Assign_47^training/SGD/Assign_48^training/SGD/Assign_49^training/SGD/Assign_5^training/SGD/Assign_50^training/SGD/Assign_51^training/SGD/Assign_52^training/SGD/Assign_53^training/SGD/Assign_54^training/SGD/Assign_55^training/SGD/Assign_56^training/SGD/Assign_57^training/SGD/Assign_58^training/SGD/Assign_59^training/SGD/Assign_6^training/SGD/Assign_60^training/SGD/Assign_61^training/SGD/Assign_62^training/SGD/Assign_63^training/SGD/Assign_64^training/SGD/Assign_65^training/SGD/Assign_66^training/SGD/Assign_67^training/SGD/Assign_68^training/SGD/Assign_69^training/SGD/Assign_7^training/SGD/Assign_70^training/SGD/Assign_71^training/SGD/Assign_72^training/SGD/Assign_73^training/SGD/Assign_74^training/SGD/Assign_75^training/SGD/Assign_76^training/SGD/Assign_77^training/SGD/Assign_78^training/SGD/Assign_79^training/SGD/Assign_8^training/SGD/Assign_80^training/SGD/Assign_81^training/SGD/Assign_82^training/SGD/Assign_83^training/SGD/Assign_84^training/SGD/Assign_85^training/SGD/Assign_86^training/SGD/Assign_87^training/SGD/Assign_88^training/SGD/Assign_89^training/SGD/Assign_9^training/SGD/Assign_90^training/SGD/Assign_91^training/SGD/Assign_92^training/SGD/Assign_93^training/SGD/Assign_94^training/SGD/Assign_95^training/SGD/Assign_96^training/SGD/Assign_97^training/SGD/Assign_98^training/SGD/Assign_99

IsVariableInitialized_52IsVariableInitializedconv10_1/kernel*
_output_shapes
: *"
_class
loc:@conv10_1/kernel*
dtype0

IsVariableInitialized_53IsVariableInitializedconv10_1/bias* 
_class
loc:@conv10_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_54IsVariableInitializedSGD/iterations*
_output_shapes
: *!
_class
loc:@SGD/iterations*
dtype0	
y
IsVariableInitialized_55IsVariableInitializedSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

IsVariableInitialized_56IsVariableInitializedSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

IsVariableInitialized_57IsVariableInitialized	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 

IsVariableInitialized_58IsVariableInitializedtraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*
_output_shapes
: 

IsVariableInitialized_59IsVariableInitializedtraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_60IsVariableInitializedtraining/SGD/Variable_2*
dtype0*
_output_shapes
: **
_class 
loc:@training/SGD/Variable_2

IsVariableInitialized_61IsVariableInitializedtraining/SGD/Variable_3*
_output_shapes
: **
_class 
loc:@training/SGD/Variable_3*
dtype0

IsVariableInitialized_62IsVariableInitializedtraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_63IsVariableInitializedtraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_64IsVariableInitializedtraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*
_output_shapes
: 

IsVariableInitialized_65IsVariableInitializedtraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
: 

IsVariableInitialized_66IsVariableInitializedtraining/SGD/Variable_8**
_class 
loc:@training/SGD/Variable_8*
dtype0*
_output_shapes
: 

IsVariableInitialized_67IsVariableInitializedtraining/SGD/Variable_9**
_class 
loc:@training/SGD/Variable_9*
dtype0*
_output_shapes
: 

IsVariableInitialized_68IsVariableInitializedtraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*
_output_shapes
: 

IsVariableInitialized_69IsVariableInitializedtraining/SGD/Variable_11*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_11

IsVariableInitialized_70IsVariableInitializedtraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0*
_output_shapes
: 

IsVariableInitialized_71IsVariableInitializedtraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0*
_output_shapes
: 

IsVariableInitialized_72IsVariableInitializedtraining/SGD/Variable_14*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_14*
dtype0

IsVariableInitialized_73IsVariableInitializedtraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0*
_output_shapes
: 

IsVariableInitialized_74IsVariableInitializedtraining/SGD/Variable_16*+
_class!
loc:@training/SGD/Variable_16*
dtype0*
_output_shapes
: 

IsVariableInitialized_75IsVariableInitializedtraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
dtype0*
_output_shapes
: 

IsVariableInitialized_76IsVariableInitializedtraining/SGD/Variable_18*+
_class!
loc:@training/SGD/Variable_18*
dtype0*
_output_shapes
: 

IsVariableInitialized_77IsVariableInitializedtraining/SGD/Variable_19*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_19*
dtype0

IsVariableInitialized_78IsVariableInitializedtraining/SGD/Variable_20*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_20*
dtype0

IsVariableInitialized_79IsVariableInitializedtraining/SGD/Variable_21*+
_class!
loc:@training/SGD/Variable_21*
dtype0*
_output_shapes
: 

IsVariableInitialized_80IsVariableInitializedtraining/SGD/Variable_22*+
_class!
loc:@training/SGD/Variable_22*
dtype0*
_output_shapes
: 

IsVariableInitialized_81IsVariableInitializedtraining/SGD/Variable_23*+
_class!
loc:@training/SGD/Variable_23*
dtype0*
_output_shapes
: 

IsVariableInitialized_82IsVariableInitializedtraining/SGD/Variable_24*+
_class!
loc:@training/SGD/Variable_24*
dtype0*
_output_shapes
: 

IsVariableInitialized_83IsVariableInitializedtraining/SGD/Variable_25*+
_class!
loc:@training/SGD/Variable_25*
dtype0*
_output_shapes
: 

IsVariableInitialized_84IsVariableInitializedtraining/SGD/Variable_26*+
_class!
loc:@training/SGD/Variable_26*
dtype0*
_output_shapes
: 

IsVariableInitialized_85IsVariableInitializedtraining/SGD/Variable_27*+
_class!
loc:@training/SGD/Variable_27*
dtype0*
_output_shapes
: 

IsVariableInitialized_86IsVariableInitializedtraining/SGD/Variable_28*+
_class!
loc:@training/SGD/Variable_28*
dtype0*
_output_shapes
: 

IsVariableInitialized_87IsVariableInitializedtraining/SGD/Variable_29*+
_class!
loc:@training/SGD/Variable_29*
dtype0*
_output_shapes
: 

IsVariableInitialized_88IsVariableInitializedtraining/SGD/Variable_30*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_30

IsVariableInitialized_89IsVariableInitializedtraining/SGD/Variable_31*+
_class!
loc:@training/SGD/Variable_31*
dtype0*
_output_shapes
: 

IsVariableInitialized_90IsVariableInitializedtraining/SGD/Variable_32*+
_class!
loc:@training/SGD/Variable_32*
dtype0*
_output_shapes
: 

IsVariableInitialized_91IsVariableInitializedtraining/SGD/Variable_33*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_33

IsVariableInitialized_92IsVariableInitializedtraining/SGD/Variable_34*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_34

IsVariableInitialized_93IsVariableInitializedtraining/SGD/Variable_35*+
_class!
loc:@training/SGD/Variable_35*
dtype0*
_output_shapes
: 

IsVariableInitialized_94IsVariableInitializedtraining/SGD/Variable_36*+
_class!
loc:@training/SGD/Variable_36*
dtype0*
_output_shapes
: 

IsVariableInitialized_95IsVariableInitializedtraining/SGD/Variable_37*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_37*
dtype0

IsVariableInitialized_96IsVariableInitializedtraining/SGD/Variable_38*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_38

IsVariableInitialized_97IsVariableInitializedtraining/SGD/Variable_39*+
_class!
loc:@training/SGD/Variable_39*
dtype0*
_output_shapes
: 

IsVariableInitialized_98IsVariableInitializedtraining/SGD/Variable_40*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_40

IsVariableInitialized_99IsVariableInitializedtraining/SGD/Variable_41*+
_class!
loc:@training/SGD/Variable_41*
dtype0*
_output_shapes
: 

IsVariableInitialized_100IsVariableInitializedtraining/SGD/Variable_42*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_42

IsVariableInitialized_101IsVariableInitializedtraining/SGD/Variable_43*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_43

IsVariableInitialized_102IsVariableInitializedtraining/SGD/Variable_44*+
_class!
loc:@training/SGD/Variable_44*
dtype0*
_output_shapes
: 

IsVariableInitialized_103IsVariableInitializedtraining/SGD/Variable_45*+
_class!
loc:@training/SGD/Variable_45*
dtype0*
_output_shapes
: 

IsVariableInitialized_104IsVariableInitializedtraining/SGD/Variable_46*+
_class!
loc:@training/SGD/Variable_46*
dtype0*
_output_shapes
: 

IsVariableInitialized_105IsVariableInitializedtraining/SGD/Variable_47*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_47*
dtype0

IsVariableInitialized_106IsVariableInitializedtraining/SGD/Variable_48*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_48

IsVariableInitialized_107IsVariableInitializedtraining/SGD/Variable_49*+
_class!
loc:@training/SGD/Variable_49*
dtype0*
_output_shapes
: 

IsVariableInitialized_108IsVariableInitializedtraining/SGD/Variable_50*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_50

IsVariableInitialized_109IsVariableInitializedtraining/SGD/Variable_51*+
_class!
loc:@training/SGD/Variable_51*
dtype0*
_output_shapes
: 
ы
init_1NoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv10_1/bias/Assign^conv10_1/kernel/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign ^training/SGD/Variable_16/Assign ^training/SGD/Variable_17/Assign ^training/SGD/Variable_18/Assign ^training/SGD/Variable_19/Assign^training/SGD/Variable_2/Assign ^training/SGD/Variable_20/Assign ^training/SGD/Variable_21/Assign ^training/SGD/Variable_22/Assign ^training/SGD/Variable_23/Assign ^training/SGD/Variable_24/Assign ^training/SGD/Variable_25/Assign ^training/SGD/Variable_26/Assign ^training/SGD/Variable_27/Assign ^training/SGD/Variable_28/Assign ^training/SGD/Variable_29/Assign^training/SGD/Variable_3/Assign ^training/SGD/Variable_30/Assign ^training/SGD/Variable_31/Assign ^training/SGD/Variable_32/Assign ^training/SGD/Variable_33/Assign ^training/SGD/Variable_34/Assign ^training/SGD/Variable_35/Assign ^training/SGD/Variable_36/Assign ^training/SGD/Variable_37/Assign ^training/SGD/Variable_38/Assign ^training/SGD/Variable_39/Assign^training/SGD/Variable_4/Assign ^training/SGD/Variable_40/Assign ^training/SGD/Variable_41/Assign ^training/SGD/Variable_42/Assign ^training/SGD/Variable_43/Assign ^training/SGD/Variable_44/Assign ^training/SGD/Variable_45/Assign ^training/SGD/Variable_46/Assign ^training/SGD/Variable_47/Assign ^training/SGD/Variable_48/Assign ^training/SGD/Variable_49/Assign^training/SGD/Variable_5/Assign ^training/SGD/Variable_50/Assign ^training/SGD/Variable_51/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign"љІВЧь     њБ\,	вq!`НћжAJй
Ь++
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
2	

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
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
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
ь
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

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

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

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
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
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
д
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ю
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

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
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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

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
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

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
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.13.0-dev201811072b'v1.12.0-rc0-2065-g60aa63b60b'бк
z
input_1Placeholder*$
shape:џџџџџџџџџ  *
dtype0*/
_output_shapes
:џџџџџџџџџ  
s
conv1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
]
conv1/random_uniform/minConst*
valueB
 *8JЬН*
dtype0*
_output_shapes
: 
]
conv1/random_uniform/maxConst*
valueB
 *8JЬ=*
dtype0*
_output_shapes
: 
Ќ
"conv1/random_uniform/RandomUniformRandomUniformconv1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:@*
seed2м*
seedБџх)
t
conv1/random_uniform/subSubconv1/random_uniform/maxconv1/random_uniform/min*
T0*
_output_shapes
: 

conv1/random_uniform/mulMul"conv1/random_uniform/RandomUniformconv1/random_uniform/sub*
T0*&
_output_shapes
:@

conv1/random_uniformAddconv1/random_uniform/mulconv1/random_uniform/min*
T0*&
_output_shapes
:@

conv1/kernel
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
М
conv1/kernel/AssignAssignconv1/kernelconv1/random_uniform*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv1/kernel
}
conv1/kernel/readIdentityconv1/kernel*
_class
loc:@conv1/kernel*&
_output_shapes
:@*
T0
X
conv1/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
v

conv1/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ё
conv1/bias/AssignAssign
conv1/biasconv1/Const*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
:@
k
conv1/bias/readIdentity
conv1/bias*
T0*
_class
loc:@conv1/bias*
_output_shapes
:@
p
conv1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
р
conv1/convolutionConv2Dinput_1conv1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@

conv1/BiasAddBiasAddconv1/convolutionconv1/bias/read*/
_output_shapes
:џџџџџџџџџ@*
T0*
data_formatNHWC
`
relu_conv1/ReluReluconv1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
Ж
pool1/MaxPoolMaxPoolrelu_conv1/Relu*/
_output_shapes
:џџџџџџџџџ@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
~
%fire2/squeeze1x1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"      @      *
dtype0
h
#fire2/squeeze1x1/random_uniform/minConst*
valueB
 *7О*
dtype0*
_output_shapes
: 
h
#fire2/squeeze1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
Т
-fire2/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire2/squeeze1x1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:@*
seed2ъш*
seedБџх)

#fire2/squeeze1x1/random_uniform/subSub#fire2/squeeze1x1/random_uniform/max#fire2/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
Џ
#fire2/squeeze1x1/random_uniform/mulMul-fire2/squeeze1x1/random_uniform/RandomUniform#fire2/squeeze1x1/random_uniform/sub*
T0*&
_output_shapes
:@
Ё
fire2/squeeze1x1/random_uniformAdd#fire2/squeeze1x1/random_uniform/mul#fire2/squeeze1x1/random_uniform/min*&
_output_shapes
:@*
T0

fire2/squeeze1x1/kernel
VariableV2*
shape:@*
shared_name *
dtype0*&
_output_shapes
:@*
	container 
ш
fire2/squeeze1x1/kernel/AssignAssignfire2/squeeze1x1/kernelfire2/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire2/squeeze1x1/kernel*
validate_shape(*&
_output_shapes
:@

fire2/squeeze1x1/kernel/readIdentityfire2/squeeze1x1/kernel*
T0**
_class 
loc:@fire2/squeeze1x1/kernel*&
_output_shapes
:@
c
fire2/squeeze1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

fire2/squeeze1x1/bias
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Э
fire2/squeeze1x1/bias/AssignAssignfire2/squeeze1x1/biasfire2/squeeze1x1/Const*
use_locking(*
T0*(
_class
loc:@fire2/squeeze1x1/bias*
validate_shape(*
_output_shapes
:

fire2/squeeze1x1/bias/readIdentityfire2/squeeze1x1/bias*
T0*(
_class
loc:@fire2/squeeze1x1/bias*
_output_shapes
:
{
*fire2/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ќ
fire2/squeeze1x1/convolutionConv2Dpool1/MaxPoolfire2/squeeze1x1/kernel/read*
paddingVALID*/
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ў
fire2/squeeze1x1/BiasAddBiasAddfire2/squeeze1x1/convolutionfire2/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ
v
fire2/relu_squeeze1x1/ReluRelufire2/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ
}
$fire2/expand1x1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
g
"fire2/expand1x1/random_uniform/minConst*
_output_shapes
: *
valueB
 *7О*
dtype0
g
"fire2/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
Р
,fire2/expand1x1/random_uniform/RandomUniformRandomUniform$fire2/expand1x1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:@*
seed2Мн*
seedБџх)

"fire2/expand1x1/random_uniform/subSub"fire2/expand1x1/random_uniform/max"fire2/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
Ќ
"fire2/expand1x1/random_uniform/mulMul,fire2/expand1x1/random_uniform/RandomUniform"fire2/expand1x1/random_uniform/sub*&
_output_shapes
:@*
T0

fire2/expand1x1/random_uniformAdd"fire2/expand1x1/random_uniform/mul"fire2/expand1x1/random_uniform/min*
T0*&
_output_shapes
:@

fire2/expand1x1/kernel
VariableV2*&
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
ф
fire2/expand1x1/kernel/AssignAssignfire2/expand1x1/kernelfire2/expand1x1/random_uniform*
T0*)
_class
loc:@fire2/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(

fire2/expand1x1/kernel/readIdentityfire2/expand1x1/kernel*&
_output_shapes
:@*
T0*)
_class
loc:@fire2/expand1x1/kernel
b
fire2/expand1x1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@

fire2/expand1x1/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Щ
fire2/expand1x1/bias/AssignAssignfire2/expand1x1/biasfire2/expand1x1/Const*
use_locking(*
T0*'
_class
loc:@fire2/expand1x1/bias*
validate_shape(*
_output_shapes
:@

fire2/expand1x1/bias/readIdentityfire2/expand1x1/bias*
T0*'
_class
loc:@fire2/expand1x1/bias*
_output_shapes
:@
z
)fire2/expand1x1/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire2/expand1x1/convolutionConv2Dfire2/relu_squeeze1x1/Relufire2/expand1x1/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0
Ћ
fire2/expand1x1/BiasAddBiasAddfire2/expand1x1/convolutionfire2/expand1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
t
fire2/relu_expand1x1/ReluRelufire2/expand1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
}
$fire2/expand3x3/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
g
"fire2/expand3x3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *КєКН
g
"fire2/expand3x3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *КєК=*
dtype0
Р
,fire2/expand3x3/random_uniform/RandomUniformRandomUniform$fire2/expand3x3/random_uniform/shape*
dtype0*&
_output_shapes
:@*
seed2љА*
seedБџх)*
T0

"fire2/expand3x3/random_uniform/subSub"fire2/expand3x3/random_uniform/max"fire2/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
Ќ
"fire2/expand3x3/random_uniform/mulMul,fire2/expand3x3/random_uniform/RandomUniform"fire2/expand3x3/random_uniform/sub*
T0*&
_output_shapes
:@

fire2/expand3x3/random_uniformAdd"fire2/expand3x3/random_uniform/mul"fire2/expand3x3/random_uniform/min*
T0*&
_output_shapes
:@

fire2/expand3x3/kernel
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
ф
fire2/expand3x3/kernel/AssignAssignfire2/expand3x3/kernelfire2/expand3x3/random_uniform*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire2/expand3x3/kernel

fire2/expand3x3/kernel/readIdentityfire2/expand3x3/kernel*&
_output_shapes
:@*
T0*)
_class
loc:@fire2/expand3x3/kernel
b
fire2/expand3x3/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    

fire2/expand3x3/bias
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
Щ
fire2/expand3x3/bias/AssignAssignfire2/expand3x3/biasfire2/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire2/expand3x3/bias*
validate_shape(*
_output_shapes
:@

fire2/expand3x3/bias/readIdentityfire2/expand3x3/bias*'
_class
loc:@fire2/expand3x3/bias*
_output_shapes
:@*
T0
z
)fire2/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire2/expand3x3/convolutionConv2Dfire2/relu_squeeze1x1/Relufire2/expand3x3/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ@
Ћ
fire2/expand3x3/BiasAddBiasAddfire2/expand3x3/convolutionfire2/expand3x3/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
t
fire2/relu_expand3x3/ReluRelufire2/expand3x3/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
Z
fire2/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire2/concat/concatConcatV2fire2/relu_expand1x1/Relufire2/relu_expand3x3/Relufire2/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
~
%fire3/squeeze1x1/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
h
#fire3/squeeze1x1/random_uniform/minConst*
valueB
 *ьQО*
dtype0*
_output_shapes
: 
h
#fire3/squeeze1x1/random_uniform/maxConst*
valueB
 *ьQ>*
dtype0*
_output_shapes
: 
У
-fire3/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire3/squeeze1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:*
seed2жщп*
seedБџх)

#fire3/squeeze1x1/random_uniform/subSub#fire3/squeeze1x1/random_uniform/max#fire3/squeeze1x1/random_uniform/min*
_output_shapes
: *
T0
А
#fire3/squeeze1x1/random_uniform/mulMul-fire3/squeeze1x1/random_uniform/RandomUniform#fire3/squeeze1x1/random_uniform/sub*'
_output_shapes
:*
T0
Ђ
fire3/squeeze1x1/random_uniformAdd#fire3/squeeze1x1/random_uniform/mul#fire3/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:

fire3/squeeze1x1/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:*
	container *
shape:
щ
fire3/squeeze1x1/kernel/AssignAssignfire3/squeeze1x1/kernelfire3/squeeze1x1/random_uniform*'
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@fire3/squeeze1x1/kernel*
validate_shape(

fire3/squeeze1x1/kernel/readIdentityfire3/squeeze1x1/kernel*
T0**
_class 
loc:@fire3/squeeze1x1/kernel*'
_output_shapes
:
c
fire3/squeeze1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

fire3/squeeze1x1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Э
fire3/squeeze1x1/bias/AssignAssignfire3/squeeze1x1/biasfire3/squeeze1x1/Const*(
_class
loc:@fire3/squeeze1x1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

fire3/squeeze1x1/bias/readIdentityfire3/squeeze1x1/bias*
T0*(
_class
loc:@fire3/squeeze1x1/bias*
_output_shapes
:
{
*fire3/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire3/squeeze1x1/convolutionConv2Dfire2/concat/concatfire3/squeeze1x1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ
Ў
fire3/squeeze1x1/BiasAddBiasAddfire3/squeeze1x1/convolutionfire3/squeeze1x1/bias/read*/
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
v
fire3/relu_squeeze1x1/ReluRelufire3/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ
}
$fire3/expand1x1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
g
"fire3/expand1x1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *7О
g
"fire3/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
Р
,fire3/expand1x1/random_uniform/RandomUniformRandomUniform$fire3/expand1x1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
:@*
seed2ЪЋХ*
seedБџх)

"fire3/expand1x1/random_uniform/subSub"fire3/expand1x1/random_uniform/max"fire3/expand1x1/random_uniform/min*
_output_shapes
: *
T0
Ќ
"fire3/expand1x1/random_uniform/mulMul,fire3/expand1x1/random_uniform/RandomUniform"fire3/expand1x1/random_uniform/sub*
T0*&
_output_shapes
:@

fire3/expand1x1/random_uniformAdd"fire3/expand1x1/random_uniform/mul"fire3/expand1x1/random_uniform/min*
T0*&
_output_shapes
:@

fire3/expand1x1/kernel
VariableV2*&
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
ф
fire3/expand1x1/kernel/AssignAssignfire3/expand1x1/kernelfire3/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire3/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@

fire3/expand1x1/kernel/readIdentityfire3/expand1x1/kernel*&
_output_shapes
:@*
T0*)
_class
loc:@fire3/expand1x1/kernel
b
fire3/expand1x1/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    

fire3/expand1x1/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Щ
fire3/expand1x1/bias/AssignAssignfire3/expand1x1/biasfire3/expand1x1/Const*
_output_shapes
:@*
use_locking(*
T0*'
_class
loc:@fire3/expand1x1/bias*
validate_shape(

fire3/expand1x1/bias/readIdentityfire3/expand1x1/bias*'
_class
loc:@fire3/expand1x1/bias*
_output_shapes
:@*
T0
z
)fire3/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire3/expand1x1/convolutionConv2Dfire3/relu_squeeze1x1/Relufire3/expand1x1/kernel/read*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ћ
fire3/expand1x1/BiasAddBiasAddfire3/expand1x1/convolutionfire3/expand1x1/bias/read*/
_output_shapes
:џџџџџџџџџ@*
T0*
data_formatNHWC
t
fire3/relu_expand1x1/ReluRelufire3/expand1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
}
$fire3/expand3x3/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
g
"fire3/expand3x3/random_uniform/minConst*
valueB
 *КєКН*
dtype0*
_output_shapes
: 
g
"fire3/expand3x3/random_uniform/maxConst*
valueB
 *КєК=*
dtype0*
_output_shapes
: 
Р
,fire3/expand3x3/random_uniform/RandomUniformRandomUniform$fire3/expand3x3/random_uniform/shape*
dtype0*&
_output_shapes
:@*
seed2єкЗ*
seedБџх)*
T0

"fire3/expand3x3/random_uniform/subSub"fire3/expand3x3/random_uniform/max"fire3/expand3x3/random_uniform/min*
_output_shapes
: *
T0
Ќ
"fire3/expand3x3/random_uniform/mulMul,fire3/expand3x3/random_uniform/RandomUniform"fire3/expand3x3/random_uniform/sub*&
_output_shapes
:@*
T0

fire3/expand3x3/random_uniformAdd"fire3/expand3x3/random_uniform/mul"fire3/expand3x3/random_uniform/min*&
_output_shapes
:@*
T0

fire3/expand3x3/kernel
VariableV2*
shared_name *
dtype0*&
_output_shapes
:@*
	container *
shape:@
ф
fire3/expand3x3/kernel/AssignAssignfire3/expand3x3/kernelfire3/expand3x3/random_uniform*)
_class
loc:@fire3/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0

fire3/expand3x3/kernel/readIdentityfire3/expand3x3/kernel*)
_class
loc:@fire3/expand3x3/kernel*&
_output_shapes
:@*
T0
b
fire3/expand3x3/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0

fire3/expand3x3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Щ
fire3/expand3x3/bias/AssignAssignfire3/expand3x3/biasfire3/expand3x3/Const*'
_class
loc:@fire3/expand3x3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

fire3/expand3x3/bias/readIdentityfire3/expand3x3/bias*
T0*'
_class
loc:@fire3/expand3x3/bias*
_output_shapes
:@
z
)fire3/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire3/expand3x3/convolutionConv2Dfire3/relu_squeeze1x1/Relufire3/expand3x3/kernel/read*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ћ
fire3/expand3x3/BiasAddBiasAddfire3/expand3x3/convolutionfire3/expand3x3/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
t
fire3/relu_expand3x3/ReluRelufire3/expand3x3/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
Z
fire3/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire3/concat/concatConcatV2fire3/relu_expand1x1/Relufire3/relu_expand3x3/Relufire3/concat/concat/axis*
N*0
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Л
pool3/MaxPoolMaxPoolfire3/concat/concat*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:џџџџџџџџџ
~
%fire4/squeeze1x1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
h
#fire4/squeeze1x1/random_uniform/minConst*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
h
#fire4/squeeze1x1/random_uniform/maxConst*
valueB
 *јKF>*
dtype0*
_output_shapes
: 
У
-fire4/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire4/squeeze1x1/random_uniform/shape*
dtype0*'
_output_shapes
: *
seed2чжЫ*
seedБџх)*
T0

#fire4/squeeze1x1/random_uniform/subSub#fire4/squeeze1x1/random_uniform/max#fire4/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire4/squeeze1x1/random_uniform/mulMul-fire4/squeeze1x1/random_uniform/RandomUniform#fire4/squeeze1x1/random_uniform/sub*'
_output_shapes
: *
T0
Ђ
fire4/squeeze1x1/random_uniformAdd#fire4/squeeze1x1/random_uniform/mul#fire4/squeeze1x1/random_uniform/min*'
_output_shapes
: *
T0

fire4/squeeze1x1/kernel
VariableV2*
shape: *
shared_name *
dtype0*'
_output_shapes
: *
	container 
щ
fire4/squeeze1x1/kernel/AssignAssignfire4/squeeze1x1/kernelfire4/squeeze1x1/random_uniform*'
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@fire4/squeeze1x1/kernel*
validate_shape(

fire4/squeeze1x1/kernel/readIdentityfire4/squeeze1x1/kernel*'
_output_shapes
: *
T0**
_class 
loc:@fire4/squeeze1x1/kernel
c
fire4/squeeze1x1/ConstConst*
dtype0*
_output_shapes
: *
valueB *    

fire4/squeeze1x1/bias
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Э
fire4/squeeze1x1/bias/AssignAssignfire4/squeeze1x1/biasfire4/squeeze1x1/Const*(
_class
loc:@fire4/squeeze1x1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

fire4/squeeze1x1/bias/readIdentityfire4/squeeze1x1/bias*
T0*(
_class
loc:@fire4/squeeze1x1/bias*
_output_shapes
: 
{
*fire4/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ќ
fire4/squeeze1x1/convolutionConv2Dpool3/MaxPoolfire4/squeeze1x1/kernel/read*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
Ў
fire4/squeeze1x1/BiasAddBiasAddfire4/squeeze1x1/convolutionfire4/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ 
v
fire4/relu_squeeze1x1/ReluRelufire4/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
}
$fire4/expand1x1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
g
"fire4/expand1x1/random_uniform/minConst*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
g
"fire4/expand1x1/random_uniform/maxConst*
valueB
 *јKF>*
dtype0*
_output_shapes
: 
С
,fire4/expand1x1/random_uniform/RandomUniformRandomUniform$fire4/expand1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
: *
seed2§*
seedБџх)

"fire4/expand1x1/random_uniform/subSub"fire4/expand1x1/random_uniform/max"fire4/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
­
"fire4/expand1x1/random_uniform/mulMul,fire4/expand1x1/random_uniform/RandomUniform"fire4/expand1x1/random_uniform/sub*'
_output_shapes
: *
T0

fire4/expand1x1/random_uniformAdd"fire4/expand1x1/random_uniform/mul"fire4/expand1x1/random_uniform/min*
T0*'
_output_shapes
: 

fire4/expand1x1/kernel
VariableV2*
shape: *
shared_name *
dtype0*'
_output_shapes
: *
	container 
х
fire4/expand1x1/kernel/AssignAssignfire4/expand1x1/kernelfire4/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire4/expand1x1/kernel*
validate_shape(*'
_output_shapes
: 

fire4/expand1x1/kernel/readIdentityfire4/expand1x1/kernel*
T0*)
_class
loc:@fire4/expand1x1/kernel*'
_output_shapes
: 
d
fire4/expand1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire4/expand1x1/bias
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
Ъ
fire4/expand1x1/bias/AssignAssignfire4/expand1x1/biasfire4/expand1x1/Const*
T0*'
_class
loc:@fire4/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

fire4/expand1x1/bias/readIdentityfire4/expand1x1/bias*'
_class
loc:@fire4/expand1x1/bias*
_output_shapes	
:*
T0
z
)fire4/expand1x1/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire4/expand1x1/convolutionConv2Dfire4/relu_squeeze1x1/Relufire4/expand1x1/kernel/read*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ќ
fire4/expand1x1/BiasAddBiasAddfire4/expand1x1/convolutionfire4/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire4/relu_expand1x1/ReluRelufire4/expand1x1/BiasAdd*0
_output_shapes
:џџџџџџџџџ*
T0
}
$fire4/expand3x3/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
g
"fire4/expand3x3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *Ѕ2Н
g
"fire4/expand3x3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *Ѕ2=*
dtype0
С
,fire4/expand3x3/random_uniform/RandomUniformRandomUniform$fire4/expand3x3/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
: *
seed2

"fire4/expand3x3/random_uniform/subSub"fire4/expand3x3/random_uniform/max"fire4/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
­
"fire4/expand3x3/random_uniform/mulMul,fire4/expand3x3/random_uniform/RandomUniform"fire4/expand3x3/random_uniform/sub*'
_output_shapes
: *
T0

fire4/expand3x3/random_uniformAdd"fire4/expand3x3/random_uniform/mul"fire4/expand3x3/random_uniform/min*'
_output_shapes
: *
T0

fire4/expand3x3/kernel
VariableV2*
dtype0*'
_output_shapes
: *
	container *
shape: *
shared_name 
х
fire4/expand3x3/kernel/AssignAssignfire4/expand3x3/kernelfire4/expand3x3/random_uniform*)
_class
loc:@fire4/expand3x3/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0

fire4/expand3x3/kernel/readIdentityfire4/expand3x3/kernel*
T0*)
_class
loc:@fire4/expand3x3/kernel*'
_output_shapes
: 
d
fire4/expand3x3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire4/expand3x3/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ъ
fire4/expand3x3/bias/AssignAssignfire4/expand3x3/biasfire4/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire4/expand3x3/bias*
validate_shape(*
_output_shapes	
:

fire4/expand3x3/bias/readIdentityfire4/expand3x3/bias*
_output_shapes	
:*
T0*'
_class
loc:@fire4/expand3x3/bias
z
)fire4/expand3x3/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

fire4/expand3x3/convolutionConv2Dfire4/relu_squeeze1x1/Relufire4/expand3x3/kernel/read*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ќ
fire4/expand3x3/BiasAddBiasAddfire4/expand3x3/convolutionfire4/expand3x3/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ*
T0
u
fire4/relu_expand3x3/ReluRelufire4/expand3x3/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
Z
fire4/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire4/concat/concatConcatV2fire4/relu_expand1x1/Relufire4/relu_expand3x3/Relufire4/concat/concat/axis*
N*0
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
~
%fire5/squeeze1x1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
h
#fire5/squeeze1x1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *:ЭО
h
#fire5/squeeze1x1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *:Э>*
dtype0
У
-fire5/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire5/squeeze1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
: *
seed2ДњУ

#fire5/squeeze1x1/random_uniform/subSub#fire5/squeeze1x1/random_uniform/max#fire5/squeeze1x1/random_uniform/min*
_output_shapes
: *
T0
А
#fire5/squeeze1x1/random_uniform/mulMul-fire5/squeeze1x1/random_uniform/RandomUniform#fire5/squeeze1x1/random_uniform/sub*
T0*'
_output_shapes
: 
Ђ
fire5/squeeze1x1/random_uniformAdd#fire5/squeeze1x1/random_uniform/mul#fire5/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
: 

fire5/squeeze1x1/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
: *
	container *
shape: 
щ
fire5/squeeze1x1/kernel/AssignAssignfire5/squeeze1x1/kernelfire5/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire5/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: 

fire5/squeeze1x1/kernel/readIdentityfire5/squeeze1x1/kernel*'
_output_shapes
: *
T0**
_class 
loc:@fire5/squeeze1x1/kernel
c
fire5/squeeze1x1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 

fire5/squeeze1x1/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Э
fire5/squeeze1x1/bias/AssignAssignfire5/squeeze1x1/biasfire5/squeeze1x1/Const*
use_locking(*
T0*(
_class
loc:@fire5/squeeze1x1/bias*
validate_shape(*
_output_shapes
: 

fire5/squeeze1x1/bias/readIdentityfire5/squeeze1x1/bias*
T0*(
_class
loc:@fire5/squeeze1x1/bias*
_output_shapes
: 
{
*fire5/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire5/squeeze1x1/convolutionConv2Dfire4/concat/concatfire5/squeeze1x1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ 
Ў
fire5/squeeze1x1/BiasAddBiasAddfire5/squeeze1x1/convolutionfire5/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ 
v
fire5/relu_squeeze1x1/ReluRelufire5/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ 
}
$fire5/expand1x1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"             *
dtype0
g
"fire5/expand1x1/random_uniform/minConst*
valueB
 *јKFО*
dtype0*
_output_shapes
: 
g
"fire5/expand1x1/random_uniform/maxConst*
valueB
 *јKF>*
dtype0*
_output_shapes
: 
С
,fire5/expand1x1/random_uniform/RandomUniformRandomUniform$fire5/expand1x1/random_uniform/shape*
dtype0*'
_output_shapes
: *
seed2А*
seedБџх)*
T0

"fire5/expand1x1/random_uniform/subSub"fire5/expand1x1/random_uniform/max"fire5/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
­
"fire5/expand1x1/random_uniform/mulMul,fire5/expand1x1/random_uniform/RandomUniform"fire5/expand1x1/random_uniform/sub*'
_output_shapes
: *
T0

fire5/expand1x1/random_uniformAdd"fire5/expand1x1/random_uniform/mul"fire5/expand1x1/random_uniform/min*
T0*'
_output_shapes
: 

fire5/expand1x1/kernel
VariableV2*'
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
х
fire5/expand1x1/kernel/AssignAssignfire5/expand1x1/kernelfire5/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire5/expand1x1/kernel*
validate_shape(*'
_output_shapes
: 

fire5/expand1x1/kernel/readIdentityfire5/expand1x1/kernel*)
_class
loc:@fire5/expand1x1/kernel*'
_output_shapes
: *
T0
d
fire5/expand1x1/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    

fire5/expand1x1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ъ
fire5/expand1x1/bias/AssignAssignfire5/expand1x1/biasfire5/expand1x1/Const*
T0*'
_class
loc:@fire5/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

fire5/expand1x1/bias/readIdentityfire5/expand1x1/bias*
T0*'
_class
loc:@fire5/expand1x1/bias*
_output_shapes	
:
z
)fire5/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire5/expand1x1/convolutionConv2Dfire5/relu_squeeze1x1/Relufire5/expand1x1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0
Ќ
fire5/expand1x1/BiasAddBiasAddfire5/expand1x1/convolutionfire5/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire5/relu_expand1x1/ReluRelufire5/expand1x1/BiasAdd*0
_output_shapes
:џџџџџџџџџ*
T0
}
$fire5/expand3x3/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
g
"fire5/expand3x3/random_uniform/minConst*
valueB
 *Ѕ2Н*
dtype0*
_output_shapes
: 
g
"fire5/expand3x3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *Ѕ2=*
dtype0
Р
,fire5/expand3x3/random_uniform/RandomUniformRandomUniform$fire5/expand3x3/random_uniform/shape*'
_output_shapes
: *
seed2ыыk*
seedБџх)*
T0*
dtype0

"fire5/expand3x3/random_uniform/subSub"fire5/expand3x3/random_uniform/max"fire5/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
­
"fire5/expand3x3/random_uniform/mulMul,fire5/expand3x3/random_uniform/RandomUniform"fire5/expand3x3/random_uniform/sub*
T0*'
_output_shapes
: 

fire5/expand3x3/random_uniformAdd"fire5/expand3x3/random_uniform/mul"fire5/expand3x3/random_uniform/min*
T0*'
_output_shapes
: 

fire5/expand3x3/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
: *
	container *
shape: 
х
fire5/expand3x3/kernel/AssignAssignfire5/expand3x3/kernelfire5/expand3x3/random_uniform*
use_locking(*
T0*)
_class
loc:@fire5/expand3x3/kernel*
validate_shape(*'
_output_shapes
: 

fire5/expand3x3/kernel/readIdentityfire5/expand3x3/kernel*
T0*)
_class
loc:@fire5/expand3x3/kernel*'
_output_shapes
: 
d
fire5/expand3x3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire5/expand3x3/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ъ
fire5/expand3x3/bias/AssignAssignfire5/expand3x3/biasfire5/expand3x3/Const*'
_class
loc:@fire5/expand3x3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

fire5/expand3x3/bias/readIdentityfire5/expand3x3/bias*'
_class
loc:@fire5/expand3x3/bias*
_output_shapes	
:*
T0
z
)fire5/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire5/expand3x3/convolutionConv2Dfire5/relu_squeeze1x1/Relufire5/expand3x3/kernel/read*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides

Ќ
fire5/expand3x3/BiasAddBiasAddfire5/expand3x3/convolutionfire5/expand3x3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire5/relu_expand3x3/ReluRelufire5/expand3x3/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
Z
fire5/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire5/concat/concatConcatV2fire5/relu_expand1x1/Relufire5/relu_expand3x3/Relufire5/concat/concat/axis*
T0*
N*0
_output_shapes
:џџџџџџџџџ*

Tidx0
Л
pool5/MaxPoolMaxPoolfire5/concat/concat*
ksize
*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC*
strides

~
%fire6/squeeze1x1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"         0   *
dtype0
h
#fire6/squeeze1x1/random_uniform/minConst*
valueB
 *мО*
dtype0*
_output_shapes
: 
h
#fire6/squeeze1x1/random_uniform/maxConst*
valueB
 *м>*
dtype0*
_output_shapes
: 
У
-fire6/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire6/squeeze1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:0*
seed2ћ

#fire6/squeeze1x1/random_uniform/subSub#fire6/squeeze1x1/random_uniform/max#fire6/squeeze1x1/random_uniform/min*
_output_shapes
: *
T0
А
#fire6/squeeze1x1/random_uniform/mulMul-fire6/squeeze1x1/random_uniform/RandomUniform#fire6/squeeze1x1/random_uniform/sub*'
_output_shapes
:0*
T0
Ђ
fire6/squeeze1x1/random_uniformAdd#fire6/squeeze1x1/random_uniform/mul#fire6/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:0

fire6/squeeze1x1/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:0*
	container *
shape:0
щ
fire6/squeeze1x1/kernel/AssignAssignfire6/squeeze1x1/kernelfire6/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire6/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0

fire6/squeeze1x1/kernel/readIdentityfire6/squeeze1x1/kernel*
T0**
_class 
loc:@fire6/squeeze1x1/kernel*'
_output_shapes
:0
c
fire6/squeeze1x1/ConstConst*
valueB0*    *
dtype0*
_output_shapes
:0

fire6/squeeze1x1/bias
VariableV2*
dtype0*
_output_shapes
:0*
	container *
shape:0*
shared_name 
Э
fire6/squeeze1x1/bias/AssignAssignfire6/squeeze1x1/biasfire6/squeeze1x1/Const*
T0*(
_class
loc:@fire6/squeeze1x1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(

fire6/squeeze1x1/bias/readIdentityfire6/squeeze1x1/bias*
T0*(
_class
loc:@fire6/squeeze1x1/bias*
_output_shapes
:0
{
*fire6/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ќ
fire6/squeeze1x1/convolutionConv2Dpool5/MaxPoolfire6/squeeze1x1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0
Ў
fire6/squeeze1x1/BiasAddBiasAddfire6/squeeze1x1/convolutionfire6/squeeze1x1/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ0*
T0
v
fire6/relu_squeeze1x1/ReluRelufire6/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ0
}
$fire6/expand1x1/random_uniform/shapeConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
g
"fire6/expand1x1/random_uniform/minConst*
valueB
 *ш!О*
dtype0*
_output_shapes
: 
g
"fire6/expand1x1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ш!>*
dtype0
С
,fire6/expand1x1/random_uniform/RandomUniformRandomUniform$fire6/expand1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:0Р*
seed2ЅЖя

"fire6/expand1x1/random_uniform/subSub"fire6/expand1x1/random_uniform/max"fire6/expand1x1/random_uniform/min*
_output_shapes
: *
T0
­
"fire6/expand1x1/random_uniform/mulMul,fire6/expand1x1/random_uniform/RandomUniform"fire6/expand1x1/random_uniform/sub*
T0*'
_output_shapes
:0Р

fire6/expand1x1/random_uniformAdd"fire6/expand1x1/random_uniform/mul"fire6/expand1x1/random_uniform/min*
T0*'
_output_shapes
:0Р

fire6/expand1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
х
fire6/expand1x1/kernel/AssignAssignfire6/expand1x1/kernelfire6/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire6/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р

fire6/expand1x1/kernel/readIdentityfire6/expand1x1/kernel*
T0*)
_class
loc:@fire6/expand1x1/kernel*'
_output_shapes
:0Р
d
fire6/expand1x1/ConstConst*
valueBР*    *
dtype0*
_output_shapes	
:Р

fire6/expand1x1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:Р*
	container *
shape:Р
Ъ
fire6/expand1x1/bias/AssignAssignfire6/expand1x1/biasfire6/expand1x1/Const*'
_class
loc:@fire6/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0

fire6/expand1x1/bias/readIdentityfire6/expand1x1/bias*'
_class
loc:@fire6/expand1x1/bias*
_output_shapes	
:Р*
T0
z
)fire6/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire6/expand1x1/convolutionConv2Dfire6/relu_squeeze1x1/Relufire6/expand1x1/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџР*
	dilations
*
T0
Ќ
fire6/expand1x1/BiasAddBiasAddfire6/expand1x1/convolutionfire6/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџР
u
fire6/relu_expand1x1/ReluRelufire6/expand1x1/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџР
}
$fire6/expand3x3/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      0   Р   
g
"fire6/expand3x3/random_uniform/minConst*
valueB
 *ЯрWН*
dtype0*
_output_shapes
: 
g
"fire6/expand3x3/random_uniform/maxConst*
valueB
 *ЯрW=*
dtype0*
_output_shapes
: 
С
,fire6/expand3x3/random_uniform/RandomUniformRandomUniform$fire6/expand3x3/random_uniform/shape*
dtype0*'
_output_shapes
:0Р*
seed2Ь*
seedБџх)*
T0

"fire6/expand3x3/random_uniform/subSub"fire6/expand3x3/random_uniform/max"fire6/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
­
"fire6/expand3x3/random_uniform/mulMul,fire6/expand3x3/random_uniform/RandomUniform"fire6/expand3x3/random_uniform/sub*'
_output_shapes
:0Р*
T0

fire6/expand3x3/random_uniformAdd"fire6/expand3x3/random_uniform/mul"fire6/expand3x3/random_uniform/min*'
_output_shapes
:0Р*
T0

fire6/expand3x3/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р
х
fire6/expand3x3/kernel/AssignAssignfire6/expand3x3/kernelfire6/expand3x3/random_uniform*
use_locking(*
T0*)
_class
loc:@fire6/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р

fire6/expand3x3/kernel/readIdentityfire6/expand3x3/kernel*
T0*)
_class
loc:@fire6/expand3x3/kernel*'
_output_shapes
:0Р
d
fire6/expand3x3/ConstConst*
dtype0*
_output_shapes	
:Р*
valueBР*    

fire6/expand3x3/bias
VariableV2*
shape:Р*
shared_name *
dtype0*
_output_shapes	
:Р*
	container 
Ъ
fire6/expand3x3/bias/AssignAssignfire6/expand3x3/biasfire6/expand3x3/Const*
use_locking(*
T0*'
_class
loc:@fire6/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р

fire6/expand3x3/bias/readIdentityfire6/expand3x3/bias*
_output_shapes	
:Р*
T0*'
_class
loc:@fire6/expand3x3/bias
z
)fire6/expand3x3/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire6/expand3x3/convolutionConv2Dfire6/relu_squeeze1x1/Relufire6/expand3x3/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:џџџџџџџџџР
Ќ
fire6/expand3x3/BiasAddBiasAddfire6/expand3x3/convolutionfire6/expand3x3/bias/read*0
_output_shapes
:џџџџџџџџџР*
T0*
data_formatNHWC
u
fire6/relu_expand3x3/ReluRelufire6/expand3x3/BiasAdd*0
_output_shapes
:џџџџџџџџџР*
T0
Z
fire6/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire6/concat/concatConcatV2fire6/relu_expand1x1/Relufire6/relu_expand3x3/Relufire6/concat/concat/axis*
N*0
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
~
%fire7/squeeze1x1/random_uniform/shapeConst*%
valueB"        0   *
dtype0*
_output_shapes
:
h
#fire7/squeeze1x1/random_uniform/minConst*
_output_shapes
: *
valueB
 *я[ёН*
dtype0
h
#fire7/squeeze1x1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *я[ё=*
dtype0
У
-fire7/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire7/squeeze1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:0*
seed2ПЉА*
seedБџх)

#fire7/squeeze1x1/random_uniform/subSub#fire7/squeeze1x1/random_uniform/max#fire7/squeeze1x1/random_uniform/min*
_output_shapes
: *
T0
А
#fire7/squeeze1x1/random_uniform/mulMul-fire7/squeeze1x1/random_uniform/RandomUniform#fire7/squeeze1x1/random_uniform/sub*
T0*'
_output_shapes
:0
Ђ
fire7/squeeze1x1/random_uniformAdd#fire7/squeeze1x1/random_uniform/mul#fire7/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:0

fire7/squeeze1x1/kernel
VariableV2*
shape:0*
shared_name *
dtype0*'
_output_shapes
:0*
	container 
щ
fire7/squeeze1x1/kernel/AssignAssignfire7/squeeze1x1/kernelfire7/squeeze1x1/random_uniform*'
_output_shapes
:0*
use_locking(*
T0**
_class 
loc:@fire7/squeeze1x1/kernel*
validate_shape(

fire7/squeeze1x1/kernel/readIdentityfire7/squeeze1x1/kernel*'
_output_shapes
:0*
T0**
_class 
loc:@fire7/squeeze1x1/kernel
c
fire7/squeeze1x1/ConstConst*
valueB0*    *
dtype0*
_output_shapes
:0

fire7/squeeze1x1/bias
VariableV2*
dtype0*
_output_shapes
:0*
	container *
shape:0*
shared_name 
Э
fire7/squeeze1x1/bias/AssignAssignfire7/squeeze1x1/biasfire7/squeeze1x1/Const*
_output_shapes
:0*
use_locking(*
T0*(
_class
loc:@fire7/squeeze1x1/bias*
validate_shape(

fire7/squeeze1x1/bias/readIdentityfire7/squeeze1x1/bias*
T0*(
_class
loc:@fire7/squeeze1x1/bias*
_output_shapes
:0
{
*fire7/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire7/squeeze1x1/convolutionConv2Dfire6/concat/concatfire7/squeeze1x1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0
Ў
fire7/squeeze1x1/BiasAddBiasAddfire7/squeeze1x1/convolutionfire7/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ0
v
fire7/relu_squeeze1x1/ReluRelufire7/squeeze1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ0*
T0
}
$fire7/expand1x1/random_uniform/shapeConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
g
"fire7/expand1x1/random_uniform/minConst*
valueB
 *ш!О*
dtype0*
_output_shapes
: 
g
"fire7/expand1x1/random_uniform/maxConst*
valueB
 *ш!>*
dtype0*
_output_shapes
: 
Р
,fire7/expand1x1/random_uniform/RandomUniformRandomUniform$fire7/expand1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:0Р*
seed2ЛЇ

"fire7/expand1x1/random_uniform/subSub"fire7/expand1x1/random_uniform/max"fire7/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
­
"fire7/expand1x1/random_uniform/mulMul,fire7/expand1x1/random_uniform/RandomUniform"fire7/expand1x1/random_uniform/sub*'
_output_shapes
:0Р*
T0

fire7/expand1x1/random_uniformAdd"fire7/expand1x1/random_uniform/mul"fire7/expand1x1/random_uniform/min*
T0*'
_output_shapes
:0Р

fire7/expand1x1/kernel
VariableV2*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name *
dtype0
х
fire7/expand1x1/kernel/AssignAssignfire7/expand1x1/kernelfire7/expand1x1/random_uniform*
use_locking(*
T0*)
_class
loc:@fire7/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р

fire7/expand1x1/kernel/readIdentityfire7/expand1x1/kernel*'
_output_shapes
:0Р*
T0*)
_class
loc:@fire7/expand1x1/kernel
d
fire7/expand1x1/ConstConst*
_output_shapes	
:Р*
valueBР*    *
dtype0

fire7/expand1x1/bias
VariableV2*
shape:Р*
shared_name *
dtype0*
_output_shapes	
:Р*
	container 
Ъ
fire7/expand1x1/bias/AssignAssignfire7/expand1x1/biasfire7/expand1x1/Const*
T0*'
_class
loc:@fire7/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking(

fire7/expand1x1/bias/readIdentityfire7/expand1x1/bias*
T0*'
_class
loc:@fire7/expand1x1/bias*
_output_shapes	
:Р
z
)fire7/expand1x1/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

fire7/expand1x1/convolutionConv2Dfire7/relu_squeeze1x1/Relufire7/expand1x1/kernel/read*0
_output_shapes
:џџџџџџџџџР*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
Ќ
fire7/expand1x1/BiasAddBiasAddfire7/expand1x1/convolutionfire7/expand1x1/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџР*
T0
u
fire7/relu_expand1x1/ReluRelufire7/expand1x1/BiasAdd*0
_output_shapes
:џџџџџџџџџР*
T0
}
$fire7/expand3x3/random_uniform/shapeConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
g
"fire7/expand3x3/random_uniform/minConst*
_output_shapes
: *
valueB
 *ЯрWН*
dtype0
g
"fire7/expand3x3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ЯрW=
Р
,fire7/expand3x3/random_uniform/RandomUniformRandomUniform$fire7/expand3x3/random_uniform/shape*'
_output_shapes
:0Р*
seed2 M*
seedБџх)*
T0*
dtype0

"fire7/expand3x3/random_uniform/subSub"fire7/expand3x3/random_uniform/max"fire7/expand3x3/random_uniform/min*
T0*
_output_shapes
: 
­
"fire7/expand3x3/random_uniform/mulMul,fire7/expand3x3/random_uniform/RandomUniform"fire7/expand3x3/random_uniform/sub*'
_output_shapes
:0Р*
T0

fire7/expand3x3/random_uniformAdd"fire7/expand3x3/random_uniform/mul"fire7/expand3x3/random_uniform/min*
T0*'
_output_shapes
:0Р

fire7/expand3x3/kernel
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
х
fire7/expand3x3/kernel/AssignAssignfire7/expand3x3/kernelfire7/expand3x3/random_uniform*
use_locking(*
T0*)
_class
loc:@fire7/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р

fire7/expand3x3/kernel/readIdentityfire7/expand3x3/kernel*)
_class
loc:@fire7/expand3x3/kernel*'
_output_shapes
:0Р*
T0
d
fire7/expand3x3/ConstConst*
valueBР*    *
dtype0*
_output_shapes	
:Р

fire7/expand3x3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:Р*
	container *
shape:Р
Ъ
fire7/expand3x3/bias/AssignAssignfire7/expand3x3/biasfire7/expand3x3/Const*
T0*'
_class
loc:@fire7/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking(

fire7/expand3x3/bias/readIdentityfire7/expand3x3/bias*'
_class
loc:@fire7/expand3x3/bias*
_output_shapes	
:Р*
T0
z
)fire7/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire7/expand3x3/convolutionConv2Dfire7/relu_squeeze1x1/Relufire7/expand3x3/kernel/read*0
_output_shapes
:џџџџџџџџџР*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ќ
fire7/expand3x3/BiasAddBiasAddfire7/expand3x3/convolutionfire7/expand3x3/bias/read*0
_output_shapes
:џџџџџџџџџР*
T0*
data_formatNHWC
u
fire7/relu_expand3x3/ReluRelufire7/expand3x3/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџР
Z
fire7/concat/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
П
fire7/concat/concatConcatV2fire7/relu_expand1x1/Relufire7/relu_expand3x3/Relufire7/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
~
%fire8/squeeze1x1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"        @   
h
#fire8/squeeze1x1/random_uniform/minConst*
valueB
 *эН*
dtype0*
_output_shapes
: 
h
#fire8/squeeze1x1/random_uniform/maxConst*
valueB
 *э=*
dtype0*
_output_shapes
: 
У
-fire8/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire8/squeeze1x1/random_uniform/shape*
seedБџх)*
T0*
dtype0*'
_output_shapes
:@*
seed2Йе

#fire8/squeeze1x1/random_uniform/subSub#fire8/squeeze1x1/random_uniform/max#fire8/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire8/squeeze1x1/random_uniform/mulMul-fire8/squeeze1x1/random_uniform/RandomUniform#fire8/squeeze1x1/random_uniform/sub*
T0*'
_output_shapes
:@
Ђ
fire8/squeeze1x1/random_uniformAdd#fire8/squeeze1x1/random_uniform/mul#fire8/squeeze1x1/random_uniform/min*'
_output_shapes
:@*
T0

fire8/squeeze1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
щ
fire8/squeeze1x1/kernel/AssignAssignfire8/squeeze1x1/kernelfire8/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire8/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@

fire8/squeeze1x1/kernel/readIdentityfire8/squeeze1x1/kernel*'
_output_shapes
:@*
T0**
_class 
loc:@fire8/squeeze1x1/kernel
c
fire8/squeeze1x1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@

fire8/squeeze1x1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Э
fire8/squeeze1x1/bias/AssignAssignfire8/squeeze1x1/biasfire8/squeeze1x1/Const*(
_class
loc:@fire8/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

fire8/squeeze1x1/bias/readIdentityfire8/squeeze1x1/bias*
T0*(
_class
loc:@fire8/squeeze1x1/bias*
_output_shapes
:@
{
*fire8/squeeze1x1/convolution/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

fire8/squeeze1x1/convolutionConv2Dfire7/concat/concatfire8/squeeze1x1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
Ў
fire8/squeeze1x1/BiasAddBiasAddfire8/squeeze1x1/convolutionfire8/squeeze1x1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@
v
fire8/relu_squeeze1x1/ReluRelufire8/squeeze1x1/BiasAdd*/
_output_shapes
:џџџџџџџџџ@*
T0
}
$fire8/expand1x1/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
g
"fire8/expand1x1/random_uniform/minConst*
_output_shapes
: *
valueB
 *7О*
dtype0
g
"fire8/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
С
,fire8/expand1x1/random_uniform/RandomUniformRandomUniform$fire8/expand1x1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:@*
seed2рй*
seedБџх)

"fire8/expand1x1/random_uniform/subSub"fire8/expand1x1/random_uniform/max"fire8/expand1x1/random_uniform/min*
_output_shapes
: *
T0
­
"fire8/expand1x1/random_uniform/mulMul,fire8/expand1x1/random_uniform/RandomUniform"fire8/expand1x1/random_uniform/sub*
T0*'
_output_shapes
:@

fire8/expand1x1/random_uniformAdd"fire8/expand1x1/random_uniform/mul"fire8/expand1x1/random_uniform/min*
T0*'
_output_shapes
:@

fire8/expand1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
х
fire8/expand1x1/kernel/AssignAssignfire8/expand1x1/kernelfire8/expand1x1/random_uniform*)
_class
loc:@fire8/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0

fire8/expand1x1/kernel/readIdentityfire8/expand1x1/kernel*'
_output_shapes
:@*
T0*)
_class
loc:@fire8/expand1x1/kernel
d
fire8/expand1x1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire8/expand1x1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ъ
fire8/expand1x1/bias/AssignAssignfire8/expand1x1/biasfire8/expand1x1/Const*
use_locking(*
T0*'
_class
loc:@fire8/expand1x1/bias*
validate_shape(*
_output_shapes	
:

fire8/expand1x1/bias/readIdentityfire8/expand1x1/bias*
T0*'
_class
loc:@fire8/expand1x1/bias*
_output_shapes	
:
z
)fire8/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire8/expand1x1/convolutionConv2Dfire8/relu_squeeze1x1/Relufire8/expand1x1/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0
Ќ
fire8/expand1x1/BiasAddBiasAddfire8/expand1x1/convolutionfire8/expand1x1/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire8/relu_expand1x1/ReluRelufire8/expand1x1/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
}
$fire8/expand3x3/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @      
g
"fire8/expand3x3/random_uniform/minConst*
_output_shapes
: *
valueB
 *Кє:Н*
dtype0
g
"fire8/expand3x3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Кє:=
С
,fire8/expand3x3/random_uniform/RandomUniformRandomUniform$fire8/expand3x3/random_uniform/shape*'
_output_shapes
:@*
seed2ыхЯ*
seedБџх)*
T0*
dtype0

"fire8/expand3x3/random_uniform/subSub"fire8/expand3x3/random_uniform/max"fire8/expand3x3/random_uniform/min*
_output_shapes
: *
T0
­
"fire8/expand3x3/random_uniform/mulMul,fire8/expand3x3/random_uniform/RandomUniform"fire8/expand3x3/random_uniform/sub*
T0*'
_output_shapes
:@

fire8/expand3x3/random_uniformAdd"fire8/expand3x3/random_uniform/mul"fire8/expand3x3/random_uniform/min*'
_output_shapes
:@*
T0

fire8/expand3x3/kernel
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
х
fire8/expand3x3/kernel/AssignAssignfire8/expand3x3/kernelfire8/expand3x3/random_uniform*
use_locking(*
T0*)
_class
loc:@fire8/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@

fire8/expand3x3/kernel/readIdentityfire8/expand3x3/kernel*
T0*)
_class
loc:@fire8/expand3x3/kernel*'
_output_shapes
:@
d
fire8/expand3x3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

fire8/expand3x3/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ъ
fire8/expand3x3/bias/AssignAssignfire8/expand3x3/biasfire8/expand3x3/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire8/expand3x3/bias

fire8/expand3x3/bias/readIdentityfire8/expand3x3/bias*
T0*'
_class
loc:@fire8/expand3x3/bias*
_output_shapes	
:
z
)fire8/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire8/expand3x3/convolutionConv2Dfire8/relu_squeeze1x1/Relufire8/expand3x3/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:џџџџџџџџџ
Ќ
fire8/expand3x3/BiasAddBiasAddfire8/expand3x3/convolutionfire8/expand3x3/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ*
T0
u
fire8/relu_expand3x3/ReluRelufire8/expand3x3/BiasAdd*0
_output_shapes
:џџџџџџџџџ*
T0
Z
fire8/concat/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
П
fire8/concat/concatConcatV2fire8/relu_expand1x1/Relufire8/relu_expand3x3/Relufire8/concat/concat/axis*0
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0*
N
~
%fire9/squeeze1x1/random_uniform/shapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
h
#fire9/squeeze1x1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ьбН
h
#fire9/squeeze1x1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ьб=
У
-fire9/squeeze1x1/random_uniform/RandomUniformRandomUniform%fire9/squeeze1x1/random_uniform/shape*
dtype0*'
_output_shapes
:@*
seed2АќЗ*
seedБџх)*
T0

#fire9/squeeze1x1/random_uniform/subSub#fire9/squeeze1x1/random_uniform/max#fire9/squeeze1x1/random_uniform/min*
T0*
_output_shapes
: 
А
#fire9/squeeze1x1/random_uniform/mulMul-fire9/squeeze1x1/random_uniform/RandomUniform#fire9/squeeze1x1/random_uniform/sub*
T0*'
_output_shapes
:@
Ђ
fire9/squeeze1x1/random_uniformAdd#fire9/squeeze1x1/random_uniform/mul#fire9/squeeze1x1/random_uniform/min*
T0*'
_output_shapes
:@

fire9/squeeze1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
щ
fire9/squeeze1x1/kernel/AssignAssignfire9/squeeze1x1/kernelfire9/squeeze1x1/random_uniform*
use_locking(*
T0**
_class 
loc:@fire9/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@

fire9/squeeze1x1/kernel/readIdentityfire9/squeeze1x1/kernel*'
_output_shapes
:@*
T0**
_class 
loc:@fire9/squeeze1x1/kernel
c
fire9/squeeze1x1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@

fire9/squeeze1x1/bias
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Э
fire9/squeeze1x1/bias/AssignAssignfire9/squeeze1x1/biasfire9/squeeze1x1/Const*(
_class
loc:@fire9/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

fire9/squeeze1x1/bias/readIdentityfire9/squeeze1x1/bias*(
_class
loc:@fire9/squeeze1x1/bias*
_output_shapes
:@*
T0
{
*fire9/squeeze1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire9/squeeze1x1/convolutionConv2Dfire8/concat/concatfire9/squeeze1x1/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations

Ў
fire9/squeeze1x1/BiasAddBiasAddfire9/squeeze1x1/convolutionfire9/squeeze1x1/bias/read*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ@*
T0
v
fire9/relu_squeeze1x1/ReluRelufire9/squeeze1x1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ@
}
$fire9/expand1x1/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
g
"fire9/expand1x1/random_uniform/minConst*
valueB
 *7О*
dtype0*
_output_shapes
: 
g
"fire9/expand1x1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
С
,fire9/expand1x1/random_uniform/RandomUniformRandomUniform$fire9/expand1x1/random_uniform/shape*'
_output_shapes
:@*
seed2кУо*
seedБџх)*
T0*
dtype0

"fire9/expand1x1/random_uniform/subSub"fire9/expand1x1/random_uniform/max"fire9/expand1x1/random_uniform/min*
T0*
_output_shapes
: 
­
"fire9/expand1x1/random_uniform/mulMul,fire9/expand1x1/random_uniform/RandomUniform"fire9/expand1x1/random_uniform/sub*'
_output_shapes
:@*
T0

fire9/expand1x1/random_uniformAdd"fire9/expand1x1/random_uniform/mul"fire9/expand1x1/random_uniform/min*
T0*'
_output_shapes
:@

fire9/expand1x1/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
х
fire9/expand1x1/kernel/AssignAssignfire9/expand1x1/kernelfire9/expand1x1/random_uniform*
T0*)
_class
loc:@fire9/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(

fire9/expand1x1/kernel/readIdentityfire9/expand1x1/kernel*
T0*)
_class
loc:@fire9/expand1x1/kernel*'
_output_shapes
:@
d
fire9/expand1x1/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    

fire9/expand1x1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ъ
fire9/expand1x1/bias/AssignAssignfire9/expand1x1/biasfire9/expand1x1/Const*
T0*'
_class
loc:@fire9/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

fire9/expand1x1/bias/readIdentityfire9/expand1x1/bias*
T0*'
_class
loc:@fire9/expand1x1/bias*
_output_shapes	
:
z
)fire9/expand1x1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire9/expand1x1/convolutionConv2Dfire9/relu_squeeze1x1/Relufire9/expand1x1/kernel/read*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ќ
fire9/expand1x1/BiasAddBiasAddfire9/expand1x1/convolutionfire9/expand1x1/bias/read*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ*
T0
u
fire9/relu_expand1x1/ReluRelufire9/expand1x1/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
}
$fire9/expand3x3/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
g
"fire9/expand3x3/random_uniform/minConst*
valueB
 *Кє:Н*
dtype0*
_output_shapes
: 
g
"fire9/expand3x3/random_uniform/maxConst*
valueB
 *Кє:=*
dtype0*
_output_shapes
: 
С
,fire9/expand3x3/random_uniform/RandomUniformRandomUniform$fire9/expand3x3/random_uniform/shape*
dtype0*'
_output_shapes
:@*
seed2ўѕ*
seedБџх)*
T0

"fire9/expand3x3/random_uniform/subSub"fire9/expand3x3/random_uniform/max"fire9/expand3x3/random_uniform/min*
_output_shapes
: *
T0
­
"fire9/expand3x3/random_uniform/mulMul,fire9/expand3x3/random_uniform/RandomUniform"fire9/expand3x3/random_uniform/sub*
T0*'
_output_shapes
:@

fire9/expand3x3/random_uniformAdd"fire9/expand3x3/random_uniform/mul"fire9/expand3x3/random_uniform/min*
T0*'
_output_shapes
:@

fire9/expand3x3/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
х
fire9/expand3x3/kernel/AssignAssignfire9/expand3x3/kernelfire9/expand3x3/random_uniform*'
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire9/expand3x3/kernel*
validate_shape(

fire9/expand3x3/kernel/readIdentityfire9/expand3x3/kernel*'
_output_shapes
:@*
T0*)
_class
loc:@fire9/expand3x3/kernel
d
fire9/expand3x3/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    

fire9/expand3x3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ъ
fire9/expand3x3/bias/AssignAssignfire9/expand3x3/biasfire9/expand3x3/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire9/expand3x3/bias

fire9/expand3x3/bias/readIdentityfire9/expand3x3/bias*
_output_shapes	
:*
T0*'
_class
loc:@fire9/expand3x3/bias
z
)fire9/expand3x3/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

fire9/expand3x3/convolutionConv2Dfire9/relu_squeeze1x1/Relufire9/expand3x3/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0
Ќ
fire9/expand3x3/BiasAddBiasAddfire9/expand3x3/convolutionfire9/expand3x3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџ
u
fire9/relu_expand3x3/ReluRelufire9/expand3x3/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџ
Z
fire9/concat/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
П
fire9/concat/concatConcatV2fire9/relu_expand1x1/Relufire9/relu_expand3x3/Relufire9/concat/concat/axis*

Tidx0*
T0*
N*0
_output_shapes
:џџџџџџџџџ
b
 drop9/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

drop9/keras_learning_phasePlaceholderWithDefault drop9/keras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 
v
drop9/cond/SwitchSwitchdrop9/keras_learning_phasedrop9/keras_learning_phase*
T0
*
_output_shapes
: : 
U
drop9/cond/switch_tIdentitydrop9/cond/Switch:1*
_output_shapes
: *
T0

S
drop9/cond/switch_fIdentitydrop9/cond/Switch*
_output_shapes
: *
T0

[
drop9/cond/pred_idIdentitydrop9/keras_learning_phase*
_output_shapes
: *
T0

k
drop9/cond/mul/yConst^drop9/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
drop9/cond/mulMuldrop9/cond/mul/Switch:1drop9/cond/mul/y*
T0*0
_output_shapes
:џџџџџџџџџ
Ч
drop9/cond/mul/SwitchSwitchfire9/concat/concatdrop9/cond/pred_id*
T0*&
_class
loc:@fire9/concat/concat*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ
w
drop9/cond/dropout/keep_probConst^drop9/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
f
drop9/cond/dropout/ShapeShapedrop9/cond/mul*
_output_shapes
:*
T0*
out_type0

%drop9/cond/dropout/random_uniform/minConst^drop9/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

%drop9/cond/dropout/random_uniform/maxConst^drop9/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
С
/drop9/cond/dropout/random_uniform/RandomUniformRandomUniformdrop9/cond/dropout/Shape*
dtype0*0
_output_shapes
:џџџџџџџџџ*
seed2Л *
seedБџх)*
T0

%drop9/cond/dropout/random_uniform/subSub%drop9/cond/dropout/random_uniform/max%drop9/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
П
%drop9/cond/dropout/random_uniform/mulMul/drop9/cond/dropout/random_uniform/RandomUniform%drop9/cond/dropout/random_uniform/sub*0
_output_shapes
:џџџџџџџџџ*
T0
Б
!drop9/cond/dropout/random_uniformAdd%drop9/cond/dropout/random_uniform/mul%drop9/cond/dropout/random_uniform/min*0
_output_shapes
:џџџџџџџџџ*
T0

drop9/cond/dropout/addAdddrop9/cond/dropout/keep_prob!drop9/cond/dropout/random_uniform*
T0*0
_output_shapes
:џџџџџџџџџ
t
drop9/cond/dropout/FloorFloordrop9/cond/dropout/add*0
_output_shapes
:џџџџџџџџџ*
T0

drop9/cond/dropout/divRealDivdrop9/cond/muldrop9/cond/dropout/keep_prob*
T0*0
_output_shapes
:џџџџџџџџџ

drop9/cond/dropout/mulMuldrop9/cond/dropout/divdrop9/cond/dropout/Floor*
T0*0
_output_shapes
:џџџџџџџџџ
Х
drop9/cond/Switch_1Switchfire9/concat/concatdrop9/cond/pred_id*
T0*&
_class
loc:@fire9/concat/concat*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ

drop9/cond/MergeMergedrop9/cond/Switch_1drop9/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ: *
T0*
N
t
conv10/random_uniform/shapeConst*%
valueB"         ш  *
dtype0*
_output_shapes
:
^
conv10/random_uniform/minConst*
valueB
 *
Н*
dtype0*
_output_shapes
: 
^
conv10/random_uniform/maxConst*
valueB
 *
=*
dtype0*
_output_shapes
: 
А
#conv10/random_uniform/RandomUniformRandomUniformconv10/random_uniform/shape*
seedБџх)*
T0*
dtype0*(
_output_shapes
:ш*
seed2Юл
w
conv10/random_uniform/subSubconv10/random_uniform/maxconv10/random_uniform/min*
T0*
_output_shapes
: 

conv10/random_uniform/mulMul#conv10/random_uniform/RandomUniformconv10/random_uniform/sub*
T0*(
_output_shapes
:ш

conv10/random_uniformAddconv10/random_uniform/mulconv10/random_uniform/min*
T0*(
_output_shapes
:ш

conv10/kernel
VariableV2*
shape:ш*
shared_name *
dtype0*(
_output_shapes
:ш*
	container 
Т
conv10/kernel/AssignAssignconv10/kernelconv10/random_uniform*
use_locking(*
T0* 
_class
loc:@conv10/kernel*
validate_shape(*(
_output_shapes
:ш

conv10/kernel/readIdentityconv10/kernel*
T0* 
_class
loc:@conv10/kernel*(
_output_shapes
:ш
[
conv10/ConstConst*
_output_shapes	
:ш*
valueBш*    *
dtype0
y
conv10/bias
VariableV2*
dtype0*
_output_shapes	
:ш*
	container *
shape:ш*
shared_name 
І
conv10/bias/AssignAssignconv10/biasconv10/Const*
use_locking(*
T0*
_class
loc:@conv10/bias*
validate_shape(*
_output_shapes	
:ш
o
conv10/bias/readIdentityconv10/bias*
T0*
_class
loc:@conv10/bias*
_output_shapes	
:ш
q
 conv10/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ь
conv10/convolutionConv2Ddrop9/cond/Mergeconv10/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџш

conv10/BiasAddBiasAddconv10/convolutionconv10/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:џџџџџџџџџш
c
relu_conv10/ReluReluconv10/BiasAdd*
T0*0
_output_shapes
:џџџџџџџџџш

1global_average_pooling2d_1/Mean/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
М
global_average_pooling2d_1/MeanMeanrelu_conv10/Relu1global_average_pooling2d_1/Mean/reduction_indices*(
_output_shapes
:џџџџџџџџџш*
	keep_dims( *

Tidx0*
T0
k
loss/SoftmaxSoftmaxglobal_average_pooling2d_1/Mean*
T0*(
_output_shapes
:џџџџџџџџџш
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
:@*
shape:@
І
AssignAssignconv1/kernelPlaceholder*
use_locking( *
T0*
_class
loc:@conv1/kernel*
validate_shape(*&
_output_shapes
:@
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
:@*
shape:@

Assign_1Assign
conv1/biasPlaceholder_1*
use_locking( *
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
:@
n
Placeholder_2Placeholder*
dtype0*&
_output_shapes
:@*
shape:@
Р
Assign_2Assignfire2/squeeze1x1/kernelPlaceholder_2*
use_locking( *
T0**
_class 
loc:@fire2/squeeze1x1/kernel*
validate_shape(*&
_output_shapes
:@
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
А
Assign_3Assignfire2/squeeze1x1/biasPlaceholder_3*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*(
_class
loc:@fire2/squeeze1x1/bias
n
Placeholder_4Placeholder*
dtype0*&
_output_shapes
:@*
shape:@
О
Assign_4Assignfire2/expand1x1/kernelPlaceholder_4*)
_class
loc:@fire2/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking( *
T0
V
Placeholder_5Placeholder*
dtype0*
_output_shapes
:@*
shape:@
Ў
Assign_5Assignfire2/expand1x1/biasPlaceholder_5*
use_locking( *
T0*'
_class
loc:@fire2/expand1x1/bias*
validate_shape(*
_output_shapes
:@
n
Placeholder_6Placeholder*&
_output_shapes
:@*
shape:@*
dtype0
О
Assign_6Assignfire2/expand3x3/kernelPlaceholder_6*)
_class
loc:@fire2/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking( *
T0
V
Placeholder_7Placeholder*
_output_shapes
:@*
shape:@*
dtype0
Ў
Assign_7Assignfire2/expand3x3/biasPlaceholder_7*
use_locking( *
T0*'
_class
loc:@fire2/expand3x3/bias*
validate_shape(*
_output_shapes
:@
p
Placeholder_8Placeholder*
dtype0*'
_output_shapes
:*
shape:
С
Assign_8Assignfire3/squeeze1x1/kernelPlaceholder_8*
use_locking( *
T0**
_class 
loc:@fire3/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:
V
Placeholder_9Placeholder*
dtype0*
_output_shapes
:*
shape:
А
Assign_9Assignfire3/squeeze1x1/biasPlaceholder_9*
use_locking( *
T0*(
_class
loc:@fire3/squeeze1x1/bias*
validate_shape(*
_output_shapes
:
o
Placeholder_10Placeholder*
dtype0*&
_output_shapes
:@*
shape:@
Р
	Assign_10Assignfire3/expand1x1/kernelPlaceholder_10*)
_class
loc:@fire3/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking( *
T0
W
Placeholder_11Placeholder*
dtype0*
_output_shapes
:@*
shape:@
А
	Assign_11Assignfire3/expand1x1/biasPlaceholder_11*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0*'
_class
loc:@fire3/expand1x1/bias
o
Placeholder_12Placeholder*
dtype0*&
_output_shapes
:@*
shape:@
Р
	Assign_12Assignfire3/expand3x3/kernelPlaceholder_12*
T0*)
_class
loc:@fire3/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking( 
W
Placeholder_13Placeholder*
dtype0*
_output_shapes
:@*
shape:@
А
	Assign_13Assignfire3/expand3x3/biasPlaceholder_13*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0*'
_class
loc:@fire3/expand3x3/bias
q
Placeholder_14Placeholder*
shape: *
dtype0*'
_output_shapes
: 
У
	Assign_14Assignfire4/squeeze1x1/kernelPlaceholder_14*
use_locking( *
T0**
_class 
loc:@fire4/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: 
W
Placeholder_15Placeholder*
shape: *
dtype0*
_output_shapes
: 
В
	Assign_15Assignfire4/squeeze1x1/biasPlaceholder_15*
T0*(
_class
loc:@fire4/squeeze1x1/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
q
Placeholder_16Placeholder*
shape: *
dtype0*'
_output_shapes
: 
С
	Assign_16Assignfire4/expand1x1/kernelPlaceholder_16*
validate_shape(*'
_output_shapes
: *
use_locking( *
T0*)
_class
loc:@fire4/expand1x1/kernel
Y
Placeholder_17Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_17Assignfire4/expand1x1/biasPlaceholder_17*
use_locking( *
T0*'
_class
loc:@fire4/expand1x1/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_18Placeholder*
shape: *
dtype0*'
_output_shapes
: 
С
	Assign_18Assignfire4/expand3x3/kernelPlaceholder_18*
validate_shape(*'
_output_shapes
: *
use_locking( *
T0*)
_class
loc:@fire4/expand3x3/kernel
Y
Placeholder_19Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_19Assignfire4/expand3x3/biasPlaceholder_19*
use_locking( *
T0*'
_class
loc:@fire4/expand3x3/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_20Placeholder*'
_output_shapes
: *
shape: *
dtype0
У
	Assign_20Assignfire5/squeeze1x1/kernelPlaceholder_20**
_class 
loc:@fire5/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking( *
T0
W
Placeholder_21Placeholder*
dtype0*
_output_shapes
: *
shape: 
В
	Assign_21Assignfire5/squeeze1x1/biasPlaceholder_21*
use_locking( *
T0*(
_class
loc:@fire5/squeeze1x1/bias*
validate_shape(*
_output_shapes
: 
q
Placeholder_22Placeholder*
shape: *
dtype0*'
_output_shapes
: 
С
	Assign_22Assignfire5/expand1x1/kernelPlaceholder_22*
T0*)
_class
loc:@fire5/expand1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking( 
Y
Placeholder_23Placeholder*
_output_shapes	
:*
shape:*
dtype0
Б
	Assign_23Assignfire5/expand1x1/biasPlaceholder_23*
T0*'
_class
loc:@fire5/expand1x1/bias*
validate_shape(*
_output_shapes	
:*
use_locking( 
q
Placeholder_24Placeholder*
shape: *
dtype0*'
_output_shapes
: 
С
	Assign_24Assignfire5/expand3x3/kernelPlaceholder_24*
use_locking( *
T0*)
_class
loc:@fire5/expand3x3/kernel*
validate_shape(*'
_output_shapes
: 
Y
Placeholder_25Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_25Assignfire5/expand3x3/biasPlaceholder_25*
use_locking( *
T0*'
_class
loc:@fire5/expand3x3/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_26Placeholder*
dtype0*'
_output_shapes
:0*
shape:0
У
	Assign_26Assignfire6/squeeze1x1/kernelPlaceholder_26**
_class 
loc:@fire6/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0*
use_locking( *
T0
W
Placeholder_27Placeholder*
_output_shapes
:0*
shape:0*
dtype0
В
	Assign_27Assignfire6/squeeze1x1/biasPlaceholder_27*
_output_shapes
:0*
use_locking( *
T0*(
_class
loc:@fire6/squeeze1x1/bias*
validate_shape(
q
Placeholder_28Placeholder*
shape:0Р*
dtype0*'
_output_shapes
:0Р
С
	Assign_28Assignfire6/expand1x1/kernelPlaceholder_28*
T0*)
_class
loc:@fire6/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р*
use_locking( 
Y
Placeholder_29Placeholder*
dtype0*
_output_shapes	
:Р*
shape:Р
Б
	Assign_29Assignfire6/expand1x1/biasPlaceholder_29*
use_locking( *
T0*'
_class
loc:@fire6/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р
q
Placeholder_30Placeholder*
shape:0Р*
dtype0*'
_output_shapes
:0Р
С
	Assign_30Assignfire6/expand3x3/kernelPlaceholder_30*
validate_shape(*'
_output_shapes
:0Р*
use_locking( *
T0*)
_class
loc:@fire6/expand3x3/kernel
Y
Placeholder_31Placeholder*
dtype0*
_output_shapes	
:Р*
shape:Р
Б
	Assign_31Assignfire6/expand3x3/biasPlaceholder_31*
use_locking( *
T0*'
_class
loc:@fire6/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р
q
Placeholder_32Placeholder*
shape:0*
dtype0*'
_output_shapes
:0
У
	Assign_32Assignfire7/squeeze1x1/kernelPlaceholder_32**
_class 
loc:@fire7/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0*
use_locking( *
T0
W
Placeholder_33Placeholder*
shape:0*
dtype0*
_output_shapes
:0
В
	Assign_33Assignfire7/squeeze1x1/biasPlaceholder_33*
T0*(
_class
loc:@fire7/squeeze1x1/bias*
validate_shape(*
_output_shapes
:0*
use_locking( 
q
Placeholder_34Placeholder*
dtype0*'
_output_shapes
:0Р*
shape:0Р
С
	Assign_34Assignfire7/expand1x1/kernelPlaceholder_34*
use_locking( *
T0*)
_class
loc:@fire7/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р
Y
Placeholder_35Placeholder*
dtype0*
_output_shapes	
:Р*
shape:Р
Б
	Assign_35Assignfire7/expand1x1/biasPlaceholder_35*
T0*'
_class
loc:@fire7/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking( 
q
Placeholder_36Placeholder*
dtype0*'
_output_shapes
:0Р*
shape:0Р
С
	Assign_36Assignfire7/expand3x3/kernelPlaceholder_36*
use_locking( *
T0*)
_class
loc:@fire7/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р
Y
Placeholder_37Placeholder*
dtype0*
_output_shapes	
:Р*
shape:Р
Б
	Assign_37Assignfire7/expand3x3/biasPlaceholder_37*'
_class
loc:@fire7/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р*
use_locking( *
T0
q
Placeholder_38Placeholder*
shape:@*
dtype0*'
_output_shapes
:@
У
	Assign_38Assignfire8/squeeze1x1/kernelPlaceholder_38**
_class 
loc:@fire8/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking( *
T0
W
Placeholder_39Placeholder*
dtype0*
_output_shapes
:@*
shape:@
В
	Assign_39Assignfire8/squeeze1x1/biasPlaceholder_39*
use_locking( *
T0*(
_class
loc:@fire8/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@
q
Placeholder_40Placeholder*
shape:@*
dtype0*'
_output_shapes
:@
С
	Assign_40Assignfire8/expand1x1/kernelPlaceholder_40*
use_locking( *
T0*)
_class
loc:@fire8/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@
Y
Placeholder_41Placeholder*
shape:*
dtype0*
_output_shapes	
:
Б
	Assign_41Assignfire8/expand1x1/biasPlaceholder_41*
use_locking( *
T0*'
_class
loc:@fire8/expand1x1/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_42Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
С
	Assign_42Assignfire8/expand3x3/kernelPlaceholder_42*
use_locking( *
T0*)
_class
loc:@fire8/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@
Y
Placeholder_43Placeholder*
dtype0*
_output_shapes	
:*
shape:
Б
	Assign_43Assignfire8/expand3x3/biasPlaceholder_43*
use_locking( *
T0*'
_class
loc:@fire8/expand3x3/bias*
validate_shape(*
_output_shapes	
:
q
Placeholder_44Placeholder*
shape:@*
dtype0*'
_output_shapes
:@
У
	Assign_44Assignfire9/squeeze1x1/kernelPlaceholder_44**
_class 
loc:@fire9/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking( *
T0
W
Placeholder_45Placeholder*
shape:@*
dtype0*
_output_shapes
:@
В
	Assign_45Assignfire9/squeeze1x1/biasPlaceholder_45*
T0*(
_class
loc:@fire9/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking( 
q
Placeholder_46Placeholder*'
_output_shapes
:@*
shape:@*
dtype0
С
	Assign_46Assignfire9/expand1x1/kernelPlaceholder_46*
use_locking( *
T0*)
_class
loc:@fire9/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@
Y
Placeholder_47Placeholder*
_output_shapes	
:*
shape:*
dtype0
Б
	Assign_47Assignfire9/expand1x1/biasPlaceholder_47*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0*'
_class
loc:@fire9/expand1x1/bias
q
Placeholder_48Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
С
	Assign_48Assignfire9/expand3x3/kernelPlaceholder_48*
use_locking( *
T0*)
_class
loc:@fire9/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@
Y
Placeholder_49Placeholder*
shape:*
dtype0*
_output_shapes	
:
Б
	Assign_49Assignfire9/expand3x3/biasPlaceholder_49*
use_locking( *
T0*'
_class
loc:@fire9/expand3x3/bias*
validate_shape(*
_output_shapes	
:
s
Placeholder_50Placeholder*
shape:ш*
dtype0*(
_output_shapes
:ш
А
	Assign_50Assignconv10/kernelPlaceholder_50* 
_class
loc:@conv10/kernel*
validate_shape(*(
_output_shapes
:ш*
use_locking( *
T0
Y
Placeholder_51Placeholder*
shape:ш*
dtype0*
_output_shapes	
:ш

	Assign_51Assignconv10/biasPlaceholder_51*
use_locking( *
T0*
_class
loc:@conv10/bias*
validate_shape(*
_output_shapes	
:ш

IsVariableInitializedIsVariableInitializedconv1/kernel*
_class
loc:@conv1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitialized
conv1/bias*
_class
loc:@conv1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializedfire2/squeeze1x1/kernel**
_class 
loc:@fire2/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedfire2/squeeze1x1/bias*
_output_shapes
: *(
_class
loc:@fire2/squeeze1x1/bias*
dtype0

IsVariableInitialized_4IsVariableInitializedfire2/expand1x1/kernel*)
_class
loc:@fire2/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializedfire2/expand1x1/bias*'
_class
loc:@fire2/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedfire2/expand3x3/kernel*)
_class
loc:@fire2/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedfire2/expand3x3/bias*
dtype0*
_output_shapes
: *'
_class
loc:@fire2/expand3x3/bias

IsVariableInitialized_8IsVariableInitializedfire3/squeeze1x1/kernel**
_class 
loc:@fire3/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedfire3/squeeze1x1/bias*
_output_shapes
: *(
_class
loc:@fire3/squeeze1x1/bias*
dtype0

IsVariableInitialized_10IsVariableInitializedfire3/expand1x1/kernel*)
_class
loc:@fire3/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedfire3/expand1x1/bias*
_output_shapes
: *'
_class
loc:@fire3/expand1x1/bias*
dtype0

IsVariableInitialized_12IsVariableInitializedfire3/expand3x3/kernel*)
_class
loc:@fire3/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializedfire3/expand3x3/bias*'
_class
loc:@fire3/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedfire4/squeeze1x1/kernel**
_class 
loc:@fire4/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedfire4/squeeze1x1/bias*
dtype0*
_output_shapes
: *(
_class
loc:@fire4/squeeze1x1/bias

IsVariableInitialized_16IsVariableInitializedfire4/expand1x1/kernel*)
_class
loc:@fire4/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedfire4/expand1x1/bias*'
_class
loc:@fire4/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedfire4/expand3x3/kernel*)
_class
loc:@fire4/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedfire4/expand3x3/bias*'
_class
loc:@fire4/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedfire5/squeeze1x1/kernel*
_output_shapes
: **
_class 
loc:@fire5/squeeze1x1/kernel*
dtype0

IsVariableInitialized_21IsVariableInitializedfire5/squeeze1x1/bias*(
_class
loc:@fire5/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializedfire5/expand1x1/kernel*)
_class
loc:@fire5/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializedfire5/expand1x1/bias*'
_class
loc:@fire5/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_24IsVariableInitializedfire5/expand3x3/kernel*)
_class
loc:@fire5/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_25IsVariableInitializedfire5/expand3x3/bias*'
_class
loc:@fire5/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_26IsVariableInitializedfire6/squeeze1x1/kernel**
_class 
loc:@fire6/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_27IsVariableInitializedfire6/squeeze1x1/bias*(
_class
loc:@fire6/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_28IsVariableInitializedfire6/expand1x1/kernel*)
_class
loc:@fire6/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_29IsVariableInitializedfire6/expand1x1/bias*'
_class
loc:@fire6/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_30IsVariableInitializedfire6/expand3x3/kernel*)
_class
loc:@fire6/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_31IsVariableInitializedfire6/expand3x3/bias*'
_class
loc:@fire6/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_32IsVariableInitializedfire7/squeeze1x1/kernel**
_class 
loc:@fire7/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_33IsVariableInitializedfire7/squeeze1x1/bias*
_output_shapes
: *(
_class
loc:@fire7/squeeze1x1/bias*
dtype0

IsVariableInitialized_34IsVariableInitializedfire7/expand1x1/kernel*)
_class
loc:@fire7/expand1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_35IsVariableInitializedfire7/expand1x1/bias*'
_class
loc:@fire7/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_36IsVariableInitializedfire7/expand3x3/kernel*)
_class
loc:@fire7/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_37IsVariableInitializedfire7/expand3x3/bias*'
_class
loc:@fire7/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_38IsVariableInitializedfire8/squeeze1x1/kernel**
_class 
loc:@fire8/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_39IsVariableInitializedfire8/squeeze1x1/bias*(
_class
loc:@fire8/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_40IsVariableInitializedfire8/expand1x1/kernel*
dtype0*
_output_shapes
: *)
_class
loc:@fire8/expand1x1/kernel

IsVariableInitialized_41IsVariableInitializedfire8/expand1x1/bias*'
_class
loc:@fire8/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_42IsVariableInitializedfire8/expand3x3/kernel*
dtype0*
_output_shapes
: *)
_class
loc:@fire8/expand3x3/kernel

IsVariableInitialized_43IsVariableInitializedfire8/expand3x3/bias*'
_class
loc:@fire8/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_44IsVariableInitializedfire9/squeeze1x1/kernel**
_class 
loc:@fire9/squeeze1x1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_45IsVariableInitializedfire9/squeeze1x1/bias*(
_class
loc:@fire9/squeeze1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_46IsVariableInitializedfire9/expand1x1/kernel*
dtype0*
_output_shapes
: *)
_class
loc:@fire9/expand1x1/kernel

IsVariableInitialized_47IsVariableInitializedfire9/expand1x1/bias*'
_class
loc:@fire9/expand1x1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_48IsVariableInitializedfire9/expand3x3/kernel*)
_class
loc:@fire9/expand3x3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_49IsVariableInitializedfire9/expand3x3/bias*'
_class
loc:@fire9/expand3x3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_50IsVariableInitializedconv10/kernel* 
_class
loc:@conv10/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_51IsVariableInitializedconv10/bias*
_class
loc:@conv10/bias*
dtype0*
_output_shapes
: 
Т
initNoOp^conv1/bias/Assign^conv1/kernel/Assign^conv10/bias/Assign^conv10/kernel/Assign^fire2/expand1x1/bias/Assign^fire2/expand1x1/kernel/Assign^fire2/expand3x3/bias/Assign^fire2/expand3x3/kernel/Assign^fire2/squeeze1x1/bias/Assign^fire2/squeeze1x1/kernel/Assign^fire3/expand1x1/bias/Assign^fire3/expand1x1/kernel/Assign^fire3/expand3x3/bias/Assign^fire3/expand3x3/kernel/Assign^fire3/squeeze1x1/bias/Assign^fire3/squeeze1x1/kernel/Assign^fire4/expand1x1/bias/Assign^fire4/expand1x1/kernel/Assign^fire4/expand3x3/bias/Assign^fire4/expand3x3/kernel/Assign^fire4/squeeze1x1/bias/Assign^fire4/squeeze1x1/kernel/Assign^fire5/expand1x1/bias/Assign^fire5/expand1x1/kernel/Assign^fire5/expand3x3/bias/Assign^fire5/expand3x3/kernel/Assign^fire5/squeeze1x1/bias/Assign^fire5/squeeze1x1/kernel/Assign^fire6/expand1x1/bias/Assign^fire6/expand1x1/kernel/Assign^fire6/expand3x3/bias/Assign^fire6/expand3x3/kernel/Assign^fire6/squeeze1x1/bias/Assign^fire6/squeeze1x1/kernel/Assign^fire7/expand1x1/bias/Assign^fire7/expand1x1/kernel/Assign^fire7/expand3x3/bias/Assign^fire7/expand3x3/kernel/Assign^fire7/squeeze1x1/bias/Assign^fire7/squeeze1x1/kernel/Assign^fire8/expand1x1/bias/Assign^fire8/expand1x1/kernel/Assign^fire8/expand3x3/bias/Assign^fire8/expand3x3/kernel/Assign^fire8/squeeze1x1/bias/Assign^fire8/squeeze1x1/kernel/Assign^fire9/expand1x1/bias/Assign^fire9/expand1x1/kernel/Assign^fire9/expand3x3/bias/Assign^fire9/expand3x3/kernel/Assign^fire9/squeeze1x1/bias/Assign^fire9/squeeze1x1/kernel/Assign
v
conv10_1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"         
   *
dtype0
`
conv10_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *лН
`
conv10_1/random_uniform/maxConst*
valueB
 *л=*
dtype0*
_output_shapes
: 
Г
%conv10_1/random_uniform/RandomUniformRandomUniformconv10_1/random_uniform/shape*
T0*
dtype0*'
_output_shapes
:
*
seed2НїЧ*
seedБџх)
}
conv10_1/random_uniform/subSubconv10_1/random_uniform/maxconv10_1/random_uniform/min*
T0*
_output_shapes
: 

conv10_1/random_uniform/mulMul%conv10_1/random_uniform/RandomUniformconv10_1/random_uniform/sub*
T0*'
_output_shapes
:


conv10_1/random_uniformAddconv10_1/random_uniform/mulconv10_1/random_uniform/min*'
_output_shapes
:
*
T0

conv10_1/kernel
VariableV2*
dtype0*'
_output_shapes
:
*
	container *
shape:
*
shared_name 
Щ
conv10_1/kernel/AssignAssignconv10_1/kernelconv10_1/random_uniform*
use_locking(*
T0*"
_class
loc:@conv10_1/kernel*
validate_shape(*'
_output_shapes
:


conv10_1/kernel/readIdentityconv10_1/kernel*
T0*"
_class
loc:@conv10_1/kernel*'
_output_shapes
:

[
conv10_1/ConstConst*
_output_shapes
:
*
valueB
*    *
dtype0
y
conv10_1/bias
VariableV2*
dtype0*
_output_shapes
:
*
	container *
shape:
*
shared_name 
­
conv10_1/bias/AssignAssignconv10_1/biasconv10_1/Const*
use_locking(*
T0* 
_class
loc:@conv10_1/bias*
validate_shape(*
_output_shapes
:

t
conv10_1/bias/readIdentityconv10_1/bias*
T0* 
_class
loc:@conv10_1/bias*
_output_shapes
:

s
"conv10_1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
я
conv10_1/convolutionConv2Ddrop9/cond/Mergeconv10_1/kernel/read*
paddingVALID*/
_output_shapes
:џџџџџџџџџ
*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(

conv10_1/BiasAddBiasAddconv10_1/convolutionconv10_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:џџџџџџџџџ

f
relu_conv10_1/ReluReluconv10_1/BiasAdd*
T0*/
_output_shapes
:џџџџџџџџџ


1global_average_pooling2d_2/Mean/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
Н
global_average_pooling2d_2/MeanMeanrelu_conv10_1/Relu1global_average_pooling2d_2/Mean/reduction_indices*'
_output_shapes
:џџџџџџџџџ
*
	keep_dims( *

Tidx0*
T0
l
loss_1/SoftmaxSoftmaxglobal_average_pooling2d_2/Mean*'
_output_shapes
:џџџџџџџџџ
*
T0
^
SGD/iterations/initial_valueConst*
_output_shapes
: *
value	B	 R *
dtype0	
r
SGD/iterations
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
К
SGD/iterations/AssignAssignSGD/iterationsSGD/iterations/initial_value*
use_locking(*
T0	*!
_class
loc:@SGD/iterations*
validate_shape(*
_output_shapes
: 
s
SGD/iterations/readIdentitySGD/iterations*
_output_shapes
: *
T0	*!
_class
loc:@SGD/iterations
Y
SGD/lr/initial_valueConst*
valueB
 *
з#<*
dtype0*
_output_shapes
: 
j
SGD/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

SGD/lr/AssignAssignSGD/lrSGD/lr/initial_value*
use_locking(*
T0*
_class
loc:@SGD/lr*
validate_shape(*
_output_shapes
: 
[
SGD/lr/readIdentitySGD/lr*
T0*
_class
loc:@SGD/lr*
_output_shapes
: 
_
SGD/momentum/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
SGD/momentum
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
В
SGD/momentum/AssignAssignSGD/momentumSGD/momentum/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@SGD/momentum
m
SGD/momentum/readIdentitySGD/momentum*
_class
loc:@SGD/momentum*
_output_shapes
: *
T0
\
SGD/decay/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
m
	SGD/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
І
SGD/decay/AssignAssign	SGD/decaySGD/decay/initial_value*
use_locking(*
T0*
_class
loc:@SGD/decay*
validate_shape(*
_output_shapes
: 
d
SGD/decay/readIdentity	SGD/decay*
T0*
_class
loc:@SGD/decay*
_output_shapes
: 

loss_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
n
loss_sample_weightsPlaceholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
q
&loss_2/loss_loss/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ђ
loss_2/loss_loss/SumSumloss_1/Softmax&loss_2/loss_loss/Sum/reduction_indices*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(*

Tidx0
{
loss_2/loss_loss/truedivRealDivloss_1/Softmaxloss_2/loss_loss/Sum*
T0*'
_output_shapes
:џџџџџџџџџ

[
loss_2/loss_loss/ConstConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
[
loss_2/loss_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
loss_2/loss_loss/subSubloss_2/loss_loss/sub/xloss_2/loss_loss/Const*
_output_shapes
: *
T0

&loss_2/loss_loss/clip_by_value/MinimumMinimumloss_2/loss_loss/truedivloss_2/loss_loss/sub*
T0*'
_output_shapes
:џџџџџџџџџ


loss_2/loss_loss/clip_by_valueMaximum&loss_2/loss_loss/clip_by_value/Minimumloss_2/loss_loss/Const*
T0*'
_output_shapes
:џџџџџџџџџ

m
loss_2/loss_loss/LogLogloss_2/loss_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ

p
loss_2/loss_loss/mulMulloss_targetloss_2/loss_loss/Log*
T0*'
_output_shapes
:џџџџџџџџџ

s
(loss_2/loss_loss/Sum_1/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Ј
loss_2/loss_loss/Sum_1Sumloss_2/loss_loss/mul(loss_2/loss_loss/Sum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss_2/loss_loss/NegNegloss_2/loss_loss/Sum_1*#
_output_shapes
:џџџџџџџџџ*
T0
j
'loss_2/loss_loss/Mean/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Ї
loss_2/loss_loss/MeanMeanloss_2/loss_loss/Neg'loss_2/loss_loss/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
w
loss_2/loss_loss/mul_1Mulloss_2/loss_loss/Meanloss_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
`
loss_2/loss_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss_2/loss_loss/NotEqualNotEqualloss_sample_weightsloss_2/loss_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ

loss_2/loss_loss/CastCastloss_2/loss_loss/NotEqual*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
b
loss_2/loss_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss_2/loss_loss/Mean_1Meanloss_2/loss_loss/Castloss_2/loss_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss_2/loss_loss/truediv_1RealDivloss_2/loss_loss/mul_1loss_2/loss_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
b
loss_2/loss_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss_2/loss_loss/Mean_2Meanloss_2/loss_loss/truediv_1loss_2/loss_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Q
loss_2/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Y

loss_2/mulMulloss_2/mul/xloss_2/loss_loss/Mean_2*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxloss_targetmetrics/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxloss_1/Softmaxmetrics/acc/ArgMax_1/dimension*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0*
output_type0	
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:џџџџџџџџџ
x
metrics/acc/CastCastmetrics/acc/Equal*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
~
training/SGD/gradients/ShapeConst*
valueB *
_class
loc:@loss_2/mul*
dtype0*
_output_shapes
: 

 training/SGD/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss_2/mul*
dtype0*
_output_shapes
: 
Е
training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss_2/mul*
_output_shapes
: 
Ї
*training/SGD/gradients/loss_2/mul_grad/MulMultraining/SGD/gradients/Fillloss_2/loss_loss/Mean_2*
T0*
_class
loc:@loss_2/mul*
_output_shapes
: 

,training/SGD/gradients/loss_2/mul_grad/Mul_1Multraining/SGD/gradients/Fillloss_2/mul/x*
T0*
_class
loc:@loss_2/mul*
_output_shapes
: 
З
Atraining/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Reshape/shapeConst*
valueB:**
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
:

;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ReshapeReshape,training/SGD/gradients/loss_2/mul_grad/Mul_1Atraining/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Reshape/shape*
T0*
Tshape0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
:
П
9training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ShapeShapeloss_2/loss_loss/truediv_1*
T0*
out_type0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
:
Є
8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/TileTile;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Reshape9training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape*

Tmultiples0*
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
С
;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_1Shapeloss_2/loss_loss/truediv_1*
T0*
out_type0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
:
Њ
;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_2Const*
valueB **
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
: 
Џ
9training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ConstConst*
valueB: **
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
:
Ђ
8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/ProdProd;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_19training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Const*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*
_output_shapes
: 
Б
;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Const_1Const*
valueB: **
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
:
І
:training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Prod_1Prod;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Shape_2;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss_2/loss_loss/Mean_2
Ћ
=training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Maximum/yConst*
value	B :**
_class 
loc:@loss_2/loss_loss/Mean_2*
dtype0*
_output_shapes
: 

;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/MaximumMaximum:training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Prod_1=training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Maximum/y*
_output_shapes
: *
T0**
_class 
loc:@loss_2/loss_loss/Mean_2

<training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/floordivFloorDiv8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Prod;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Maximum*
_output_shapes
: *
T0**
_class 
loc:@loss_2/loss_loss/Mean_2
ъ
8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/CastCast<training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0**
_class 
loc:@loss_2/loss_loss/Mean_2*
Truncate( 

;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/truedivRealDiv8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Tile8training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/Cast*
T0**
_class 
loc:@loss_2/loss_loss/Mean_2*#
_output_shapes
:џџџџџџџџџ
С
<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/ShapeShapeloss_2/loss_loss/mul_1*
T0*
out_type0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*
_output_shapes
:
А
>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape_1Const*
valueB *-
_class#
!loc:@loss_2/loss_loss/truediv_1*
dtype0*
_output_shapes
: 
Я
Ltraining/SGD/gradients/loss_2/loss_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1
ќ
>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDivRealDiv;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/truedivloss_2/loss_loss/Mean_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
О
:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/SumSum>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDivLtraining/SGD/gradients/loss_2/loss_loss/truediv_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1
Ў
>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/ReshapeReshape:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Sum<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
Ж
:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/NegNegloss_2/loss_loss/mul_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
§
@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_1RealDiv:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Negloss_2/loss_loss/Mean_1*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ*
T0

@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_2RealDiv@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_1loss_2/loss_loss/Mean_1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ

:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/mulMul;training/SGD/gradients/loss_2/loss_loss/Mean_2_grad/truediv@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/RealDiv_2*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*#
_output_shapes
:џџџџџџџџџ
О
<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Sum_1Sum:training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/mulNtraining/SGD/gradients/loss_2/loss_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ї
@training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Reshape_1Reshape<training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Sum_1>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@loss_2/loss_loss/truediv_1*
_output_shapes
: 
И
8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/ShapeShapeloss_2/loss_loss/Mean*
T0*
out_type0*)
_class
loc:@loss_2/loss_loss/mul_1*
_output_shapes
:
И
:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape_1Shapeloss_sample_weights*
T0*
out_type0*)
_class
loc:@loss_2/loss_loss/mul_1*
_output_shapes
:
П
Htraining/SGD/gradients/loss_2/loss_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape_1*
T0*)
_class
loc:@loss_2/loss_loss/mul_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ы
6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/MulMul>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Reshapeloss_sample_weights*
T0*)
_class
loc:@loss_2/loss_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
Њ
6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/SumSum6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/MulHtraining/SGD/gradients/loss_2/loss_loss/mul_1_grad/BroadcastGradientArgs*
T0*)
_class
loc:@loss_2/loss_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 

:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/ReshapeReshape6training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Sum8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape*
T0*
Tshape0*)
_class
loc:@loss_2/loss_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
я
8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Mul_1Mulloss_2/loss_loss/Mean>training/SGD/gradients/loss_2/loss_loss/truediv_1_grad/Reshape*
T0*)
_class
loc:@loss_2/loss_loss/mul_1*#
_output_shapes
:џџџџџџџџџ
А
8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Sum_1Sum8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Mul_1Jtraining/SGD/gradients/loss_2/loss_loss/mul_1_grad/BroadcastGradientArgs:1*
T0*)
_class
loc:@loss_2/loss_loss/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Є
<training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Reshape_1Reshape8training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Sum_1:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*)
_class
loc:@loss_2/loss_loss/mul_1
Е
7training/SGD/gradients/loss_2/loss_loss/Mean_grad/ShapeShapeloss_2/loss_loss/Neg*
T0*
out_type0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
Ђ
6training/SGD/gradients/loss_2/loss_loss/Mean_grad/SizeConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 
ъ
5training/SGD/gradients/loss_2/loss_loss/Mean_grad/addAdd'loss_2/loss_loss/Mean/reduction_indices6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Size*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: *
T0
§
5training/SGD/gradients/loss_2/loss_loss/Mean_grad/modFloorMod5training/SGD/gradients/loss_2/loss_loss/Mean_grad/add6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Size*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: 
­
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_1Const*
valueB: *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
:
Љ
=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/startConst*
value	B : *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 
Љ
=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/deltaConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 
Ш
7training/SGD/gradients/loss_2/loss_loss/Mean_grad/rangeRange=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/start6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Size=training/SGD/gradients/loss_2/loss_loss/Mean_grad/range/delta*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:*

Tidx0
Ј
<training/SGD/gradients/loss_2/loss_loss/Mean_grad/Fill/valueConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 

6training/SGD/gradients/loss_2/loss_loss/Mean_grad/FillFill9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_1<training/SGD/gradients/loss_2/loss_loss/Mean_grad/Fill/value*

index_type0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: *
T0

?training/SGD/gradients/loss_2/loss_loss/Mean_grad/DynamicStitchDynamicStitch7training/SGD/gradients/loss_2/loss_loss/Mean_grad/range5training/SGD/gradients/loss_2/loss_loss/Mean_grad/mod7training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Fill*
N*
_output_shapes
:*
T0*(
_class
loc:@loss_2/loss_loss/Mean
Ї
;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum/yConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 

9training/SGD/gradients/loss_2/loss_loss/Mean_grad/MaximumMaximum?training/SGD/gradients/loss_2/loss_loss/Mean_grad/DynamicStitch;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum/y*
_output_shapes
:*
T0*(
_class
loc:@loss_2/loss_loss/Mean

:training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordivFloorDiv7training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
Ї
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/ReshapeReshape:training/SGD/gradients/loss_2/loss_loss/mul_1_grad/Reshape?training/SGD/gradients/loss_2/loss_loss/Mean_grad/DynamicStitch*
Tshape0*(
_class
loc:@loss_2/loss_loss/Mean*#
_output_shapes
:џџџџџџџџџ*
T0

6training/SGD/gradients/loss_2/loss_loss/Mean_grad/TileTile9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Reshape:training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordiv*

Tmultiples0*
T0*(
_class
loc:@loss_2/loss_loss/Mean*#
_output_shapes
:џџџџџџџџџ
З
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_2Shapeloss_2/loss_loss/Neg*
T0*
out_type0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
И
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_3Shapeloss_2/loss_loss/Mean*
T0*
out_type0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
:
Ћ
7training/SGD/gradients/loss_2/loss_loss/Mean_grad/ConstConst*
valueB: *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
:

6training/SGD/gradients/loss_2/loss_loss/Mean_grad/ProdProd9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_27training/SGD/gradients/loss_2/loss_loss/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss_2/loss_loss/Mean
­
9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Const_1Const*
valueB: *(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
:

8training/SGD/gradients/loss_2/loss_loss/Mean_grad/Prod_1Prod9training/SGD/gradients/loss_2/loss_loss/Mean_grad/Shape_39training/SGD/gradients/loss_2/loss_loss/Mean_grad/Const_1*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
Љ
=training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1/yConst*
value	B :*(
_class
loc:@loss_2/loss_loss/Mean*
dtype0*
_output_shapes
: 

;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1Maximum8training/SGD/gradients/loss_2/loss_loss/Mean_grad/Prod_1=training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1/y*
T0*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: 

<training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordiv_1FloorDiv6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Prod;training/SGD/gradients/loss_2/loss_loss/Mean_grad/Maximum_1*(
_class
loc:@loss_2/loss_loss/Mean*
_output_shapes
: *
T0
ц
6training/SGD/gradients/loss_2/loss_loss/Mean_grad/CastCast<training/SGD/gradients/loss_2/loss_loss/Mean_grad/floordiv_1*

SrcT0*(
_class
loc:@loss_2/loss_loss/Mean*
Truncate( *
_output_shapes
: *

DstT0

9training/SGD/gradients/loss_2/loss_loss/Mean_grad/truedivRealDiv6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Tile6training/SGD/gradients/loss_2/loss_loss/Mean_grad/Cast*
T0*(
_class
loc:@loss_2/loss_loss/Mean*#
_output_shapes
:џџџџџџџџџ
Э
4training/SGD/gradients/loss_2/loss_loss/Neg_grad/NegNeg9training/SGD/gradients/loss_2/loss_loss/Mean_grad/truediv*
T0*'
_class
loc:@loss_2/loss_loss/Neg*#
_output_shapes
:џџџџџџџџџ
З
8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/ShapeShapeloss_2/loss_loss/mul*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@loss_2/loss_loss/Sum_1
Є
7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/SizeConst*
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 
ь
6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/addAdd(loss_2/loss_loss/Sum_1/reduction_indices7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Size*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
: 
џ
6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/modFloorMod6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/add7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Size*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
: 
Ј
:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape_1Const*
valueB *)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 
Ћ
>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/startConst*
value	B : *)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 
Ћ
>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/deltaConst*
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 
Э
8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/rangeRange>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/start7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Size>training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range/delta*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
:*

Tidx0
Њ
=training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Fill/valueConst*
_output_shapes
: *
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0

7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/FillFill:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape_1=training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Fill/value*
T0*

index_type0*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
: 

@training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/DynamicStitchDynamicStitch8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/range6training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/mod8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Fill*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1*
N*
_output_shapes
:
Љ
<training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Maximum/yConst*
value	B :*)
_class
loc:@loss_2/loss_loss/Sum_1*
dtype0*
_output_shapes
: 

:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/MaximumMaximum@training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/DynamicStitch<training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Maximum/y*
_output_shapes
:*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1

;training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/floordivFloorDiv8training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Shape:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Maximum*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1*
_output_shapes
:
Б
:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/ReshapeReshape4training/SGD/gradients/loss_2/loss_loss/Neg_grad/Neg@training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss_2/loss_loss/Sum_1*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ї
7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/TileTile:training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Reshape;training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss_2/loss_loss/Sum_1*'
_output_shapes
:џџџџџџџџџ

Њ
6training/SGD/gradients/loss_2/loss_loss/mul_grad/ShapeShapeloss_target*
T0*
out_type0*'
_class
loc:@loss_2/loss_loss/mul*
_output_shapes
:
Е
8training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape_1Shapeloss_2/loss_loss/Log*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@loss_2/loss_loss/mul
З
Ftraining/SGD/gradients/loss_2/loss_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape8training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*'
_class
loc:@loss_2/loss_loss/mul
х
4training/SGD/gradients/loss_2/loss_loss/mul_grad/MulMul7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Tileloss_2/loss_loss/Log*'
_output_shapes
:џџџџџџџџџ
*
T0*'
_class
loc:@loss_2/loss_loss/mul
Ђ
4training/SGD/gradients/loss_2/loss_loss/mul_grad/SumSum4training/SGD/gradients/loss_2/loss_loss/mul_grad/MulFtraining/SGD/gradients/loss_2/loss_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*'
_class
loc:@loss_2/loss_loss/mul*
_output_shapes
:
Ѓ
8training/SGD/gradients/loss_2/loss_loss/mul_grad/ReshapeReshape4training/SGD/gradients/loss_2/loss_loss/mul_grad/Sum6training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape*
T0*
Tshape0*'
_class
loc:@loss_2/loss_loss/mul*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
о
6training/SGD/gradients/loss_2/loss_loss/mul_grad/Mul_1Mulloss_target7training/SGD/gradients/loss_2/loss_loss/Sum_1_grad/Tile*
T0*'
_class
loc:@loss_2/loss_loss/mul*'
_output_shapes
:џџџџџџџџџ

Ј
6training/SGD/gradients/loss_2/loss_loss/mul_grad/Sum_1Sum6training/SGD/gradients/loss_2/loss_loss/mul_grad/Mul_1Htraining/SGD/gradients/loss_2/loss_loss/mul_grad/BroadcastGradientArgs:1*
T0*'
_class
loc:@loss_2/loss_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
 
:training/SGD/gradients/loss_2/loss_loss/mul_grad/Reshape_1Reshape6training/SGD/gradients/loss_2/loss_loss/mul_grad/Sum_18training/SGD/gradients/loss_2/loss_loss/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@loss_2/loss_loss/mul*'
_output_shapes
:џџџџџџџџџ


;training/SGD/gradients/loss_2/loss_loss/Log_grad/Reciprocal
Reciprocalloss_2/loss_loss/clip_by_value;^training/SGD/gradients/loss_2/loss_loss/mul_grad/Reshape_1*
T0*'
_class
loc:@loss_2/loss_loss/Log*'
_output_shapes
:џџџџџџџџџ


4training/SGD/gradients/loss_2/loss_loss/Log_grad/mulMul:training/SGD/gradients/loss_2/loss_loss/mul_grad/Reshape_1;training/SGD/gradients/loss_2/loss_loss/Log_grad/Reciprocal*
T0*'
_class
loc:@loss_2/loss_loss/Log*'
_output_shapes
:џџџџџџџџџ

й
@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ShapeShape&loss_2/loss_loss/clip_by_value/Minimum*
T0*
out_type0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
:
И
Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
dtype0
щ
Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_2Shape4training/SGD/gradients/loss_2/loss_loss/Log_grad/mul*
out_type0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
:*
T0
О
Ftraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
dtype0*
_output_shapes
: 
Ы
@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zerosFillBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_2Ftraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ

ќ
Gtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/GreaterEqualGreaterEqual&loss_2/loss_loss/clip_by_value/Minimumloss_2/loss_loss/Const*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ

п
Ptraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ShapeBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value
ё
Atraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/SelectSelectGtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/GreaterEqual4training/SGD/gradients/loss_2/loss_loss/Log_grad/mul@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*'
_output_shapes
:џџџџџџџџџ

ѓ
Ctraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Select_1SelectGtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/GreaterEqual@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/zeros4training/SGD/gradients/loss_2/loss_loss/Log_grad/mul*'
_output_shapes
:џџџџџџџџџ
*
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value
Э
>training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/SumSumAtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/SelectPtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
:
Т
Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ReshapeReshape>training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Sum@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape*'
_output_shapes
:џџџџџџџџџ
*
T0*
Tshape0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value
г
@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Sum_1SumCtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Select_1Rtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value
З
Dtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Reshape_1Reshape@training/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Sum_1Btraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*1
_class'
%#loc:@loss_2/loss_loss/clip_by_value*
_output_shapes
: 
л
Htraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/ShapeShapeloss_2/loss_loss/truediv*
T0*
out_type0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
:
Ш
Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_2ShapeBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Reshape*
out_type0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
:*
T0
Ю
Ntraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ы
Htraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zerosFillJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_2Ntraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ

і
Ltraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss_2/loss_loss/truedivloss_2/loss_loss/sub*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ

џ
Xtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/ShapeJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum

Itraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SelectSelectLtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/LessEqualBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/ReshapeHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zeros*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ


Ktraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Select_1SelectLtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/LessEqualHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/zerosBtraining/SGD/gradients/loss_2/loss_loss/clip_by_value_grad/Reshape*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ

э
Ftraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SumSumItraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SelectXtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
т
Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/ReshapeReshapeFtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/SumHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*'
_output_shapes
:џџџџџџџџџ

ѓ
Htraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Sum_1SumKtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Select_1Ztraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
з
Ltraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeHtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Sum_1Jtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*9
_class/
-+loc:@loss_2/loss_loss/clip_by_value/Minimum*
_output_shapes
: 
Е
:training/SGD/gradients/loss_2/loss_loss/truediv_grad/ShapeShapeloss_1/Softmax*
T0*
out_type0*+
_class!
loc:@loss_2/loss_loss/truediv*
_output_shapes
:
Н
<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape_1Shapeloss_2/loss_loss/Sum*
T0*
out_type0*+
_class!
loc:@loss_2/loss_loss/truediv*
_output_shapes
:
Ч
Jtraining/SGD/gradients/loss_2/loss_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape_1*+
_class!
loc:@loss_2/loss_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

<training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDivRealDivJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Reshapeloss_2/loss_loss/Sum*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ
*
T0
Ж
8training/SGD/gradients/loss_2/loss_loss/truediv_grad/SumSum<training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDivJtraining/SGD/gradients/loss_2/loss_loss/truediv_grad/BroadcastGradientArgs*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
Њ
<training/SGD/gradients/loss_2/loss_loss/truediv_grad/ReshapeReshape8training/SGD/gradients/loss_2/loss_loss/truediv_grad/Sum:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape*
T0*
Tshape0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ

Ў
8training/SGD/gradients/loss_2/loss_loss/truediv_grad/NegNegloss_1/Softmax*'
_output_shapes
:џџџџџџџџџ
*
T0*+
_class!
loc:@loss_2/loss_loss/truediv
ј
>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_1RealDiv8training/SGD/gradients/loss_2/loss_loss/truediv_grad/Negloss_2/loss_loss/Sum*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ

ў
>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_2RealDiv>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_1loss_2/loss_loss/Sum*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ

Њ
8training/SGD/gradients/loss_2/loss_loss/truediv_grad/mulMulJtraining/SGD/gradients/loss_2/loss_loss/clip_by_value/Minimum_grad/Reshape>training/SGD/gradients/loss_2/loss_loss/truediv_grad/RealDiv_2*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ

Ж
:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Sum_1Sum8training/SGD/gradients/loss_2/loss_loss/truediv_grad/mulLtraining/SGD/gradients/loss_2/loss_loss/truediv_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
А
>training/SGD/gradients/loss_2/loss_loss/truediv_grad/Reshape_1Reshape:training/SGD/gradients/loss_2/loss_loss/truediv_grad/Sum_1<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@loss_2/loss_loss/truediv*'
_output_shapes
:џџџџџџџџџ
­
6training/SGD/gradients/loss_2/loss_loss/Sum_grad/ShapeShapeloss_1/Softmax*
T0*
out_type0*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
:
 
5training/SGD/gradients/loss_2/loss_loss/Sum_grad/SizeConst*
value	B :*'
_class
loc:@loss_2/loss_loss/Sum*
dtype0*
_output_shapes
: 
ф
4training/SGD/gradients/loss_2/loss_loss/Sum_grad/addAdd&loss_2/loss_loss/Sum/reduction_indices5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Size*
T0*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
: 
ї
4training/SGD/gradients/loss_2/loss_loss/Sum_grad/modFloorMod4training/SGD/gradients/loss_2/loss_loss/Sum_grad/add5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Size*
_output_shapes
: *
T0*'
_class
loc:@loss_2/loss_loss/Sum
Є
8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape_1Const*
valueB *'
_class
loc:@loss_2/loss_loss/Sum*
dtype0*
_output_shapes
: 
Ї
<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/startConst*
value	B : *'
_class
loc:@loss_2/loss_loss/Sum*
dtype0*
_output_shapes
: 
Ї
<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*'
_class
loc:@loss_2/loss_loss/Sum
У
6training/SGD/gradients/loss_2/loss_loss/Sum_grad/rangeRange<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/start5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Size<training/SGD/gradients/loss_2/loss_loss/Sum_grad/range/delta*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
:*

Tidx0
І
;training/SGD/gradients/loss_2/loss_loss/Sum_grad/Fill/valueConst*
value	B :*'
_class
loc:@loss_2/loss_loss/Sum*
dtype0*
_output_shapes
: 

5training/SGD/gradients/loss_2/loss_loss/Sum_grad/FillFill8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape_1;training/SGD/gradients/loss_2/loss_loss/Sum_grad/Fill/value*
T0*

index_type0*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
: 

>training/SGD/gradients/loss_2/loss_loss/Sum_grad/DynamicStitchDynamicStitch6training/SGD/gradients/loss_2/loss_loss/Sum_grad/range4training/SGD/gradients/loss_2/loss_loss/Sum_grad/mod6training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Fill*
T0*'
_class
loc:@loss_2/loss_loss/Sum*
N*
_output_shapes
:
Ѕ
:training/SGD/gradients/loss_2/loss_loss/Sum_grad/Maximum/yConst*
_output_shapes
: *
value	B :*'
_class
loc:@loss_2/loss_loss/Sum*
dtype0

8training/SGD/gradients/loss_2/loss_loss/Sum_grad/MaximumMaximum>training/SGD/gradients/loss_2/loss_loss/Sum_grad/DynamicStitch:training/SGD/gradients/loss_2/loss_loss/Sum_grad/Maximum/y*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
:*
T0

9training/SGD/gradients/loss_2/loss_loss/Sum_grad/floordivFloorDiv6training/SGD/gradients/loss_2/loss_loss/Sum_grad/Shape8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Maximum*
T0*'
_class
loc:@loss_2/loss_loss/Sum*
_output_shapes
:
Е
8training/SGD/gradients/loss_2/loss_loss/Sum_grad/ReshapeReshape>training/SGD/gradients/loss_2/loss_loss/truediv_grad/Reshape_1>training/SGD/gradients/loss_2/loss_loss/Sum_grad/DynamicStitch*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*
Tshape0*'
_class
loc:@loss_2/loss_loss/Sum

5training/SGD/gradients/loss_2/loss_loss/Sum_grad/TileTile8training/SGD/gradients/loss_2/loss_loss/Sum_grad/Reshape9training/SGD/gradients/loss_2/loss_loss/Sum_grad/floordiv*'
_output_shapes
:џџџџџџџџџ
*

Tmultiples0*
T0*'
_class
loc:@loss_2/loss_loss/Sum

training/SGD/gradients/AddNAddN<training/SGD/gradients/loss_2/loss_loss/truediv_grad/Reshape5training/SGD/gradients/loss_2/loss_loss/Sum_grad/Tile*
T0*+
_class!
loc:@loss_2/loss_loss/truediv*
N*'
_output_shapes
:џџџџџџџџџ

З
.training/SGD/gradients/loss_1/Softmax_grad/mulMultraining/SGD/gradients/AddNloss_1/Softmax*!
_class
loc:@loss_1/Softmax*'
_output_shapes
:џџџџџџџџџ
*
T0
Ў
@training/SGD/gradients/loss_1/Softmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*!
_class
loc:@loss_1/Softmax*
dtype0*
_output_shapes
: 

.training/SGD/gradients/loss_1/Softmax_grad/SumSum.training/SGD/gradients/loss_1/Softmax_grad/mul@training/SGD/gradients/loss_1/Softmax_grad/Sum/reduction_indices*
T0*!
_class
loc:@loss_1/Softmax*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims(
з
.training/SGD/gradients/loss_1/Softmax_grad/subSubtraining/SGD/gradients/AddN.training/SGD/gradients/loss_1/Softmax_grad/Sum*
T0*!
_class
loc:@loss_1/Softmax*'
_output_shapes
:џџџџџџџџџ

Ь
0training/SGD/gradients/loss_1/Softmax_grad/mul_1Mul.training/SGD/gradients/loss_1/Softmax_grad/subloss_1/Softmax*
T0*!
_class
loc:@loss_1/Softmax*'
_output_shapes
:џџџџџџџџџ

Ч
Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ShapeShaperelu_conv10_1/Relu*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
Ж
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/SizeConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 

?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/addAdd1global_average_pooling2d_2/Mean/reduction_indices@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Size*
_output_shapes
:*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
Ї
?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/modFloorMod?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/add@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Size*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
С
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*2
_class(
&$loc:@global_average_pooling2d_2/Mean
Н
Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/startConst*
value	B : *2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
Н
Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/deltaConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
њ
Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/rangeRangeGtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/start@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/SizeGtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range/delta*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:*

Tidx0
М
Ftraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Fill/valueConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
Р
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/FillFillCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_1Ftraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
Х
Itraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/DynamicStitchDynamicStitchAtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/range?training/SGD/gradients/global_average_pooling2d_2/Mean_grad/modAtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Fill*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
N*
_output_shapes
:
Л
Etraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
Й
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/MaximumMaximumItraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/DynamicStitchEtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum/y*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:*
T0
Б
Dtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordivFloorDivAtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ShapeCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
т
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ReshapeReshape0training/SGD/gradients/loss_1/Softmax_grad/mul_1Itraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/DynamicStitch*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
T0*
Tshape0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
ю
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/TileTileCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ReshapeDtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordiv*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*

Tmultiples0*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
Щ
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_2Shaperelu_conv10_1/Relu*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
ж
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_3Shapeglobal_average_pooling2d_2/Mean*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
:
П
Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *2
_class(
&$loc:@global_average_pooling2d_2/Mean
Т
@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/ProdProdCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_2Atraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Const*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
С
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Const_1Const*
valueB: *2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
:
Ц
Btraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Prod_1ProdCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Shape_3Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Const_1*
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
Н
Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1/yConst*
value	B :*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
dtype0*
_output_shapes
: 
В
Etraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1MaximumBtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Prod_1Gtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean
А
Ftraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordiv_1FloorDiv@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/ProdEtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/Maximum_1*
_output_shapes
: *
T0*2
_class(
&$loc:@global_average_pooling2d_2/Mean

@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/CastCastFtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0*2
_class(
&$loc:@global_average_pooling2d_2/Mean*
Truncate( 
Р
Ctraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/truedivRealDiv@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Tile@training/SGD/gradients/global_average_pooling2d_2/Mean_grad/Cast*2
_class(
&$loc:@global_average_pooling2d_2/Mean*/
_output_shapes
:џџџџџџџџџ
*
T0
§
7training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGradReluGradCtraining/SGD/gradients/global_average_pooling2d_2/Mean_grad/truedivrelu_conv10_1/Relu*/
_output_shapes
:џџџџџџџџџ
*
T0*%
_class
loc:@relu_conv10_1/Relu
с
8training/SGD/gradients/conv10_1/BiasAdd_grad/BiasAddGradBiasAddGrad7training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGrad*#
_class
loc:@conv10_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
*
T0
ж
7training/SGD/gradients/conv10_1/convolution_grad/ShapeNShapeNdrop9/cond/Mergeconv10_1/kernel/read*
T0*
out_type0*'
_class
loc:@conv10_1/convolution*
N* 
_output_shapes
::
Ж
Dtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput7training/SGD/gradients/conv10_1/convolution_grad/ShapeNconv10_1/kernel/read7training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGrad*
	dilations
*
T0*'
_class
loc:@conv10_1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ
­
Etraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterdrop9/cond/Merge9training/SGD/gradients/conv10_1/convolution_grad/ShapeN:17training/SGD/gradients/relu_conv10_1/Relu_grad/ReluGrad*
paddingVALID*'
_output_shapes
:
*
	dilations
*
T0*'
_class
loc:@conv10_1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(

6training/SGD/gradients/drop9/cond/Merge_grad/cond_gradSwitchDtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropInputdrop9/cond/pred_id*
T0*'
_class
loc:@conv10_1/convolution*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ
Я
training/SGD/gradients/SwitchSwitchfire9/concat/concatdrop9/cond/pred_id*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ*
T0*&
_class
loc:@fire9/concat/concat
Џ
training/SGD/gradients/IdentityIdentitytraining/SGD/gradients/Switch:1*
T0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ
Ѕ
training/SGD/gradients/Shape_1Shapetraining/SGD/gradients/Switch:1*
T0*
out_type0*&
_class
loc:@fire9/concat/concat*
_output_shapes
:
Б
"training/SGD/gradients/zeros/ConstConst ^training/SGD/gradients/Identity*
dtype0*
_output_shapes
: *
valueB
 *    *&
_class
loc:@fire9/concat/concat
н
training/SGD/gradients/zerosFilltraining/SGD/gradients/Shape_1"training/SGD/gradients/zeros/Const*
T0*

index_type0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ

9training/SGD/gradients/drop9/cond/Switch_1_grad/cond_gradMerge6training/SGD/gradients/drop9/cond/Merge_grad/cond_gradtraining/SGD/gradients/zeros*
N*2
_output_shapes 
:џџџџџџџџџ: *
T0*&
_class
loc:@fire9/concat/concat
Й
8training/SGD/gradients/drop9/cond/dropout/mul_grad/ShapeShapedrop9/cond/dropout/div*
T0*
out_type0*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:
Н
:training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape_1Shapedrop9/cond/dropout/Floor*
T0*
out_type0*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:
П
Htraining/SGD/gradients/drop9/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape:training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape_1*
T0*)
_class
loc:@drop9/cond/dropout/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ї
6training/SGD/gradients/drop9/cond/dropout/mul_grad/MulMul8training/SGD/gradients/drop9/cond/Merge_grad/cond_grad:1drop9/cond/dropout/Floor*
T0*)
_class
loc:@drop9/cond/dropout/mul*0
_output_shapes
:џџџџџџџџџ
Њ
6training/SGD/gradients/drop9/cond/dropout/mul_grad/SumSum6training/SGD/gradients/drop9/cond/dropout/mul_grad/MulHtraining/SGD/gradients/drop9/cond/dropout/mul_grad/BroadcastGradientArgs*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ћ
:training/SGD/gradients/drop9/cond/dropout/mul_grad/ReshapeReshape6training/SGD/gradients/drop9/cond/dropout/mul_grad/Sum8training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape*
Tshape0*)
_class
loc:@drop9/cond/dropout/mul*0
_output_shapes
:џџџџџџџџџ*
T0
ї
8training/SGD/gradients/drop9/cond/dropout/mul_grad/Mul_1Muldrop9/cond/dropout/div8training/SGD/gradients/drop9/cond/Merge_grad/cond_grad:1*
T0*)
_class
loc:@drop9/cond/dropout/mul*0
_output_shapes
:џџџџџџџџџ
А
8training/SGD/gradients/drop9/cond/dropout/mul_grad/Sum_1Sum8training/SGD/gradients/drop9/cond/dropout/mul_grad/Mul_1Jtraining/SGD/gradients/drop9/cond/dropout/mul_grad/BroadcastGradientArgs:1*)
_class
loc:@drop9/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Б
<training/SGD/gradients/drop9/cond/dropout/mul_grad/Reshape_1Reshape8training/SGD/gradients/drop9/cond/dropout/mul_grad/Sum_1:training/SGD/gradients/drop9/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*)
_class
loc:@drop9/cond/dropout/mul*0
_output_shapes
:џџџџџџџџџ
Б
8training/SGD/gradients/drop9/cond/dropout/div_grad/ShapeShapedrop9/cond/mul*
out_type0*)
_class
loc:@drop9/cond/dropout/div*
_output_shapes
:*
T0
Ј
:training/SGD/gradients/drop9/cond/dropout/div_grad/Shape_1Const*
valueB *)
_class
loc:@drop9/cond/dropout/div*
dtype0*
_output_shapes
: 
П
Htraining/SGD/gradients/drop9/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs8training/SGD/gradients/drop9/cond/dropout/div_grad/Shape:training/SGD/gradients/drop9/cond/dropout/div_grad/Shape_1*
T0*)
_class
loc:@drop9/cond/dropout/div*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

:training/SGD/gradients/drop9/cond/dropout/div_grad/RealDivRealDiv:training/SGD/gradients/drop9/cond/dropout/mul_grad/Reshapedrop9/cond/dropout/keep_prob*0
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@drop9/cond/dropout/div
Ў
6training/SGD/gradients/drop9/cond/dropout/div_grad/SumSum:training/SGD/gradients/drop9/cond/dropout/div_grad/RealDivHtraining/SGD/gradients/drop9/cond/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@drop9/cond/dropout/div*
_output_shapes
:
Ћ
:training/SGD/gradients/drop9/cond/dropout/div_grad/ReshapeReshape6training/SGD/gradients/drop9/cond/dropout/div_grad/Sum8training/SGD/gradients/drop9/cond/dropout/div_grad/Shape*0
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*)
_class
loc:@drop9/cond/dropout/div
Г
6training/SGD/gradients/drop9/cond/dropout/div_grad/NegNegdrop9/cond/mul*0
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@drop9/cond/dropout/div

<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_1RealDiv6training/SGD/gradients/drop9/cond/dropout/div_grad/Negdrop9/cond/dropout/keep_prob*0
_output_shapes
:џџџџџџџџџ*
T0*)
_class
loc:@drop9/cond/dropout/div

<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_2RealDiv<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_1drop9/cond/dropout/keep_prob*
T0*)
_class
loc:@drop9/cond/dropout/div*0
_output_shapes
:џџџџџџџџџ

6training/SGD/gradients/drop9/cond/dropout/div_grad/mulMul:training/SGD/gradients/drop9/cond/dropout/mul_grad/Reshape<training/SGD/gradients/drop9/cond/dropout/div_grad/RealDiv_2*
T0*)
_class
loc:@drop9/cond/dropout/div*0
_output_shapes
:џџџџџџџџџ
Ў
8training/SGD/gradients/drop9/cond/dropout/div_grad/Sum_1Sum6training/SGD/gradients/drop9/cond/dropout/div_grad/mulJtraining/SGD/gradients/drop9/cond/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@drop9/cond/dropout/div

<training/SGD/gradients/drop9/cond/dropout/div_grad/Reshape_1Reshape8training/SGD/gradients/drop9/cond/dropout/div_grad/Sum_1:training/SGD/gradients/drop9/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*)
_class
loc:@drop9/cond/dropout/div*
_output_shapes
: 
Њ
0training/SGD/gradients/drop9/cond/mul_grad/ShapeShapedrop9/cond/mul/Switch:1*
T0*
out_type0*!
_class
loc:@drop9/cond/mul*
_output_shapes
:

2training/SGD/gradients/drop9/cond/mul_grad/Shape_1Const*
valueB *!
_class
loc:@drop9/cond/mul*
dtype0*
_output_shapes
: 

@training/SGD/gradients/drop9/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs0training/SGD/gradients/drop9/cond/mul_grad/Shape2training/SGD/gradients/drop9/cond/mul_grad/Shape_1*
T0*!
_class
loc:@drop9/cond/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
с
.training/SGD/gradients/drop9/cond/mul_grad/MulMul:training/SGD/gradients/drop9/cond/dropout/div_grad/Reshapedrop9/cond/mul/y*0
_output_shapes
:џџџџџџџџџ*
T0*!
_class
loc:@drop9/cond/mul

.training/SGD/gradients/drop9/cond/mul_grad/SumSum.training/SGD/gradients/drop9/cond/mul_grad/Mul@training/SGD/gradients/drop9/cond/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*!
_class
loc:@drop9/cond/mul*
_output_shapes
:

2training/SGD/gradients/drop9/cond/mul_grad/ReshapeReshape.training/SGD/gradients/drop9/cond/mul_grad/Sum0training/SGD/gradients/drop9/cond/mul_grad/Shape*
T0*
Tshape0*!
_class
loc:@drop9/cond/mul*0
_output_shapes
:џџџџџџџџџ
ъ
0training/SGD/gradients/drop9/cond/mul_grad/Mul_1Muldrop9/cond/mul/Switch:1:training/SGD/gradients/drop9/cond/dropout/div_grad/Reshape*0
_output_shapes
:џџџџџџџџџ*
T0*!
_class
loc:@drop9/cond/mul

0training/SGD/gradients/drop9/cond/mul_grad/Sum_1Sum0training/SGD/gradients/drop9/cond/mul_grad/Mul_1Btraining/SGD/gradients/drop9/cond/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*!
_class
loc:@drop9/cond/mul*
_output_shapes
:
ї
4training/SGD/gradients/drop9/cond/mul_grad/Reshape_1Reshape0training/SGD/gradients/drop9/cond/mul_grad/Sum_12training/SGD/gradients/drop9/cond/mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*!
_class
loc:@drop9/cond/mul
б
training/SGD/gradients/Switch_1Switchfire9/concat/concatdrop9/cond/pred_id*&
_class
loc:@fire9/concat/concat*L
_output_shapes:
8:џџџџџџџџџ:џџџџџџџџџ*
T0
Б
!training/SGD/gradients/Identity_1Identitytraining/SGD/gradients/Switch_1*
T0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ
Ѕ
training/SGD/gradients/Shape_2Shapetraining/SGD/gradients/Switch_1*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire9/concat/concat
Е
$training/SGD/gradients/zeros_1/ConstConst"^training/SGD/gradients/Identity_1*
valueB
 *    *&
_class
loc:@fire9/concat/concat*
dtype0*
_output_shapes
: 
с
training/SGD/gradients/zeros_1Filltraining/SGD/gradients/Shape_2$training/SGD/gradients/zeros_1/Const*
T0*

index_type0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ

;training/SGD/gradients/drop9/cond/mul/Switch_grad/cond_gradMergetraining/SGD/gradients/zeros_12training/SGD/gradients/drop9/cond/mul_grad/Reshape*
T0*&
_class
loc:@fire9/concat/concat*
N*2
_output_shapes 
:џџџџџџџџџ: 

training/SGD/gradients/AddN_1AddN9training/SGD/gradients/drop9/cond/Switch_1_grad/cond_grad;training/SGD/gradients/drop9/cond/mul/Switch_grad/cond_grad*
T0*&
_class
loc:@fire9/concat/concat*
N*0
_output_shapes
:џџџџџџџџџ

4training/SGD/gradients/fire9/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire9/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire9/concat/concat_grad/modFloorModfire9/concat/concat/axis4training/SGD/gradients/fire9/concat/concat_grad/Rank*
_output_shapes
: *
T0*&
_class
loc:@fire9/concat/concat
Ж
5training/SGD/gradients/fire9/concat/concat_grad/ShapeShapefire9/relu_expand1x1/Relu*
out_type0*&
_class
loc:@fire9/concat/concat*
_output_shapes
:*
T0
т
6training/SGD/gradients/fire9/concat/concat_grad/ShapeNShapeNfire9/relu_expand1x1/Relufire9/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire9/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire9/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire9/concat/concat_grad/mod6training/SGD/gradients/fire9/concat/concat_grad/ShapeN8training/SGD/gradients/fire9/concat/concat_grad/ShapeN:1*&
_class
loc:@fire9/concat/concat*
N* 
_output_shapes
::
У
5training/SGD/gradients/fire9/concat/concat_grad/SliceSlicetraining/SGD/gradients/AddN_1<training/SGD/gradients/fire9/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire9/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ
Щ
7training/SGD/gradients/fire9/concat/concat_grad/Slice_1Slicetraining/SGD/gradients/AddN_1>training/SGD/gradients/fire9/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire9/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire9/concat/concat*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire9/concat/concat_grad/Slicefire9/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire9/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire9/concat/concat_grad/Slice_1fire9/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@fire9/relu_expand3x3/Relu
ї
?training/SGD/gradients/fire9/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire9/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ї
?training/SGD/gradients/fire9/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire9/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ѕ
>training/SGD/gradients/fire9/expand1x1/convolution_grad/ShapeNShapeNfire9/relu_squeeze1x1/Relufire9/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire9/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire9/expand1x1/convolution_grad/ShapeNfire9/expand1x1/kernel/read>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
г
Ltraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire9/relu_squeeze1x1/Relu@training/SGD/gradients/fire9/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire9/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ѕ
>training/SGD/gradients/fire9/expand3x3/convolution_grad/ShapeNShapeNfire9/relu_squeeze1x1/Relufire9/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire9/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire9/expand3x3/convolution_grad/ShapeNfire9/expand3x3/kernel/read>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
в
Ltraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire9/relu_squeeze1x1/Relu@training/SGD/gradients/fire9/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire9/relu_expand3x3/Relu_grad/ReluGrad*'
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire9/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
В
training/SGD/gradients/AddN_2AddNKtraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropInput*.
_class$
" loc:@fire9/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ@*
T0
я
?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_2fire9/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire9/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ@
љ
@training/SGD/gradients/fire9/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire9/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
ё
?training/SGD/gradients/fire9/squeeze1x1/convolution_grad/ShapeNShapeNfire8/concat/concatfire9/squeeze1x1/kernel/read*
out_type0*/
_class%
#!loc:@fire9/squeeze1x1/convolution*
N* 
_output_shapes
::*
T0
о
Ltraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire9/squeeze1x1/convolution_grad/ShapeNfire9/squeeze1x1/kernel/read?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire9/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ
а
Mtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire8/concat/concatAtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire9/relu_squeeze1x1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*/
_class%
#!loc:@fire9/squeeze1x1/convolution*
data_formatNHWC*
strides


4training/SGD/gradients/fire8/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire8/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire8/concat/concat_grad/modFloorModfire8/concat/concat/axis4training/SGD/gradients/fire8/concat/concat_grad/Rank*&
_class
loc:@fire8/concat/concat*
_output_shapes
: *
T0
Ж
5training/SGD/gradients/fire8/concat/concat_grad/ShapeShapefire8/relu_expand1x1/Relu*
T0*
out_type0*&
_class
loc:@fire8/concat/concat*
_output_shapes
:
т
6training/SGD/gradients/fire8/concat/concat_grad/ShapeNShapeNfire8/relu_expand1x1/Relufire8/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire8/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire8/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire8/concat/concat_grad/mod6training/SGD/gradients/fire8/concat/concat_grad/ShapeN8training/SGD/gradients/fire8/concat/concat_grad/ShapeN:1*&
_class
loc:@fire8/concat/concat*
N* 
_output_shapes
::
ђ
5training/SGD/gradients/fire8/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire8/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire8/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire8/concat/concat*0
_output_shapes
:џџџџџџџџџ
ј
7training/SGD/gradients/fire8/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire8/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire8/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire8/concat/concat*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire8/concat/concat_grad/Slicefire8/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@fire8/relu_expand1x1/Relu

>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire8/concat/concat_grad/Slice_1fire8/relu_expand3x3/Relu*,
_class"
 loc:@fire8/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ*
T0
ї
?training/SGD/gradients/fire8/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire8/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ї
?training/SGD/gradients/fire8/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGrad*
_output_shapes	
:*
T0**
_class 
loc:@fire8/expand3x3/BiasAdd*
data_formatNHWC
ѕ
>training/SGD/gradients/fire8/expand1x1/convolution_grad/ShapeNShapeNfire8/relu_squeeze1x1/Relufire8/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire8/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire8/expand1x1/convolution_grad/ShapeNfire8/expand1x1/kernel/read>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire8/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@
г
Ltraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire8/relu_squeeze1x1/Relu@training/SGD/gradients/fire8/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire8/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*'
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire8/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ѕ
>training/SGD/gradients/fire8/expand3x3/convolution_grad/ShapeNShapeNfire8/relu_squeeze1x1/Relufire8/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire8/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire8/expand3x3/convolution_grad/ShapeNfire8/expand3x3/kernel/read>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*.
_class$
" loc:@fire8/expand3x3/convolution
в
Ltraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire8/relu_squeeze1x1/Relu@training/SGD/gradients/fire8/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire8/relu_expand3x3/Relu_grad/ReluGrad*'
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire8/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
В
training/SGD/gradients/AddN_3AddNKtraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire8/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ@
я
?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_3fire8/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire8/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ@
љ
@training/SGD/gradients/fire8/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire8/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
ё
?training/SGD/gradients/fire8/squeeze1x1/convolution_grad/ShapeNShapeNfire7/concat/concatfire8/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire8/squeeze1x1/convolution*
N* 
_output_shapes
::
о
Ltraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire8/squeeze1x1/convolution_grad/ShapeNfire8/squeeze1x1/kernel/read?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire8/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ
а
Mtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire7/concat/concatAtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire8/relu_squeeze1x1/Relu_grad/ReluGrad*'
_output_shapes
:@*
	dilations
*
T0*/
_class%
#!loc:@fire8/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID

4training/SGD/gradients/fire7/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire7/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire7/concat/concat_grad/modFloorModfire7/concat/concat/axis4training/SGD/gradients/fire7/concat/concat_grad/Rank*&
_class
loc:@fire7/concat/concat*
_output_shapes
: *
T0
Ж
5training/SGD/gradients/fire7/concat/concat_grad/ShapeShapefire7/relu_expand1x1/Relu*
T0*
out_type0*&
_class
loc:@fire7/concat/concat*
_output_shapes
:
т
6training/SGD/gradients/fire7/concat/concat_grad/ShapeNShapeNfire7/relu_expand1x1/Relufire7/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire7/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire7/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire7/concat/concat_grad/mod6training/SGD/gradients/fire7/concat/concat_grad/ShapeN8training/SGD/gradients/fire7/concat/concat_grad/ShapeN:1*&
_class
loc:@fire7/concat/concat*
N* 
_output_shapes
::
ђ
5training/SGD/gradients/fire7/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire7/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire7/concat/concat_grad/ShapeN*0
_output_shapes
:џџџџџџџџџР*
T0*
Index0*&
_class
loc:@fire7/concat/concat
ј
7training/SGD/gradients/fire7/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire7/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire7/concat/concat_grad/ShapeN:1*&
_class
loc:@fire7/concat/concat*0
_output_shapes
:џџџџџџџџџР*
T0*
Index0

>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire7/concat/concat_grad/Slicefire7/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire7/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџР

>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire7/concat/concat_grad/Slice_1fire7/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire7/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџР
ї
?training/SGD/gradients/fire7/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:Р*
T0**
_class 
loc:@fire7/expand1x1/BiasAdd
ї
?training/SGD/gradients/fire7/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire7/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:Р
ѕ
>training/SGD/gradients/fire7/expand1x1/convolution_grad/ShapeNShapeNfire7/relu_squeeze1x1/Relufire7/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire7/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire7/expand1x1/convolution_grad/ShapeNfire7/expand1x1/kernel/read>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire7/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0
г
Ltraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire7/relu_squeeze1x1/Relu@training/SGD/gradients/fire7/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire7/relu_expand1x1/Relu_grad/ReluGrad*.
_class$
" loc:@fire7/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:0Р*
	dilations
*
T0
ѕ
>training/SGD/gradients/fire7/expand3x3/convolution_grad/ShapeNShapeNfire7/relu_squeeze1x1/Relufire7/expand3x3/kernel/read*
out_type0*.
_class$
" loc:@fire7/expand3x3/convolution*
N* 
_output_shapes
::*
T0
з
Ktraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire7/expand3x3/convolution_grad/ShapeNfire7/expand3x3/kernel/read>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ0*
	dilations
*
T0*.
_class$
" loc:@fire7/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
в
Ltraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire7/relu_squeeze1x1/Relu@training/SGD/gradients/fire7/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire7/relu_expand3x3/Relu_grad/ReluGrad*
paddingSAME*'
_output_shapes
:0Р*
	dilations
*
T0*.
_class$
" loc:@fire7/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
В
training/SGD/gradients/AddN_4AddNKtraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropInput*.
_class$
" loc:@fire7/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ0*
T0
я
?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_4fire7/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ0*
T0*-
_class#
!loc:@fire7/relu_squeeze1x1/Relu
љ
@training/SGD/gradients/fire7/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire7/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:0
ё
?training/SGD/gradients/fire7/squeeze1x1/convolution_grad/ShapeNShapeNfire6/concat/concatfire7/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire7/squeeze1x1/convolution*
N* 
_output_shapes
::
о
Ltraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire7/squeeze1x1/convolution_grad/ShapeNfire7/squeeze1x1/kernel/read?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire7/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ
а
Mtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire6/concat/concatAtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire7/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire7/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:0

4training/SGD/gradients/fire6/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire6/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire6/concat/concat_grad/modFloorModfire6/concat/concat/axis4training/SGD/gradients/fire6/concat/concat_grad/Rank*&
_class
loc:@fire6/concat/concat*
_output_shapes
: *
T0
Ж
5training/SGD/gradients/fire6/concat/concat_grad/ShapeShapefire6/relu_expand1x1/Relu*
T0*
out_type0*&
_class
loc:@fire6/concat/concat*
_output_shapes
:
т
6training/SGD/gradients/fire6/concat/concat_grad/ShapeNShapeNfire6/relu_expand1x1/Relufire6/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire6/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire6/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire6/concat/concat_grad/mod6training/SGD/gradients/fire6/concat/concat_grad/ShapeN8training/SGD/gradients/fire6/concat/concat_grad/ShapeN:1* 
_output_shapes
::*&
_class
loc:@fire6/concat/concat*
N
ђ
5training/SGD/gradients/fire6/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire6/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire6/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire6/concat/concat*0
_output_shapes
:џџџџџџџџџР
ј
7training/SGD/gradients/fire6/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire6/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire6/concat/concat_grad/ShapeN:1*&
_class
loc:@fire6/concat/concat*0
_output_shapes
:џџџџџџџџџР*
T0*
Index0

>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire6/concat/concat_grad/Slicefire6/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire6/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџР

>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire6/concat/concat_grad/Slice_1fire6/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire6/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџР
ї
?training/SGD/gradients/fire6/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire6/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:Р
ї
?training/SGD/gradients/fire6/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:Р*
T0**
_class 
loc:@fire6/expand3x3/BiasAdd
ѕ
>training/SGD/gradients/fire6/expand1x1/convolution_grad/ShapeNShapeNfire6/relu_squeeze1x1/Relufire6/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire6/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire6/expand1x1/convolution_grad/ShapeNfire6/expand1x1/kernel/read>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire6/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ0
г
Ltraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire6/relu_squeeze1x1/Relu@training/SGD/gradients/fire6/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire6/relu_expand1x1/Relu_grad/ReluGrad*'
_output_shapes
:0Р*
	dilations
*
T0*.
_class$
" loc:@fire6/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
ѕ
>training/SGD/gradients/fire6/expand3x3/convolution_grad/ShapeNShapeNfire6/relu_squeeze1x1/Relufire6/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire6/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire6/expand3x3/convolution_grad/ShapeNfire6/expand3x3/kernel/read>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire6/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ0
в
Ltraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire6/relu_squeeze1x1/Relu@training/SGD/gradients/fire6/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire6/relu_expand3x3/Relu_grad/ReluGrad*
paddingSAME*'
_output_shapes
:0Р*
	dilations
*
T0*.
_class$
" loc:@fire6/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
В
training/SGD/gradients/AddN_5AddNKtraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropInput*
N*/
_output_shapes
:џџџџџџџџџ0*
T0*.
_class$
" loc:@fire6/expand1x1/convolution
я
?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_5fire6/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire6/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ0
љ
@training/SGD/gradients/fire6/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire6/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:0
ы
?training/SGD/gradients/fire6/squeeze1x1/convolution_grad/ShapeNShapeNpool5/MaxPoolfire6/squeeze1x1/kernel/read* 
_output_shapes
::*
T0*
out_type0*/
_class%
#!loc:@fire6/squeeze1x1/convolution*
N
о
Ltraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire6/squeeze1x1/convolution_grad/ShapeNfire6/squeeze1x1/kernel/read?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire6/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ
Ъ
Mtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterpool5/MaxPoolAtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire6/relu_squeeze1x1/Relu_grad/ReluGrad*'
_output_shapes
:0*
	dilations
*
T0*/
_class%
#!loc:@fire6/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
ц
5training/SGD/gradients/pool5/MaxPool_grad/MaxPoolGradMaxPoolGradfire5/concat/concatpool5/MaxPoolLtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropInput*
T0* 
_class
loc:@pool5/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:џџџџџџџџџ

4training/SGD/gradients/fire5/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire5/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire5/concat/concat_grad/modFloorModfire5/concat/concat/axis4training/SGD/gradients/fire5/concat/concat_grad/Rank*
T0*&
_class
loc:@fire5/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire5/concat/concat_grad/ShapeShapefire5/relu_expand1x1/Relu*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire5/concat/concat
т
6training/SGD/gradients/fire5/concat/concat_grad/ShapeNShapeNfire5/relu_expand1x1/Relufire5/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire5/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire5/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire5/concat/concat_grad/mod6training/SGD/gradients/fire5/concat/concat_grad/ShapeN8training/SGD/gradients/fire5/concat/concat_grad/ShapeN:1*&
_class
loc:@fire5/concat/concat*
N* 
_output_shapes
::
л
5training/SGD/gradients/fire5/concat/concat_grad/SliceSlice5training/SGD/gradients/pool5/MaxPool_grad/MaxPoolGrad<training/SGD/gradients/fire5/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire5/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire5/concat/concat*0
_output_shapes
:џџџџџџџџџ
с
7training/SGD/gradients/fire5/concat/concat_grad/Slice_1Slice5training/SGD/gradients/pool5/MaxPool_grad/MaxPoolGrad>training/SGD/gradients/fire5/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire5/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire5/concat/concat*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire5/concat/concat_grad/Slicefire5/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire5/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire5/concat/concat_grad/Slice_1fire5/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ*
T0*,
_class"
 loc:@fire5/relu_expand3x3/Relu
ї
?training/SGD/gradients/fire5/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire5/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ї
?training/SGD/gradients/fire5/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGrad**
_class 
loc:@fire5/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes	
:*
T0
ѕ
>training/SGD/gradients/fire5/expand1x1/convolution_grad/ShapeNShapeNfire5/relu_squeeze1x1/Relufire5/expand1x1/kernel/read*
out_type0*.
_class$
" loc:@fire5/expand1x1/convolution*
N* 
_output_shapes
::*
T0
и
Ktraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire5/expand1x1/convolution_grad/ShapeNfire5/expand1x1/kernel/read>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*.
_class$
" loc:@fire5/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
г
Ltraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire5/relu_squeeze1x1/Relu@training/SGD/gradients/fire5/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire5/relu_expand1x1/Relu_grad/ReluGrad*'
_output_shapes
: *
	dilations
*
T0*.
_class$
" loc:@fire5/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
ѕ
>training/SGD/gradients/fire5/expand3x3/convolution_grad/ShapeNShapeNfire5/relu_squeeze1x1/Relufire5/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire5/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire5/expand3x3/convolution_grad/ShapeNfire5/expand3x3/kernel/read>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGrad*
paddingSAME*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*.
_class$
" loc:@fire5/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
в
Ltraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire5/relu_squeeze1x1/Relu@training/SGD/gradients/fire5/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire5/relu_expand3x3/Relu_grad/ReluGrad*'
_output_shapes
: *
	dilations
*
T0*.
_class$
" loc:@fire5/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
В
training/SGD/gradients/AddN_6AddNKtraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire5/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ 
я
?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_6fire5/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire5/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ 
љ
@training/SGD/gradients/fire5/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0*+
_class!
loc:@fire5/squeeze1x1/BiasAdd
ё
?training/SGD/gradients/fire5/squeeze1x1/convolution_grad/ShapeNShapeNfire4/concat/concatfire5/squeeze1x1/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0*/
_class%
#!loc:@fire5/squeeze1x1/convolution
о
Ltraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire5/squeeze1x1/convolution_grad/ShapeNfire5/squeeze1x1/kernel/read?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*/
_class%
#!loc:@fire5/squeeze1x1/convolution*
data_formatNHWC*
strides

а
Mtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire4/concat/concatAtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire5/relu_squeeze1x1/Relu_grad/ReluGrad*'
_output_shapes
: *
	dilations
*
T0*/
_class%
#!loc:@fire5/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID

4training/SGD/gradients/fire4/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire4/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire4/concat/concat_grad/modFloorModfire4/concat/concat/axis4training/SGD/gradients/fire4/concat/concat_grad/Rank*
T0*&
_class
loc:@fire4/concat/concat*
_output_shapes
: 
Ж
5training/SGD/gradients/fire4/concat/concat_grad/ShapeShapefire4/relu_expand1x1/Relu*
_output_shapes
:*
T0*
out_type0*&
_class
loc:@fire4/concat/concat
т
6training/SGD/gradients/fire4/concat/concat_grad/ShapeNShapeNfire4/relu_expand1x1/Relufire4/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire4/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire4/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire4/concat/concat_grad/mod6training/SGD/gradients/fire4/concat/concat_grad/ShapeN8training/SGD/gradients/fire4/concat/concat_grad/ShapeN:1*&
_class
loc:@fire4/concat/concat*
N* 
_output_shapes
::
ђ
5training/SGD/gradients/fire4/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire4/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire4/concat/concat_grad/ShapeN*0
_output_shapes
:џџџџџџџџџ*
T0*
Index0*&
_class
loc:@fire4/concat/concat
ј
7training/SGD/gradients/fire4/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire4/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire4/concat/concat_grad/ShapeN:1*0
_output_shapes
:џџџџџџџџџ*
T0*
Index0*&
_class
loc:@fire4/concat/concat

>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire4/concat/concat_grad/Slicefire4/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire4/relu_expand1x1/Relu*0
_output_shapes
:џџџџџџџџџ

>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire4/concat/concat_grad/Slice_1fire4/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire4/relu_expand3x3/Relu*0
_output_shapes
:џџџџџџџџџ
ї
?training/SGD/gradients/fire4/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire4/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
ї
?training/SGD/gradients/fire4/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0**
_class 
loc:@fire4/expand3x3/BiasAdd
ѕ
>training/SGD/gradients/fire4/expand1x1/convolution_grad/ShapeNShapeNfire4/relu_squeeze1x1/Relufire4/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire4/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire4/expand1x1/convolution_grad/ShapeNfire4/expand1x1/kernel/read>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:џџџџџџџџџ *
	dilations
*
T0*.
_class$
" loc:@fire4/expand1x1/convolution
г
Ltraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire4/relu_squeeze1x1/Relu@training/SGD/gradients/fire4/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire4/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*'
_output_shapes
: *
	dilations
*
T0*.
_class$
" loc:@fire4/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ѕ
>training/SGD/gradients/fire4/expand3x3/convolution_grad/ShapeNShapeNfire4/relu_squeeze1x1/Relufire4/expand3x3/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0*.
_class$
" loc:@fire4/expand3x3/convolution
з
Ktraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire4/expand3x3/convolution_grad/ShapeNfire4/expand3x3/kernel/read>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire4/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ 
в
Ltraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire4/relu_squeeze1x1/Relu@training/SGD/gradients/fire4/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire4/relu_expand3x3/Relu_grad/ReluGrad*.
_class$
" loc:@fire4/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
: *
	dilations
*
T0
В
training/SGD/gradients/AddN_7AddNKtraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire4/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ 
я
?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_7fire4/relu_squeeze1x1/Relu*
T0*-
_class#
!loc:@fire4/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ 
љ
@training/SGD/gradients/fire4/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire4/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
ы
?training/SGD/gradients/fire4/squeeze1x1/convolution_grad/ShapeNShapeNpool3/MaxPoolfire4/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire4/squeeze1x1/convolution*
N* 
_output_shapes
::
о
Ltraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire4/squeeze1x1/convolution_grad/ShapeNfire4/squeeze1x1/kernel/read?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGrad*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*/
_class%
#!loc:@fire4/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ъ
Mtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterpool3/MaxPoolAtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire4/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire4/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
: 
ц
5training/SGD/gradients/pool3/MaxPool_grad/MaxPoolGradMaxPoolGradfire3/concat/concatpool3/MaxPoolLtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropInput*
ksize
*
paddingVALID*0
_output_shapes
:џџџџџџџџџ*
T0* 
_class
loc:@pool3/MaxPool*
strides
*
data_formatNHWC

4training/SGD/gradients/fire3/concat/concat_grad/RankConst*
value	B :*&
_class
loc:@fire3/concat/concat*
dtype0*
_output_shapes
: 
и
3training/SGD/gradients/fire3/concat/concat_grad/modFloorModfire3/concat/concat/axis4training/SGD/gradients/fire3/concat/concat_grad/Rank*
_output_shapes
: *
T0*&
_class
loc:@fire3/concat/concat
Ж
5training/SGD/gradients/fire3/concat/concat_grad/ShapeShapefire3/relu_expand1x1/Relu*
T0*
out_type0*&
_class
loc:@fire3/concat/concat*
_output_shapes
:
т
6training/SGD/gradients/fire3/concat/concat_grad/ShapeNShapeNfire3/relu_expand1x1/Relufire3/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire3/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire3/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire3/concat/concat_grad/mod6training/SGD/gradients/fire3/concat/concat_grad/ShapeN8training/SGD/gradients/fire3/concat/concat_grad/ShapeN:1*&
_class
loc:@fire3/concat/concat*
N* 
_output_shapes
::
к
5training/SGD/gradients/fire3/concat/concat_grad/SliceSlice5training/SGD/gradients/pool3/MaxPool_grad/MaxPoolGrad<training/SGD/gradients/fire3/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire3/concat/concat_grad/ShapeN*
T0*
Index0*&
_class
loc:@fire3/concat/concat*/
_output_shapes
:џџџџџџџџџ@
р
7training/SGD/gradients/fire3/concat/concat_grad/Slice_1Slice5training/SGD/gradients/pool3/MaxPool_grad/MaxPoolGrad>training/SGD/gradients/fire3/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire3/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire3/concat/concat*/
_output_shapes
:џџџџџџџџџ@

>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire3/concat/concat_grad/Slicefire3/relu_expand1x1/Relu*
T0*,
_class"
 loc:@fire3/relu_expand1x1/Relu*/
_output_shapes
:џџџџџџџџџ@

>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire3/concat/concat_grad/Slice_1fire3/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire3/relu_expand3x3/Relu*/
_output_shapes
:џџџџџџџџџ@
і
?training/SGD/gradients/fire3/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGrad**
_class 
loc:@fire3/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:@*
T0
і
?training/SGD/gradients/fire3/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGrad*
T0**
_class 
loc:@fire3/expand3x3/BiasAdd*
data_formatNHWC*
_output_shapes
:@
ѕ
>training/SGD/gradients/fire3/expand1x1/convolution_grad/ShapeNShapeNfire3/relu_squeeze1x1/Relufire3/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire3/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire3/expand1x1/convolution_grad/ShapeNfire3/expand1x1/kernel/read>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*.
_class$
" loc:@fire3/expand1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
в
Ltraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire3/relu_squeeze1x1/Relu@training/SGD/gradients/fire3/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire3/relu_expand1x1/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire3/expand1x1/convolution*
data_formatNHWC*
strides

ѕ
>training/SGD/gradients/fire3/expand3x3/convolution_grad/ShapeNShapeNfire3/relu_squeeze1x1/Relufire3/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire3/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire3/expand3x3/convolution_grad/ShapeNfire3/expand3x3/kernel/read>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*.
_class$
" loc:@fire3/expand3x3/convolution
б
Ltraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire3/relu_squeeze1x1/Relu@training/SGD/gradients/fire3/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire3/relu_expand3x3/Relu_grad/ReluGrad*&
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire3/expand3x3/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
В
training/SGD/gradients/AddN_8AddNKtraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire3/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ
я
?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_8fire3/relu_squeeze1x1/Relu*-
_class#
!loc:@fire3/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ*
T0
љ
@training/SGD/gradients/fire3/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGrad*
T0*+
_class!
loc:@fire3/squeeze1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:
ё
?training/SGD/gradients/fire3/squeeze1x1/convolution_grad/ShapeNShapeNfire2/concat/concatfire3/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire3/squeeze1x1/convolution*
N* 
_output_shapes
::
о
Ltraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire3/squeeze1x1/convolution_grad/ShapeNfire3/squeeze1x1/kernel/read?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGrad*0
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*/
_class%
#!loc:@fire3/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
а
Mtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire2/concat/concatAtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire3/relu_squeeze1x1/Relu_grad/ReluGrad*
	dilations
*
T0*/
_class%
#!loc:@fire3/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:

4training/SGD/gradients/fire2/concat/concat_grad/RankConst*
_output_shapes
: *
value	B :*&
_class
loc:@fire2/concat/concat*
dtype0
и
3training/SGD/gradients/fire2/concat/concat_grad/modFloorModfire2/concat/concat/axis4training/SGD/gradients/fire2/concat/concat_grad/Rank*&
_class
loc:@fire2/concat/concat*
_output_shapes
: *
T0
Ж
5training/SGD/gradients/fire2/concat/concat_grad/ShapeShapefire2/relu_expand1x1/Relu*
out_type0*&
_class
loc:@fire2/concat/concat*
_output_shapes
:*
T0
т
6training/SGD/gradients/fire2/concat/concat_grad/ShapeNShapeNfire2/relu_expand1x1/Relufire2/relu_expand3x3/Relu*
T0*
out_type0*&
_class
loc:@fire2/concat/concat*
N* 
_output_shapes
::
Ц
<training/SGD/gradients/fire2/concat/concat_grad/ConcatOffsetConcatOffset3training/SGD/gradients/fire2/concat/concat_grad/mod6training/SGD/gradients/fire2/concat/concat_grad/ShapeN8training/SGD/gradients/fire2/concat/concat_grad/ShapeN:1*&
_class
loc:@fire2/concat/concat*
N* 
_output_shapes
::
ё
5training/SGD/gradients/fire2/concat/concat_grad/SliceSliceLtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropInput<training/SGD/gradients/fire2/concat/concat_grad/ConcatOffset6training/SGD/gradients/fire2/concat/concat_grad/ShapeN*/
_output_shapes
:џџџџџџџџџ@*
T0*
Index0*&
_class
loc:@fire2/concat/concat
ї
7training/SGD/gradients/fire2/concat/concat_grad/Slice_1SliceLtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropInput>training/SGD/gradients/fire2/concat/concat_grad/ConcatOffset:18training/SGD/gradients/fire2/concat/concat_grad/ShapeN:1*
T0*
Index0*&
_class
loc:@fire2/concat/concat*/
_output_shapes
:џџџџџџџџџ@

>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/fire2/concat/concat_grad/Slicefire2/relu_expand1x1/Relu*/
_output_shapes
:џџџџџџџџџ@*
T0*,
_class"
 loc:@fire2/relu_expand1x1/Relu

>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGradReluGrad7training/SGD/gradients/fire2/concat/concat_grad/Slice_1fire2/relu_expand3x3/Relu*
T0*,
_class"
 loc:@fire2/relu_expand3x3/Relu*/
_output_shapes
:џџџџџџџџџ@
і
?training/SGD/gradients/fire2/expand1x1/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGrad**
_class 
loc:@fire2/expand1x1/BiasAdd*
data_formatNHWC*
_output_shapes
:@*
T0
і
?training/SGD/gradients/fire2/expand3x3/BiasAdd_grad/BiasAddGradBiasAddGrad>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0**
_class 
loc:@fire2/expand3x3/BiasAdd
ѕ
>training/SGD/gradients/fire2/expand1x1/convolution_grad/ShapeNShapeNfire2/relu_squeeze1x1/Relufire2/expand1x1/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire2/expand1x1/convolution*
N* 
_output_shapes
::
и
Ktraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire2/expand1x1/convolution_grad/ShapeNfire2/expand1x1/kernel/read>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGrad*
paddingVALID*/
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*.
_class$
" loc:@fire2/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
в
Ltraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire2/relu_squeeze1x1/Relu@training/SGD/gradients/fire2/expand1x1/convolution_grad/ShapeN:1>training/SGD/gradients/fire2/relu_expand1x1/Relu_grad/ReluGrad*
	dilations
*
T0*.
_class$
" loc:@fire2/expand1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:@
ѕ
>training/SGD/gradients/fire2/expand3x3/convolution_grad/ShapeNShapeNfire2/relu_squeeze1x1/Relufire2/expand3x3/kernel/read*
T0*
out_type0*.
_class$
" loc:@fire2/expand3x3/convolution*
N* 
_output_shapes
::
з
Ktraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput>training/SGD/gradients/fire2/expand3x3/convolution_grad/ShapeNfire2/expand3x3/kernel/read>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ*
	dilations
*
T0*.
_class$
" loc:@fire2/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
б
Ltraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterfire2/relu_squeeze1x1/Relu@training/SGD/gradients/fire2/expand3x3/convolution_grad/ShapeN:1>training/SGD/gradients/fire2/relu_expand3x3/Relu_grad/ReluGrad*
paddingSAME*&
_output_shapes
:@*
	dilations
*
T0*.
_class$
" loc:@fire2/expand3x3/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
В
training/SGD/gradients/AddN_9AddNKtraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropInputKtraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropInput*
T0*.
_class$
" loc:@fire2/expand1x1/convolution*
N*/
_output_shapes
:џџџџџџџџџ
я
?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGradReluGradtraining/SGD/gradients/AddN_9fire2/relu_squeeze1x1/Relu*/
_output_shapes
:џџџџџџџџџ*
T0*-
_class#
!loc:@fire2/relu_squeeze1x1/Relu
љ
@training/SGD/gradients/fire2/squeeze1x1/BiasAdd_grad/BiasAddGradBiasAddGrad?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGrad*
_output_shapes
:*
T0*+
_class!
loc:@fire2/squeeze1x1/BiasAdd*
data_formatNHWC
ы
?training/SGD/gradients/fire2/squeeze1x1/convolution_grad/ShapeNShapeNpool1/MaxPoolfire2/squeeze1x1/kernel/read*
T0*
out_type0*/
_class%
#!loc:@fire2/squeeze1x1/convolution*
N* 
_output_shapes
::
н
Ltraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput?training/SGD/gradients/fire2/squeeze1x1/convolution_grad/ShapeNfire2/squeeze1x1/kernel/read?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ@*
	dilations
*
T0*/
_class%
#!loc:@fire2/squeeze1x1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
Щ
Mtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterpool1/MaxPoolAtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/ShapeN:1?training/SGD/gradients/fire2/relu_squeeze1x1/Relu_grad/ReluGrad*&
_output_shapes
:@*
	dilations
*
T0*/
_class%
#!loc:@fire2/squeeze1x1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
с
5training/SGD/gradients/pool1/MaxPool_grad/MaxPoolGradMaxPoolGradrelu_conv1/Relupool1/MaxPoolLtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropInput*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*/
_output_shapes
:џџџџџџџџџ@*
T0* 
_class
loc:@pool1/MaxPool
ц
4training/SGD/gradients/relu_conv1/Relu_grad/ReluGradReluGrad5training/SGD/gradients/pool1/MaxPool_grad/MaxPoolGradrelu_conv1/Relu*/
_output_shapes
:џџџџџџџџџ@*
T0*"
_class
loc:@relu_conv1/Relu
и
5training/SGD/gradients/conv1/BiasAdd_grad/BiasAddGradBiasAddGrad4training/SGD/gradients/relu_conv1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0* 
_class
loc:@conv1/BiasAdd
Ф
4training/SGD/gradients/conv1/convolution_grad/ShapeNShapeNinput_1conv1/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0*$
_class
loc:@conv1/convolution
І
Atraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4training/SGD/gradients/conv1/convolution_grad/ShapeNconv1/kernel/read4training/SGD/gradients/relu_conv1/Relu_grad/ReluGrad*/
_output_shapes
:џџџџџџџџџ  *
	dilations
*
T0*$
_class
loc:@conv1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID

Btraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterinput_16training/SGD/gradients/conv1/convolution_grad/ShapeN:14training/SGD/gradients/relu_conv1/Relu_grad/ReluGrad*&
_output_shapes
:@*
	dilations
*
T0*$
_class
loc:@conv1/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
^
training/SGD/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ј
training/SGD/AssignAdd	AssignAddSGD/iterationstraining/SGD/AssignAdd/value*
T0	*!
_class
loc:@SGD/iterations*
_output_shapes
: *
use_locking( 
{
"training/SGD/zeros/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
]
training/SGD/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/SGD/zerosFill"training/SGD/zeros/shape_as_tensortraining/SGD/zeros/Const*
T0*

index_type0*&
_output_shapes
:@

training/SGD/Variable
VariableV2*
shape:@*
shared_name *
dtype0*&
_output_shapes
:@*
	container 
е
training/SGD/Variable/AssignAssigntraining/SGD/Variabletraining/SGD/zeros*&
_output_shapes
:@*
use_locking(*
T0*(
_class
loc:@training/SGD/Variable*
validate_shape(

training/SGD/Variable/readIdentitytraining/SGD/Variable*
T0*(
_class
loc:@training/SGD/Variable*&
_output_shapes
:@
a
training/SGD/zeros_1Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
б
training/SGD/Variable_1/AssignAssigntraining/SGD/Variable_1training/SGD/zeros_1**
_class 
loc:@training/SGD/Variable_1*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

training/SGD/Variable_1/readIdentitytraining/SGD/Variable_1*
T0**
_class 
loc:@training/SGD/Variable_1*
_output_shapes
:@
}
$training/SGD/zeros_2/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
_
training/SGD/zeros_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ё
training/SGD/zeros_2Fill$training/SGD/zeros_2/shape_as_tensortraining/SGD/zeros_2/Const*&
_output_shapes
:@*
T0*

index_type0

training/SGD/Variable_2
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
н
training/SGD/Variable_2/AssignAssigntraining/SGD/Variable_2training/SGD/zeros_2**
_class 
loc:@training/SGD/Variable_2*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0

training/SGD/Variable_2/readIdentitytraining/SGD/Variable_2*&
_output_shapes
:@*
T0**
_class 
loc:@training/SGD/Variable_2
a
training/SGD/zeros_3Const*
valueB*    *
dtype0*
_output_shapes
:

training/SGD/Variable_3
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
б
training/SGD/Variable_3/AssignAssigntraining/SGD/Variable_3training/SGD/zeros_3*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_3*
validate_shape(*
_output_shapes
:

training/SGD/Variable_3/readIdentitytraining/SGD/Variable_3*
T0**
_class 
loc:@training/SGD/Variable_3*
_output_shapes
:
}
$training/SGD/zeros_4/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ё
training/SGD/zeros_4Fill$training/SGD/zeros_4/shape_as_tensortraining/SGD/zeros_4/Const*
T0*

index_type0*&
_output_shapes
:@

training/SGD/Variable_4
VariableV2*
shared_name *
dtype0*&
_output_shapes
:@*
	container *
shape:@
н
training/SGD/Variable_4/AssignAssigntraining/SGD/Variable_4training/SGD/zeros_4*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_4

training/SGD/Variable_4/readIdentitytraining/SGD/Variable_4*&
_output_shapes
:@*
T0**
_class 
loc:@training/SGD/Variable_4
a
training/SGD/zeros_5Const*
_output_shapes
:@*
valueB@*    *
dtype0

training/SGD/Variable_5
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
б
training/SGD/Variable_5/AssignAssigntraining/SGD/Variable_5training/SGD/zeros_5*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_5*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_5/readIdentitytraining/SGD/Variable_5*
_output_shapes
:@*
T0**
_class 
loc:@training/SGD/Variable_5
}
$training/SGD/zeros_6/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
_
training/SGD/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ё
training/SGD/zeros_6Fill$training/SGD/zeros_6/shape_as_tensortraining/SGD/zeros_6/Const*&
_output_shapes
:@*
T0*

index_type0

training/SGD/Variable_6
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
н
training/SGD/Variable_6/AssignAssigntraining/SGD/Variable_6training/SGD/zeros_6*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_6*
validate_shape(*&
_output_shapes
:@

training/SGD/Variable_6/readIdentitytraining/SGD/Variable_6*
T0**
_class 
loc:@training/SGD/Variable_6*&
_output_shapes
:@
a
training/SGD/zeros_7Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_7
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
б
training/SGD/Variable_7/AssignAssigntraining/SGD/Variable_7training/SGD/zeros_7**
_class 
loc:@training/SGD/Variable_7*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

training/SGD/Variable_7/readIdentitytraining/SGD/Variable_7*
_output_shapes
:@*
T0**
_class 
loc:@training/SGD/Variable_7
}
$training/SGD/zeros_8/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
_
training/SGD/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ђ
training/SGD/zeros_8Fill$training/SGD/zeros_8/shape_as_tensortraining/SGD/zeros_8/Const*
T0*

index_type0*'
_output_shapes
:

training/SGD/Variable_8
VariableV2*
shape:*
shared_name *
dtype0*'
_output_shapes
:*
	container 
о
training/SGD/Variable_8/AssignAssigntraining/SGD/Variable_8training/SGD/zeros_8**
_class 
loc:@training/SGD/Variable_8*
validate_shape(*'
_output_shapes
:*
use_locking(*
T0

training/SGD/Variable_8/readIdentitytraining/SGD/Variable_8*
T0**
_class 
loc:@training/SGD/Variable_8*'
_output_shapes
:
a
training/SGD/zeros_9Const*
valueB*    *
dtype0*
_output_shapes
:

training/SGD/Variable_9
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
б
training/SGD/Variable_9/AssignAssigntraining/SGD/Variable_9training/SGD/zeros_9*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_9*
validate_shape(*
_output_shapes
:

training/SGD/Variable_9/readIdentitytraining/SGD/Variable_9*
T0**
_class 
loc:@training/SGD/Variable_9*
_output_shapes
:
~
%training/SGD/zeros_10/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/SGD/zeros_10Fill%training/SGD/zeros_10/shape_as_tensortraining/SGD/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:@

training/SGD/Variable_10
VariableV2*
dtype0*&
_output_shapes
:@*
	container *
shape:@*
shared_name 
с
training/SGD/Variable_10/AssignAssigntraining/SGD/Variable_10training/SGD/zeros_10*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_10*
validate_shape(*&
_output_shapes
:@
Ё
training/SGD/Variable_10/readIdentitytraining/SGD/Variable_10*&
_output_shapes
:@*
T0*+
_class!
loc:@training/SGD/Variable_10
b
training/SGD/zeros_11Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_11
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
е
training/SGD/Variable_11/AssignAssigntraining/SGD/Variable_11training/SGD/zeros_11*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_11

training/SGD/Variable_11/readIdentitytraining/SGD/Variable_11*
T0*+
_class!
loc:@training/SGD/Variable_11*
_output_shapes
:@
~
%training/SGD/zeros_12/shape_as_tensorConst*
_output_shapes
:*%
valueB"         @   *
dtype0
`
training/SGD/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Є
training/SGD/zeros_12Fill%training/SGD/zeros_12/shape_as_tensortraining/SGD/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:@

training/SGD/Variable_12
VariableV2*&
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
с
training/SGD/Variable_12/AssignAssigntraining/SGD/Variable_12training/SGD/zeros_12*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_12*
validate_shape(*&
_output_shapes
:@
Ё
training/SGD/Variable_12/readIdentitytraining/SGD/Variable_12*
T0*+
_class!
loc:@training/SGD/Variable_12*&
_output_shapes
:@
b
training/SGD/zeros_13Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_13
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
е
training/SGD/Variable_13/AssignAssigntraining/SGD/Variable_13training/SGD/zeros_13*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_13*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_13/readIdentitytraining/SGD/Variable_13*
T0*+
_class!
loc:@training/SGD/Variable_13*
_output_shapes
:@
~
%training/SGD/zeros_14/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_14Fill%training/SGD/zeros_14/shape_as_tensortraining/SGD/zeros_14/Const*'
_output_shapes
: *
T0*

index_type0

training/SGD/Variable_14
VariableV2*
dtype0*'
_output_shapes
: *
	container *
shape: *
shared_name 
т
training/SGD/Variable_14/AssignAssigntraining/SGD/Variable_14training/SGD/zeros_14*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_14*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_14/readIdentitytraining/SGD/Variable_14*
T0*+
_class!
loc:@training/SGD/Variable_14*'
_output_shapes
: 
b
training/SGD/zeros_15Const*
valueB *    *
dtype0*
_output_shapes
: 

training/SGD/Variable_15
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
е
training/SGD/Variable_15/AssignAssigntraining/SGD/Variable_15training/SGD/zeros_15*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_15*
validate_shape(*
_output_shapes
: 

training/SGD/Variable_15/readIdentitytraining/SGD/Variable_15*
T0*+
_class!
loc:@training/SGD/Variable_15*
_output_shapes
: 
~
%training/SGD/zeros_16/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_16Fill%training/SGD/zeros_16/shape_as_tensortraining/SGD/zeros_16/Const*
T0*

index_type0*'
_output_shapes
: 

training/SGD/Variable_16
VariableV2*'
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
т
training/SGD/Variable_16/AssignAssigntraining/SGD/Variable_16training/SGD/zeros_16*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_16*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_16/readIdentitytraining/SGD/Variable_16*
T0*+
_class!
loc:@training/SGD/Variable_16*'
_output_shapes
: 
d
training/SGD/zeros_17Const*
_output_shapes	
:*
valueB*    *
dtype0

training/SGD/Variable_17
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
ж
training/SGD/Variable_17/AssignAssigntraining/SGD/Variable_17training/SGD/zeros_17*+
_class!
loc:@training/SGD/Variable_17*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/SGD/Variable_17/readIdentitytraining/SGD/Variable_17*
T0*+
_class!
loc:@training/SGD/Variable_17*
_output_shapes	
:
~
%training/SGD/zeros_18/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_18Fill%training/SGD/zeros_18/shape_as_tensortraining/SGD/zeros_18/Const*
T0*

index_type0*'
_output_shapes
: 

training/SGD/Variable_18
VariableV2*
shared_name *
dtype0*'
_output_shapes
: *
	container *
shape: 
т
training/SGD/Variable_18/AssignAssigntraining/SGD/Variable_18training/SGD/zeros_18*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_18*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_18/readIdentitytraining/SGD/Variable_18*
T0*+
_class!
loc:@training/SGD/Variable_18*'
_output_shapes
: 
d
training/SGD/zeros_19Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_19
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/SGD/Variable_19/AssignAssigntraining/SGD/Variable_19training/SGD/zeros_19*
T0*+
_class!
loc:@training/SGD/Variable_19*
validate_shape(*
_output_shapes	
:*
use_locking(

training/SGD/Variable_19/readIdentitytraining/SGD/Variable_19*
T0*+
_class!
loc:@training/SGD/Variable_19*
_output_shapes	
:
~
%training/SGD/zeros_20/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_20Fill%training/SGD/zeros_20/shape_as_tensortraining/SGD/zeros_20/Const*
T0*

index_type0*'
_output_shapes
: 

training/SGD/Variable_20
VariableV2*
shared_name *
dtype0*'
_output_shapes
: *
	container *
shape: 
т
training/SGD/Variable_20/AssignAssigntraining/SGD/Variable_20training/SGD/zeros_20*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_20*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_20/readIdentitytraining/SGD/Variable_20*
T0*+
_class!
loc:@training/SGD/Variable_20*'
_output_shapes
: 
b
training/SGD/zeros_21Const*
valueB *    *
dtype0*
_output_shapes
: 

training/SGD/Variable_21
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
е
training/SGD/Variable_21/AssignAssigntraining/SGD/Variable_21training/SGD/zeros_21*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_21*
validate_shape(*
_output_shapes
: 

training/SGD/Variable_21/readIdentitytraining/SGD/Variable_21*
_output_shapes
: *
T0*+
_class!
loc:@training/SGD/Variable_21
~
%training/SGD/zeros_22/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_22/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ѕ
training/SGD/zeros_22Fill%training/SGD/zeros_22/shape_as_tensortraining/SGD/zeros_22/Const*'
_output_shapes
: *
T0*

index_type0

training/SGD/Variable_22
VariableV2*
dtype0*'
_output_shapes
: *
	container *
shape: *
shared_name 
т
training/SGD/Variable_22/AssignAssigntraining/SGD/Variable_22training/SGD/zeros_22*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_22
Ђ
training/SGD/Variable_22/readIdentitytraining/SGD/Variable_22*
T0*+
_class!
loc:@training/SGD/Variable_22*'
_output_shapes
: 
d
training/SGD/zeros_23Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_23
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/SGD/Variable_23/AssignAssigntraining/SGD/Variable_23training/SGD/zeros_23*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_23*
validate_shape(

training/SGD/Variable_23/readIdentitytraining/SGD/Variable_23*+
_class!
loc:@training/SGD/Variable_23*
_output_shapes	
:*
T0
~
%training/SGD/zeros_24/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:
`
training/SGD/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_24Fill%training/SGD/zeros_24/shape_as_tensortraining/SGD/zeros_24/Const*

index_type0*'
_output_shapes
: *
T0

training/SGD/Variable_24
VariableV2*
shape: *
shared_name *
dtype0*'
_output_shapes
: *
	container 
т
training/SGD/Variable_24/AssignAssigntraining/SGD/Variable_24training/SGD/zeros_24*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_24*
validate_shape(*'
_output_shapes
: 
Ђ
training/SGD/Variable_24/readIdentitytraining/SGD/Variable_24*
T0*+
_class!
loc:@training/SGD/Variable_24*'
_output_shapes
: 
d
training/SGD/zeros_25Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_25
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ж
training/SGD/Variable_25/AssignAssigntraining/SGD/Variable_25training/SGD/zeros_25*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_25*
validate_shape(*
_output_shapes	
:

training/SGD/Variable_25/readIdentitytraining/SGD/Variable_25*
T0*+
_class!
loc:@training/SGD/Variable_25*
_output_shapes	
:
~
%training/SGD/zeros_26/shape_as_tensorConst*%
valueB"         0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_26/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_26Fill%training/SGD/zeros_26/shape_as_tensortraining/SGD/zeros_26/Const*
T0*

index_type0*'
_output_shapes
:0

training/SGD/Variable_26
VariableV2*
dtype0*'
_output_shapes
:0*
	container *
shape:0*
shared_name 
т
training/SGD/Variable_26/AssignAssigntraining/SGD/Variable_26training/SGD/zeros_26*+
_class!
loc:@training/SGD/Variable_26*
validate_shape(*'
_output_shapes
:0*
use_locking(*
T0
Ђ
training/SGD/Variable_26/readIdentitytraining/SGD/Variable_26*
T0*+
_class!
loc:@training/SGD/Variable_26*'
_output_shapes
:0
b
training/SGD/zeros_27Const*
valueB0*    *
dtype0*
_output_shapes
:0

training/SGD/Variable_27
VariableV2*
shape:0*
shared_name *
dtype0*
_output_shapes
:0*
	container 
е
training/SGD/Variable_27/AssignAssigntraining/SGD/Variable_27training/SGD/zeros_27*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_27*
validate_shape(*
_output_shapes
:0

training/SGD/Variable_27/readIdentitytraining/SGD/Variable_27*
T0*+
_class!
loc:@training/SGD/Variable_27*
_output_shapes
:0
~
%training/SGD/zeros_28/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   Р   
`
training/SGD/zeros_28/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_28Fill%training/SGD/zeros_28/shape_as_tensortraining/SGD/zeros_28/Const*
T0*

index_type0*'
_output_shapes
:0Р

training/SGD/Variable_28
VariableV2*
shape:0Р*
shared_name *
dtype0*'
_output_shapes
:0Р*
	container 
т
training/SGD/Variable_28/AssignAssigntraining/SGD/Variable_28training/SGD/zeros_28*+
_class!
loc:@training/SGD/Variable_28*
validate_shape(*'
_output_shapes
:0Р*
use_locking(*
T0
Ђ
training/SGD/Variable_28/readIdentitytraining/SGD/Variable_28*
T0*+
_class!
loc:@training/SGD/Variable_28*'
_output_shapes
:0Р
d
training/SGD/zeros_29Const*
valueBР*    *
dtype0*
_output_shapes	
:Р

training/SGD/Variable_29
VariableV2*
dtype0*
_output_shapes	
:Р*
	container *
shape:Р*
shared_name 
ж
training/SGD/Variable_29/AssignAssigntraining/SGD/Variable_29training/SGD/zeros_29*+
_class!
loc:@training/SGD/Variable_29*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0

training/SGD/Variable_29/readIdentitytraining/SGD/Variable_29*
_output_shapes	
:Р*
T0*+
_class!
loc:@training/SGD/Variable_29
~
%training/SGD/zeros_30/shape_as_tensorConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_30/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_30Fill%training/SGD/zeros_30/shape_as_tensortraining/SGD/zeros_30/Const*'
_output_shapes
:0Р*
T0*

index_type0

training/SGD/Variable_30
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
т
training/SGD/Variable_30/AssignAssigntraining/SGD/Variable_30training/SGD/zeros_30*+
_class!
loc:@training/SGD/Variable_30*
validate_shape(*'
_output_shapes
:0Р*
use_locking(*
T0
Ђ
training/SGD/Variable_30/readIdentitytraining/SGD/Variable_30*
T0*+
_class!
loc:@training/SGD/Variable_30*'
_output_shapes
:0Р
d
training/SGD/zeros_31Const*
valueBР*    *
dtype0*
_output_shapes	
:Р

training/SGD/Variable_31
VariableV2*
shape:Р*
shared_name *
dtype0*
_output_shapes	
:Р*
	container 
ж
training/SGD/Variable_31/AssignAssigntraining/SGD/Variable_31training/SGD/zeros_31*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_31*
validate_shape(*
_output_shapes	
:Р

training/SGD/Variable_31/readIdentitytraining/SGD/Variable_31*
T0*+
_class!
loc:@training/SGD/Variable_31*
_output_shapes	
:Р
~
%training/SGD/zeros_32/shape_as_tensorConst*%
valueB"        0   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_32Fill%training/SGD/zeros_32/shape_as_tensortraining/SGD/zeros_32/Const*
T0*

index_type0*'
_output_shapes
:0

training/SGD/Variable_32
VariableV2*
dtype0*'
_output_shapes
:0*
	container *
shape:0*
shared_name 
т
training/SGD/Variable_32/AssignAssigntraining/SGD/Variable_32training/SGD/zeros_32*'
_output_shapes
:0*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_32*
validate_shape(
Ђ
training/SGD/Variable_32/readIdentitytraining/SGD/Variable_32*
T0*+
_class!
loc:@training/SGD/Variable_32*'
_output_shapes
:0
b
training/SGD/zeros_33Const*
valueB0*    *
dtype0*
_output_shapes
:0

training/SGD/Variable_33
VariableV2*
dtype0*
_output_shapes
:0*
	container *
shape:0*
shared_name 
е
training/SGD/Variable_33/AssignAssigntraining/SGD/Variable_33training/SGD/zeros_33*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_33*
validate_shape(*
_output_shapes
:0

training/SGD/Variable_33/readIdentitytraining/SGD/Variable_33*
_output_shapes
:0*
T0*+
_class!
loc:@training/SGD/Variable_33
~
%training/SGD/zeros_34/shape_as_tensorConst*
_output_shapes
:*%
valueB"      0   Р   *
dtype0
`
training/SGD/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_34Fill%training/SGD/zeros_34/shape_as_tensortraining/SGD/zeros_34/Const*
T0*

index_type0*'
_output_shapes
:0Р

training/SGD/Variable_34
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
т
training/SGD/Variable_34/AssignAssigntraining/SGD/Variable_34training/SGD/zeros_34*'
_output_shapes
:0Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_34*
validate_shape(
Ђ
training/SGD/Variable_34/readIdentitytraining/SGD/Variable_34*
T0*+
_class!
loc:@training/SGD/Variable_34*'
_output_shapes
:0Р
d
training/SGD/zeros_35Const*
valueBР*    *
dtype0*
_output_shapes	
:Р

training/SGD/Variable_35
VariableV2*
shared_name *
dtype0*
_output_shapes	
:Р*
	container *
shape:Р
ж
training/SGD/Variable_35/AssignAssigntraining/SGD/Variable_35training/SGD/zeros_35*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_35

training/SGD/Variable_35/readIdentitytraining/SGD/Variable_35*
T0*+
_class!
loc:@training/SGD/Variable_35*
_output_shapes	
:Р
~
%training/SGD/zeros_36/shape_as_tensorConst*%
valueB"      0   Р   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_36/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_36Fill%training/SGD/zeros_36/shape_as_tensortraining/SGD/zeros_36/Const*'
_output_shapes
:0Р*
T0*

index_type0

training/SGD/Variable_36
VariableV2*
dtype0*'
_output_shapes
:0Р*
	container *
shape:0Р*
shared_name 
т
training/SGD/Variable_36/AssignAssigntraining/SGD/Variable_36training/SGD/zeros_36*+
_class!
loc:@training/SGD/Variable_36*
validate_shape(*'
_output_shapes
:0Р*
use_locking(*
T0
Ђ
training/SGD/Variable_36/readIdentitytraining/SGD/Variable_36*
T0*+
_class!
loc:@training/SGD/Variable_36*'
_output_shapes
:0Р
d
training/SGD/zeros_37Const*
valueBР*    *
dtype0*
_output_shapes	
:Р

training/SGD/Variable_37
VariableV2*
shape:Р*
shared_name *
dtype0*
_output_shapes	
:Р*
	container 
ж
training/SGD/Variable_37/AssignAssigntraining/SGD/Variable_37training/SGD/zeros_37*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_37*
validate_shape(*
_output_shapes	
:Р

training/SGD/Variable_37/readIdentitytraining/SGD/Variable_37*
T0*+
_class!
loc:@training/SGD/Variable_37*
_output_shapes	
:Р
~
%training/SGD/zeros_38/shape_as_tensorConst*%
valueB"        @   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_38/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_38Fill%training/SGD/zeros_38/shape_as_tensortraining/SGD/zeros_38/Const*

index_type0*'
_output_shapes
:@*
T0

training/SGD/Variable_38
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
т
training/SGD/Variable_38/AssignAssigntraining/SGD/Variable_38training/SGD/zeros_38*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_38
Ђ
training/SGD/Variable_38/readIdentitytraining/SGD/Variable_38*'
_output_shapes
:@*
T0*+
_class!
loc:@training/SGD/Variable_38
b
training/SGD/zeros_39Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/SGD/Variable_39
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
е
training/SGD/Variable_39/AssignAssigntraining/SGD/Variable_39training/SGD/zeros_39*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_39*
validate_shape(*
_output_shapes
:@

training/SGD/Variable_39/readIdentitytraining/SGD/Variable_39*
T0*+
_class!
loc:@training/SGD/Variable_39*
_output_shapes
:@
~
%training/SGD/zeros_40/shape_as_tensorConst*
_output_shapes
:*%
valueB"      @      *
dtype0
`
training/SGD/zeros_40/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ѕ
training/SGD/zeros_40Fill%training/SGD/zeros_40/shape_as_tensortraining/SGD/zeros_40/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_40
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
т
training/SGD/Variable_40/AssignAssigntraining/SGD/Variable_40training/SGD/zeros_40*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_40*
validate_shape(*'
_output_shapes
:@
Ђ
training/SGD/Variable_40/readIdentitytraining/SGD/Variable_40*
T0*+
_class!
loc:@training/SGD/Variable_40*'
_output_shapes
:@
d
training/SGD/zeros_41Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_41
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/SGD/Variable_41/AssignAssigntraining/SGD/Variable_41training/SGD/zeros_41*+
_class!
loc:@training/SGD/Variable_41*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/SGD/Variable_41/readIdentitytraining/SGD/Variable_41*
T0*+
_class!
loc:@training/SGD/Variable_41*
_output_shapes	
:
~
%training/SGD/zeros_42/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_42/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_42Fill%training/SGD/zeros_42/shape_as_tensortraining/SGD/zeros_42/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_42
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
т
training/SGD/Variable_42/AssignAssigntraining/SGD/Variable_42training/SGD/zeros_42*+
_class!
loc:@training/SGD/Variable_42*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0
Ђ
training/SGD/Variable_42/readIdentitytraining/SGD/Variable_42*
T0*+
_class!
loc:@training/SGD/Variable_42*'
_output_shapes
:@
d
training/SGD/zeros_43Const*
dtype0*
_output_shapes	
:*
valueB*    

training/SGD/Variable_43
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ж
training/SGD/Variable_43/AssignAssigntraining/SGD/Variable_43training/SGD/zeros_43*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_43

training/SGD/Variable_43/readIdentitytraining/SGD/Variable_43*
_output_shapes	
:*
T0*+
_class!
loc:@training/SGD/Variable_43
~
%training/SGD/zeros_44/shape_as_tensorConst*%
valueB"         @   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_44/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ѕ
training/SGD/zeros_44Fill%training/SGD/zeros_44/shape_as_tensortraining/SGD/zeros_44/Const*'
_output_shapes
:@*
T0*

index_type0

training/SGD/Variable_44
VariableV2*
shared_name *
dtype0*'
_output_shapes
:@*
	container *
shape:@
т
training/SGD/Variable_44/AssignAssigntraining/SGD/Variable_44training/SGD/zeros_44*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_44
Ђ
training/SGD/Variable_44/readIdentitytraining/SGD/Variable_44*+
_class!
loc:@training/SGD/Variable_44*'
_output_shapes
:@*
T0
b
training/SGD/zeros_45Const*
_output_shapes
:@*
valueB@*    *
dtype0

training/SGD/Variable_45
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
е
training/SGD/Variable_45/AssignAssigntraining/SGD/Variable_45training/SGD/zeros_45*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_45

training/SGD/Variable_45/readIdentitytraining/SGD/Variable_45*
T0*+
_class!
loc:@training/SGD/Variable_45*
_output_shapes
:@
~
%training/SGD/zeros_46/shape_as_tensorConst*
_output_shapes
:*%
valueB"      @      *
dtype0
`
training/SGD/zeros_46/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_46Fill%training/SGD/zeros_46/shape_as_tensortraining/SGD/zeros_46/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_46
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
т
training/SGD/Variable_46/AssignAssigntraining/SGD/Variable_46training/SGD/zeros_46*
T0*+
_class!
loc:@training/SGD/Variable_46*
validate_shape(*'
_output_shapes
:@*
use_locking(
Ђ
training/SGD/Variable_46/readIdentitytraining/SGD/Variable_46*'
_output_shapes
:@*
T0*+
_class!
loc:@training/SGD/Variable_46
d
training/SGD/zeros_47Const*
dtype0*
_output_shapes	
:*
valueB*    

training/SGD/Variable_47
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ж
training/SGD/Variable_47/AssignAssigntraining/SGD/Variable_47training/SGD/zeros_47*
T0*+
_class!
loc:@training/SGD/Variable_47*
validate_shape(*
_output_shapes	
:*
use_locking(

training/SGD/Variable_47/readIdentitytraining/SGD/Variable_47*+
_class!
loc:@training/SGD/Variable_47*
_output_shapes	
:*
T0
~
%training/SGD/zeros_48/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
training/SGD/zeros_48/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_48Fill%training/SGD/zeros_48/shape_as_tensortraining/SGD/zeros_48/Const*
T0*

index_type0*'
_output_shapes
:@

training/SGD/Variable_48
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
т
training/SGD/Variable_48/AssignAssigntraining/SGD/Variable_48training/SGD/zeros_48*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_48*
validate_shape(*'
_output_shapes
:@
Ђ
training/SGD/Variable_48/readIdentitytraining/SGD/Variable_48*
T0*+
_class!
loc:@training/SGD/Variable_48*'
_output_shapes
:@
d
training/SGD/zeros_49Const*
valueB*    *
dtype0*
_output_shapes	
:

training/SGD/Variable_49
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ж
training/SGD/Variable_49/AssignAssigntraining/SGD/Variable_49training/SGD/zeros_49*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_49*
validate_shape(*
_output_shapes	
:

training/SGD/Variable_49/readIdentitytraining/SGD/Variable_49*
T0*+
_class!
loc:@training/SGD/Variable_49*
_output_shapes	
:
~
%training/SGD/zeros_50/shape_as_tensorConst*%
valueB"         
   *
dtype0*
_output_shapes
:
`
training/SGD/zeros_50/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѕ
training/SGD/zeros_50Fill%training/SGD/zeros_50/shape_as_tensortraining/SGD/zeros_50/Const*
T0*

index_type0*'
_output_shapes
:


training/SGD/Variable_50
VariableV2*
dtype0*'
_output_shapes
:
*
	container *
shape:
*
shared_name 
т
training/SGD/Variable_50/AssignAssigntraining/SGD/Variable_50training/SGD/zeros_50*+
_class!
loc:@training/SGD/Variable_50*
validate_shape(*'
_output_shapes
:
*
use_locking(*
T0
Ђ
training/SGD/Variable_50/readIdentitytraining/SGD/Variable_50*'
_output_shapes
:
*
T0*+
_class!
loc:@training/SGD/Variable_50
b
training/SGD/zeros_51Const*
valueB
*    *
dtype0*
_output_shapes
:


training/SGD/Variable_51
VariableV2*
shape:
*
shared_name *
dtype0*
_output_shapes
:
*
	container 
е
training/SGD/Variable_51/AssignAssigntraining/SGD/Variable_51training/SGD/zeros_51*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_51*
validate_shape(*
_output_shapes
:


training/SGD/Variable_51/readIdentitytraining/SGD/Variable_51*
T0*+
_class!
loc:@training/SGD/Variable_51*
_output_shapes
:

w
training/SGD/mulMulSGD/momentum/readtraining/SGD/Variable/read*
T0*&
_output_shapes
:@

training/SGD/mul_1MulSGD/lr/readBtraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
n
training/SGD/subSubtraining/SGD/multraining/SGD/mul_1*
T0*&
_output_shapes
:@
Ъ
training/SGD/AssignAssigntraining/SGD/Variabletraining/SGD/sub*
use_locking(*
T0*(
_class
loc:@training/SGD/Variable*
validate_shape(*&
_output_shapes
:@
o
training/SGD/mul_2MulSGD/momentum/readtraining/SGD/sub*&
_output_shapes
:@*
T0
o
training/SGD/addAddconv1/kernel/readtraining/SGD/mul_2*&
_output_shapes
:@*
T0

training/SGD/mul_3MulSGD/lr/readBtraining/SGD/gradients/conv1/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
p
training/SGD/sub_1Subtraining/SGD/addtraining/SGD/mul_3*
T0*&
_output_shapes
:@
М
training/SGD/Assign_1Assignconv1/kerneltraining/SGD/sub_1*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv1/kernel
o
training/SGD/mul_4MulSGD/momentum/readtraining/SGD/Variable_1/read*
_output_shapes
:@*
T0

training/SGD/mul_5MulSGD/lr/read5training/SGD/gradients/conv1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
f
training/SGD/sub_2Subtraining/SGD/mul_4training/SGD/mul_5*
T0*
_output_shapes
:@
Ц
training/SGD/Assign_2Assigntraining/SGD/Variable_1training/SGD/sub_2**
_class 
loc:@training/SGD/Variable_1*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
e
training/SGD/mul_6MulSGD/momentum/readtraining/SGD/sub_2*
T0*
_output_shapes
:@
c
training/SGD/add_1Addconv1/bias/readtraining/SGD/mul_6*
T0*
_output_shapes
:@

training/SGD/mul_7MulSGD/lr/read5training/SGD/gradients/conv1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
f
training/SGD/sub_3Subtraining/SGD/add_1training/SGD/mul_7*
T0*
_output_shapes
:@
Ќ
training/SGD/Assign_3Assign
conv1/biastraining/SGD/sub_3*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
:@
{
training/SGD/mul_8MulSGD/momentum/readtraining/SGD/Variable_2/read*&
_output_shapes
:@*
T0
І
training/SGD/mul_9MulSGD/lr/readMtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
r
training/SGD/sub_4Subtraining/SGD/mul_8training/SGD/mul_9*&
_output_shapes
:@*
T0
в
training/SGD/Assign_4Assigntraining/SGD/Variable_2training/SGD/sub_4*
T0**
_class 
loc:@training/SGD/Variable_2*
validate_shape(*&
_output_shapes
:@*
use_locking(
r
training/SGD/mul_10MulSGD/momentum/readtraining/SGD/sub_4*
T0*&
_output_shapes
:@
}
training/SGD/add_2Addfire2/squeeze1x1/kernel/readtraining/SGD/mul_10*
T0*&
_output_shapes
:@
Ї
training/SGD/mul_11MulSGD/lr/readMtraining/SGD/gradients/fire2/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
s
training/SGD/sub_5Subtraining/SGD/add_2training/SGD/mul_11*&
_output_shapes
:@*
T0
в
training/SGD/Assign_5Assignfire2/squeeze1x1/kerneltraining/SGD/sub_5*&
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@fire2/squeeze1x1/kernel*
validate_shape(
p
training/SGD/mul_12MulSGD/momentum/readtraining/SGD/Variable_3/read*
T0*
_output_shapes
:

training/SGD/mul_13MulSGD/lr/read@training/SGD/gradients/fire2/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
h
training/SGD/sub_6Subtraining/SGD/mul_12training/SGD/mul_13*
T0*
_output_shapes
:
Ц
training/SGD/Assign_6Assigntraining/SGD/Variable_3training/SGD/sub_6*
validate_shape(*
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_3
f
training/SGD/mul_14MulSGD/momentum/readtraining/SGD/sub_6*
T0*
_output_shapes
:
o
training/SGD/add_3Addfire2/squeeze1x1/bias/readtraining/SGD/mul_14*
_output_shapes
:*
T0

training/SGD/mul_15MulSGD/lr/read@training/SGD/gradients/fire2/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
g
training/SGD/sub_7Subtraining/SGD/add_3training/SGD/mul_15*
T0*
_output_shapes
:
Т
training/SGD/Assign_7Assignfire2/squeeze1x1/biastraining/SGD/sub_7*
use_locking(*
T0*(
_class
loc:@fire2/squeeze1x1/bias*
validate_shape(*
_output_shapes
:
|
training/SGD/mul_16MulSGD/momentum/readtraining/SGD/Variable_4/read*&
_output_shapes
:@*
T0
І
training/SGD/mul_17MulSGD/lr/readLtraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
t
training/SGD/sub_8Subtraining/SGD/mul_16training/SGD/mul_17*
T0*&
_output_shapes
:@
в
training/SGD/Assign_8Assigntraining/SGD/Variable_4training/SGD/sub_8*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_4*
validate_shape(*&
_output_shapes
:@
r
training/SGD/mul_18MulSGD/momentum/readtraining/SGD/sub_8*&
_output_shapes
:@*
T0
|
training/SGD/add_4Addfire2/expand1x1/kernel/readtraining/SGD/mul_18*&
_output_shapes
:@*
T0
І
training/SGD/mul_19MulSGD/lr/readLtraining/SGD/gradients/fire2/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
s
training/SGD/sub_9Subtraining/SGD/add_4training/SGD/mul_19*
T0*&
_output_shapes
:@
а
training/SGD/Assign_9Assignfire2/expand1x1/kerneltraining/SGD/sub_9*&
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire2/expand1x1/kernel*
validate_shape(
p
training/SGD/mul_20MulSGD/momentum/readtraining/SGD/Variable_5/read*
T0*
_output_shapes
:@

training/SGD/mul_21MulSGD/lr/read?training/SGD/gradients/fire2/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_10Subtraining/SGD/mul_20training/SGD/mul_21*
T0*
_output_shapes
:@
Ш
training/SGD/Assign_10Assigntraining/SGD/Variable_5training/SGD/sub_10*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_5*
validate_shape(*
_output_shapes
:@
g
training/SGD/mul_22MulSGD/momentum/readtraining/SGD/sub_10*
_output_shapes
:@*
T0
n
training/SGD/add_5Addfire2/expand1x1/bias/readtraining/SGD/mul_22*
_output_shapes
:@*
T0

training/SGD/mul_23MulSGD/lr/read?training/SGD/gradients/fire2/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
h
training/SGD/sub_11Subtraining/SGD/add_5training/SGD/mul_23*
T0*
_output_shapes
:@
Т
training/SGD/Assign_11Assignfire2/expand1x1/biastraining/SGD/sub_11*
use_locking(*
T0*'
_class
loc:@fire2/expand1x1/bias*
validate_shape(*
_output_shapes
:@
|
training/SGD/mul_24MulSGD/momentum/readtraining/SGD/Variable_6/read*&
_output_shapes
:@*
T0
І
training/SGD/mul_25MulSGD/lr/readLtraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
u
training/SGD/sub_12Subtraining/SGD/mul_24training/SGD/mul_25*
T0*&
_output_shapes
:@
д
training/SGD/Assign_12Assigntraining/SGD/Variable_6training/SGD/sub_12*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_6*
validate_shape(*&
_output_shapes
:@
s
training/SGD/mul_26MulSGD/momentum/readtraining/SGD/sub_12*
T0*&
_output_shapes
:@
|
training/SGD/add_6Addfire2/expand3x3/kernel/readtraining/SGD/mul_26*&
_output_shapes
:@*
T0
І
training/SGD/mul_27MulSGD/lr/readLtraining/SGD/gradients/fire2/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
t
training/SGD/sub_13Subtraining/SGD/add_6training/SGD/mul_27*
T0*&
_output_shapes
:@
в
training/SGD/Assign_13Assignfire2/expand3x3/kerneltraining/SGD/sub_13*
use_locking(*
T0*)
_class
loc:@fire2/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@
p
training/SGD/mul_28MulSGD/momentum/readtraining/SGD/Variable_7/read*
T0*
_output_shapes
:@

training/SGD/mul_29MulSGD/lr/read?training/SGD/gradients/fire2/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_14Subtraining/SGD/mul_28training/SGD/mul_29*
T0*
_output_shapes
:@
Ш
training/SGD/Assign_14Assigntraining/SGD/Variable_7training/SGD/sub_14*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_7*
validate_shape(*
_output_shapes
:@
g
training/SGD/mul_30MulSGD/momentum/readtraining/SGD/sub_14*
_output_shapes
:@*
T0
n
training/SGD/add_7Addfire2/expand3x3/bias/readtraining/SGD/mul_30*
_output_shapes
:@*
T0

training/SGD/mul_31MulSGD/lr/read?training/SGD/gradients/fire2/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
h
training/SGD/sub_15Subtraining/SGD/add_7training/SGD/mul_31*
T0*
_output_shapes
:@
Т
training/SGD/Assign_15Assignfire2/expand3x3/biastraining/SGD/sub_15*
T0*'
_class
loc:@fire2/expand3x3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
}
training/SGD/mul_32MulSGD/momentum/readtraining/SGD/Variable_8/read*
T0*'
_output_shapes
:
Ј
training/SGD/mul_33MulSGD/lr/readMtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:*
T0
v
training/SGD/sub_16Subtraining/SGD/mul_32training/SGD/mul_33*
T0*'
_output_shapes
:
е
training/SGD/Assign_16Assigntraining/SGD/Variable_8training/SGD/sub_16*'
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_8*
validate_shape(
t
training/SGD/mul_34MulSGD/momentum/readtraining/SGD/sub_16*'
_output_shapes
:*
T0
~
training/SGD/add_8Addfire3/squeeze1x1/kernel/readtraining/SGD/mul_34*
T0*'
_output_shapes
:
Ј
training/SGD/mul_35MulSGD/lr/readMtraining/SGD/gradients/fire3/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:*
T0
u
training/SGD/sub_17Subtraining/SGD/add_8training/SGD/mul_35*
T0*'
_output_shapes
:
е
training/SGD/Assign_17Assignfire3/squeeze1x1/kerneltraining/SGD/sub_17**
_class 
loc:@fire3/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:*
use_locking(*
T0
p
training/SGD/mul_36MulSGD/momentum/readtraining/SGD/Variable_9/read*
_output_shapes
:*
T0

training/SGD/mul_37MulSGD/lr/read@training/SGD/gradients/fire3/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/SGD/sub_18Subtraining/SGD/mul_36training/SGD/mul_37*
T0*
_output_shapes
:
Ш
training/SGD/Assign_18Assigntraining/SGD/Variable_9training/SGD/sub_18*
use_locking(*
T0**
_class 
loc:@training/SGD/Variable_9*
validate_shape(*
_output_shapes
:
g
training/SGD/mul_38MulSGD/momentum/readtraining/SGD/sub_18*
T0*
_output_shapes
:
o
training/SGD/add_9Addfire3/squeeze1x1/bias/readtraining/SGD/mul_38*
T0*
_output_shapes
:

training/SGD/mul_39MulSGD/lr/read@training/SGD/gradients/fire3/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
h
training/SGD/sub_19Subtraining/SGD/add_9training/SGD/mul_39*
_output_shapes
:*
T0
Ф
training/SGD/Assign_19Assignfire3/squeeze1x1/biastraining/SGD/sub_19*(
_class
loc:@fire3/squeeze1x1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
}
training/SGD/mul_40MulSGD/momentum/readtraining/SGD/Variable_10/read*
T0*&
_output_shapes
:@
І
training/SGD/mul_41MulSGD/lr/readLtraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
u
training/SGD/sub_20Subtraining/SGD/mul_40training/SGD/mul_41*&
_output_shapes
:@*
T0
ж
training/SGD/Assign_20Assigntraining/SGD/Variable_10training/SGD/sub_20*
T0*+
_class!
loc:@training/SGD/Variable_10*
validate_shape(*&
_output_shapes
:@*
use_locking(
s
training/SGD/mul_42MulSGD/momentum/readtraining/SGD/sub_20*
T0*&
_output_shapes
:@
}
training/SGD/add_10Addfire3/expand1x1/kernel/readtraining/SGD/mul_42*&
_output_shapes
:@*
T0
І
training/SGD/mul_43MulSGD/lr/readLtraining/SGD/gradients/fire3/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@
u
training/SGD/sub_21Subtraining/SGD/add_10training/SGD/mul_43*
T0*&
_output_shapes
:@
в
training/SGD/Assign_21Assignfire3/expand1x1/kerneltraining/SGD/sub_21*
use_locking(*
T0*)
_class
loc:@fire3/expand1x1/kernel*
validate_shape(*&
_output_shapes
:@
q
training/SGD/mul_44MulSGD/momentum/readtraining/SGD/Variable_11/read*
_output_shapes
:@*
T0

training/SGD/mul_45MulSGD/lr/read?training/SGD/gradients/fire3/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
i
training/SGD/sub_22Subtraining/SGD/mul_44training/SGD/mul_45*
_output_shapes
:@*
T0
Ъ
training/SGD/Assign_22Assigntraining/SGD/Variable_11training/SGD/sub_22*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_11*
validate_shape(*
_output_shapes
:@
g
training/SGD/mul_46MulSGD/momentum/readtraining/SGD/sub_22*
T0*
_output_shapes
:@
o
training/SGD/add_11Addfire3/expand1x1/bias/readtraining/SGD/mul_46*
T0*
_output_shapes
:@

training/SGD/mul_47MulSGD/lr/read?training/SGD/gradients/fire3/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
i
training/SGD/sub_23Subtraining/SGD/add_11training/SGD/mul_47*
T0*
_output_shapes
:@
Т
training/SGD/Assign_23Assignfire3/expand1x1/biastraining/SGD/sub_23*
use_locking(*
T0*'
_class
loc:@fire3/expand1x1/bias*
validate_shape(*
_output_shapes
:@
}
training/SGD/mul_48MulSGD/momentum/readtraining/SGD/Variable_12/read*
T0*&
_output_shapes
:@
І
training/SGD/mul_49MulSGD/lr/readLtraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
u
training/SGD/sub_24Subtraining/SGD/mul_48training/SGD/mul_49*
T0*&
_output_shapes
:@
ж
training/SGD/Assign_24Assigntraining/SGD/Variable_12training/SGD/sub_24*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_12
s
training/SGD/mul_50MulSGD/momentum/readtraining/SGD/sub_24*
T0*&
_output_shapes
:@
}
training/SGD/add_12Addfire3/expand3x3/kernel/readtraining/SGD/mul_50*
T0*&
_output_shapes
:@
І
training/SGD/mul_51MulSGD/lr/readLtraining/SGD/gradients/fire3/expand3x3/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:@*
T0
u
training/SGD/sub_25Subtraining/SGD/add_12training/SGD/mul_51*&
_output_shapes
:@*
T0
в
training/SGD/Assign_25Assignfire3/expand3x3/kerneltraining/SGD/sub_25*)
_class
loc:@fire3/expand3x3/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(*
T0
q
training/SGD/mul_52MulSGD/momentum/readtraining/SGD/Variable_13/read*
T0*
_output_shapes
:@

training/SGD/mul_53MulSGD/lr/read?training/SGD/gradients/fire3/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_26Subtraining/SGD/mul_52training/SGD/mul_53*
_output_shapes
:@*
T0
Ъ
training/SGD/Assign_26Assigntraining/SGD/Variable_13training/SGD/sub_26*
T0*+
_class!
loc:@training/SGD/Variable_13*
validate_shape(*
_output_shapes
:@*
use_locking(
g
training/SGD/mul_54MulSGD/momentum/readtraining/SGD/sub_26*
T0*
_output_shapes
:@
o
training/SGD/add_13Addfire3/expand3x3/bias/readtraining/SGD/mul_54*
T0*
_output_shapes
:@

training/SGD/mul_55MulSGD/lr/read?training/SGD/gradients/fire3/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
i
training/SGD/sub_27Subtraining/SGD/add_13training/SGD/mul_55*
T0*
_output_shapes
:@
Т
training/SGD/Assign_27Assignfire3/expand3x3/biastraining/SGD/sub_27*'
_class
loc:@fire3/expand3x3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
~
training/SGD/mul_56MulSGD/momentum/readtraining/SGD/Variable_14/read*
T0*'
_output_shapes
: 
Ј
training/SGD/mul_57MulSGD/lr/readMtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_28Subtraining/SGD/mul_56training/SGD/mul_57*
T0*'
_output_shapes
: 
з
training/SGD/Assign_28Assigntraining/SGD/Variable_14training/SGD/sub_28*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_14*
validate_shape(*'
_output_shapes
: 
t
training/SGD/mul_58MulSGD/momentum/readtraining/SGD/sub_28*
T0*'
_output_shapes
: 

training/SGD/add_14Addfire4/squeeze1x1/kernel/readtraining/SGD/mul_58*'
_output_shapes
: *
T0
Ј
training/SGD/mul_59MulSGD/lr/readMtraining/SGD/gradients/fire4/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_29Subtraining/SGD/add_14training/SGD/mul_59*'
_output_shapes
: *
T0
е
training/SGD/Assign_29Assignfire4/squeeze1x1/kerneltraining/SGD/sub_29*
T0**
_class 
loc:@fire4/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(
q
training/SGD/mul_60MulSGD/momentum/readtraining/SGD/Variable_15/read*
_output_shapes
: *
T0

training/SGD/mul_61MulSGD/lr/read@training/SGD/gradients/fire4/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/SGD/sub_30Subtraining/SGD/mul_60training/SGD/mul_61*
_output_shapes
: *
T0
Ъ
training/SGD/Assign_30Assigntraining/SGD/Variable_15training/SGD/sub_30*
T0*+
_class!
loc:@training/SGD/Variable_15*
validate_shape(*
_output_shapes
: *
use_locking(
g
training/SGD/mul_62MulSGD/momentum/readtraining/SGD/sub_30*
T0*
_output_shapes
: 
p
training/SGD/add_15Addfire4/squeeze1x1/bias/readtraining/SGD/mul_62*
T0*
_output_shapes
: 

training/SGD/mul_63MulSGD/lr/read@training/SGD/gradients/fire4/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/SGD/sub_31Subtraining/SGD/add_15training/SGD/mul_63*
T0*
_output_shapes
: 
Ф
training/SGD/Assign_31Assignfire4/squeeze1x1/biastraining/SGD/sub_31*(
_class
loc:@fire4/squeeze1x1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
~
training/SGD/mul_64MulSGD/momentum/readtraining/SGD/Variable_16/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_65MulSGD/lr/readLtraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_32Subtraining/SGD/mul_64training/SGD/mul_65*'
_output_shapes
: *
T0
з
training/SGD/Assign_32Assigntraining/SGD/Variable_16training/SGD/sub_32*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_16*
validate_shape(*'
_output_shapes
: 
t
training/SGD/mul_66MulSGD/momentum/readtraining/SGD/sub_32*
T0*'
_output_shapes
: 
~
training/SGD/add_16Addfire4/expand1x1/kernel/readtraining/SGD/mul_66*'
_output_shapes
: *
T0
Ї
training/SGD/mul_67MulSGD/lr/readLtraining/SGD/gradients/fire4/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
: *
T0
v
training/SGD/sub_33Subtraining/SGD/add_16training/SGD/mul_67*
T0*'
_output_shapes
: 
г
training/SGD/Assign_33Assignfire4/expand1x1/kerneltraining/SGD/sub_33*
use_locking(*
T0*)
_class
loc:@fire4/expand1x1/kernel*
validate_shape(*'
_output_shapes
: 
r
training/SGD/mul_68MulSGD/momentum/readtraining/SGD/Variable_17/read*
T0*
_output_shapes	
:

training/SGD/mul_69MulSGD/lr/read?training/SGD/gradients/fire4/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
j
training/SGD/sub_34Subtraining/SGD/mul_68training/SGD/mul_69*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_34Assigntraining/SGD/Variable_17training/SGD/sub_34*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_17*
validate_shape(*
_output_shapes	
:
h
training/SGD/mul_70MulSGD/momentum/readtraining/SGD/sub_34*
T0*
_output_shapes	
:
p
training/SGD/add_17Addfire4/expand1x1/bias/readtraining/SGD/mul_70*
_output_shapes	
:*
T0

training/SGD/mul_71MulSGD/lr/read?training/SGD/gradients/fire4/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/SGD/sub_35Subtraining/SGD/add_17training/SGD/mul_71*
T0*
_output_shapes	
:
У
training/SGD/Assign_35Assignfire4/expand1x1/biastraining/SGD/sub_35*
use_locking(*
T0*'
_class
loc:@fire4/expand1x1/bias*
validate_shape(*
_output_shapes	
:
~
training/SGD/mul_72MulSGD/momentum/readtraining/SGD/Variable_18/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_73MulSGD/lr/readLtraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_36Subtraining/SGD/mul_72training/SGD/mul_73*
T0*'
_output_shapes
: 
з
training/SGD/Assign_36Assigntraining/SGD/Variable_18training/SGD/sub_36*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_18
t
training/SGD/mul_74MulSGD/momentum/readtraining/SGD/sub_36*
T0*'
_output_shapes
: 
~
training/SGD/add_18Addfire4/expand3x3/kernel/readtraining/SGD/mul_74*'
_output_shapes
: *
T0
Ї
training/SGD/mul_75MulSGD/lr/readLtraining/SGD/gradients/fire4/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_37Subtraining/SGD/add_18training/SGD/mul_75*
T0*'
_output_shapes
: 
г
training/SGD/Assign_37Assignfire4/expand3x3/kerneltraining/SGD/sub_37*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@fire4/expand3x3/kernel
r
training/SGD/mul_76MulSGD/momentum/readtraining/SGD/Variable_19/read*
_output_shapes	
:*
T0

training/SGD/mul_77MulSGD/lr/read?training/SGD/gradients/fire4/expand3x3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
j
training/SGD/sub_38Subtraining/SGD/mul_76training/SGD/mul_77*
_output_shapes	
:*
T0
Ы
training/SGD/Assign_38Assigntraining/SGD/Variable_19training/SGD/sub_38*
T0*+
_class!
loc:@training/SGD/Variable_19*
validate_shape(*
_output_shapes	
:*
use_locking(
h
training/SGD/mul_78MulSGD/momentum/readtraining/SGD/sub_38*
T0*
_output_shapes	
:
p
training/SGD/add_19Addfire4/expand3x3/bias/readtraining/SGD/mul_78*
_output_shapes	
:*
T0

training/SGD/mul_79MulSGD/lr/read?training/SGD/gradients/fire4/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/SGD/sub_39Subtraining/SGD/add_19training/SGD/mul_79*
_output_shapes	
:*
T0
У
training/SGD/Assign_39Assignfire4/expand3x3/biastraining/SGD/sub_39*
use_locking(*
T0*'
_class
loc:@fire4/expand3x3/bias*
validate_shape(*
_output_shapes	
:
~
training/SGD/mul_80MulSGD/momentum/readtraining/SGD/Variable_20/read*'
_output_shapes
: *
T0
Ј
training/SGD/mul_81MulSGD/lr/readMtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
: *
T0
v
training/SGD/sub_40Subtraining/SGD/mul_80training/SGD/mul_81*
T0*'
_output_shapes
: 
з
training/SGD/Assign_40Assigntraining/SGD/Variable_20training/SGD/sub_40*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_20
t
training/SGD/mul_82MulSGD/momentum/readtraining/SGD/sub_40*
T0*'
_output_shapes
: 

training/SGD/add_20Addfire5/squeeze1x1/kernel/readtraining/SGD/mul_82*'
_output_shapes
: *
T0
Ј
training/SGD/mul_83MulSGD/lr/readMtraining/SGD/gradients/fire5/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_41Subtraining/SGD/add_20training/SGD/mul_83*
T0*'
_output_shapes
: 
е
training/SGD/Assign_41Assignfire5/squeeze1x1/kerneltraining/SGD/sub_41*
use_locking(*
T0**
_class 
loc:@fire5/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
: 
q
training/SGD/mul_84MulSGD/momentum/readtraining/SGD/Variable_21/read*
_output_shapes
: *
T0

training/SGD/mul_85MulSGD/lr/read@training/SGD/gradients/fire5/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/SGD/sub_42Subtraining/SGD/mul_84training/SGD/mul_85*
_output_shapes
: *
T0
Ъ
training/SGD/Assign_42Assigntraining/SGD/Variable_21training/SGD/sub_42*
T0*+
_class!
loc:@training/SGD/Variable_21*
validate_shape(*
_output_shapes
: *
use_locking(
g
training/SGD/mul_86MulSGD/momentum/readtraining/SGD/sub_42*
_output_shapes
: *
T0
p
training/SGD/add_21Addfire5/squeeze1x1/bias/readtraining/SGD/mul_86*
_output_shapes
: *
T0

training/SGD/mul_87MulSGD/lr/read@training/SGD/gradients/fire5/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
i
training/SGD/sub_43Subtraining/SGD/add_21training/SGD/mul_87*
_output_shapes
: *
T0
Ф
training/SGD/Assign_43Assignfire5/squeeze1x1/biastraining/SGD/sub_43*
use_locking(*
T0*(
_class
loc:@fire5/squeeze1x1/bias*
validate_shape(*
_output_shapes
: 
~
training/SGD/mul_88MulSGD/momentum/readtraining/SGD/Variable_22/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_89MulSGD/lr/readLtraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
: *
T0
v
training/SGD/sub_44Subtraining/SGD/mul_88training/SGD/mul_89*
T0*'
_output_shapes
: 
з
training/SGD/Assign_44Assigntraining/SGD/Variable_22training/SGD/sub_44*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_22*
validate_shape(*'
_output_shapes
: 
t
training/SGD/mul_90MulSGD/momentum/readtraining/SGD/sub_44*'
_output_shapes
: *
T0
~
training/SGD/add_22Addfire5/expand1x1/kernel/readtraining/SGD/mul_90*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_91MulSGD/lr/readLtraining/SGD/gradients/fire5/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
: *
T0
v
training/SGD/sub_45Subtraining/SGD/add_22training/SGD/mul_91*
T0*'
_output_shapes
: 
г
training/SGD/Assign_45Assignfire5/expand1x1/kerneltraining/SGD/sub_45*
T0*)
_class
loc:@fire5/expand1x1/kernel*
validate_shape(*'
_output_shapes
: *
use_locking(
r
training/SGD/mul_92MulSGD/momentum/readtraining/SGD/Variable_23/read*
T0*
_output_shapes	
:

training/SGD/mul_93MulSGD/lr/read?training/SGD/gradients/fire5/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/SGD/sub_46Subtraining/SGD/mul_92training/SGD/mul_93*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_46Assigntraining/SGD/Variable_23training/SGD/sub_46*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_23*
validate_shape(*
_output_shapes	
:
h
training/SGD/mul_94MulSGD/momentum/readtraining/SGD/sub_46*
T0*
_output_shapes	
:
p
training/SGD/add_23Addfire5/expand1x1/bias/readtraining/SGD/mul_94*
T0*
_output_shapes	
:

training/SGD/mul_95MulSGD/lr/read?training/SGD/gradients/fire5/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
j
training/SGD/sub_47Subtraining/SGD/add_23training/SGD/mul_95*
_output_shapes	
:*
T0
У
training/SGD/Assign_47Assignfire5/expand1x1/biastraining/SGD/sub_47*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire5/expand1x1/bias
~
training/SGD/mul_96MulSGD/momentum/readtraining/SGD/Variable_24/read*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_97MulSGD/lr/readLtraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
: 
v
training/SGD/sub_48Subtraining/SGD/mul_96training/SGD/mul_97*
T0*'
_output_shapes
: 
з
training/SGD/Assign_48Assigntraining/SGD/Variable_24training/SGD/sub_48*+
_class!
loc:@training/SGD/Variable_24*
validate_shape(*'
_output_shapes
: *
use_locking(*
T0
t
training/SGD/mul_98MulSGD/momentum/readtraining/SGD/sub_48*
T0*'
_output_shapes
: 
~
training/SGD/add_24Addfire5/expand3x3/kernel/readtraining/SGD/mul_98*
T0*'
_output_shapes
: 
Ї
training/SGD/mul_99MulSGD/lr/readLtraining/SGD/gradients/fire5/expand3x3/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
: *
T0
v
training/SGD/sub_49Subtraining/SGD/add_24training/SGD/mul_99*'
_output_shapes
: *
T0
г
training/SGD/Assign_49Assignfire5/expand3x3/kerneltraining/SGD/sub_49*
use_locking(*
T0*)
_class
loc:@fire5/expand3x3/kernel*
validate_shape(*'
_output_shapes
: 
s
training/SGD/mul_100MulSGD/momentum/readtraining/SGD/Variable_25/read*
_output_shapes	
:*
T0

training/SGD/mul_101MulSGD/lr/read?training/SGD/gradients/fire5/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/SGD/sub_50Subtraining/SGD/mul_100training/SGD/mul_101*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_50Assigntraining/SGD/Variable_25training/SGD/sub_50*
T0*+
_class!
loc:@training/SGD/Variable_25*
validate_shape(*
_output_shapes	
:*
use_locking(
i
training/SGD/mul_102MulSGD/momentum/readtraining/SGD/sub_50*
T0*
_output_shapes	
:
q
training/SGD/add_25Addfire5/expand3x3/bias/readtraining/SGD/mul_102*
T0*
_output_shapes	
:

training/SGD/mul_103MulSGD/lr/read?training/SGD/gradients/fire5/expand3x3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
k
training/SGD/sub_51Subtraining/SGD/add_25training/SGD/mul_103*
_output_shapes	
:*
T0
У
training/SGD/Assign_51Assignfire5/expand3x3/biastraining/SGD/sub_51*
use_locking(*
T0*'
_class
loc:@fire5/expand3x3/bias*
validate_shape(*
_output_shapes	
:

training/SGD/mul_104MulSGD/momentum/readtraining/SGD/Variable_26/read*
T0*'
_output_shapes
:0
Љ
training/SGD/mul_105MulSGD/lr/readMtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0
x
training/SGD/sub_52Subtraining/SGD/mul_104training/SGD/mul_105*'
_output_shapes
:0*
T0
з
training/SGD/Assign_52Assigntraining/SGD/Variable_26training/SGD/sub_52*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_26*
validate_shape(*'
_output_shapes
:0
u
training/SGD/mul_106MulSGD/momentum/readtraining/SGD/sub_52*
T0*'
_output_shapes
:0

training/SGD/add_26Addfire6/squeeze1x1/kernel/readtraining/SGD/mul_106*'
_output_shapes
:0*
T0
Љ
training/SGD/mul_107MulSGD/lr/readMtraining/SGD/gradients/fire6/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:0*
T0
w
training/SGD/sub_53Subtraining/SGD/add_26training/SGD/mul_107*
T0*'
_output_shapes
:0
е
training/SGD/Assign_53Assignfire6/squeeze1x1/kerneltraining/SGD/sub_53*
use_locking(*
T0**
_class 
loc:@fire6/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0
r
training/SGD/mul_108MulSGD/momentum/readtraining/SGD/Variable_27/read*
T0*
_output_shapes
:0

training/SGD/mul_109MulSGD/lr/read@training/SGD/gradients/fire6/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
k
training/SGD/sub_54Subtraining/SGD/mul_108training/SGD/mul_109*
T0*
_output_shapes
:0
Ъ
training/SGD/Assign_54Assigntraining/SGD/Variable_27training/SGD/sub_54*
_output_shapes
:0*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_27*
validate_shape(
h
training/SGD/mul_110MulSGD/momentum/readtraining/SGD/sub_54*
T0*
_output_shapes
:0
q
training/SGD/add_27Addfire6/squeeze1x1/bias/readtraining/SGD/mul_110*
_output_shapes
:0*
T0

training/SGD/mul_111MulSGD/lr/read@training/SGD/gradients/fire6/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
j
training/SGD/sub_55Subtraining/SGD/add_27training/SGD/mul_111*
_output_shapes
:0*
T0
Ф
training/SGD/Assign_55Assignfire6/squeeze1x1/biastraining/SGD/sub_55*
use_locking(*
T0*(
_class
loc:@fire6/squeeze1x1/bias*
validate_shape(*
_output_shapes
:0

training/SGD/mul_112MulSGD/momentum/readtraining/SGD/Variable_28/read*'
_output_shapes
:0Р*
T0
Ј
training/SGD/mul_113MulSGD/lr/readLtraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
x
training/SGD/sub_56Subtraining/SGD/mul_112training/SGD/mul_113*'
_output_shapes
:0Р*
T0
з
training/SGD/Assign_56Assigntraining/SGD/Variable_28training/SGD/sub_56*'
_output_shapes
:0Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_28*
validate_shape(
u
training/SGD/mul_114MulSGD/momentum/readtraining/SGD/sub_56*
T0*'
_output_shapes
:0Р

training/SGD/add_28Addfire6/expand1x1/kernel/readtraining/SGD/mul_114*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_115MulSGD/lr/readLtraining/SGD/gradients/fire6/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_57Subtraining/SGD/add_28training/SGD/mul_115*
T0*'
_output_shapes
:0Р
г
training/SGD/Assign_57Assignfire6/expand1x1/kerneltraining/SGD/sub_57*
use_locking(*
T0*)
_class
loc:@fire6/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р
s
training/SGD/mul_116MulSGD/momentum/readtraining/SGD/Variable_29/read*
T0*
_output_shapes	
:Р

training/SGD/mul_117MulSGD/lr/read?training/SGD/gradients/fire6/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
l
training/SGD/sub_58Subtraining/SGD/mul_116training/SGD/mul_117*
T0*
_output_shapes	
:Р
Ы
training/SGD/Assign_58Assigntraining/SGD/Variable_29training/SGD/sub_58*
T0*+
_class!
loc:@training/SGD/Variable_29*
validate_shape(*
_output_shapes	
:Р*
use_locking(
i
training/SGD/mul_118MulSGD/momentum/readtraining/SGD/sub_58*
T0*
_output_shapes	
:Р
q
training/SGD/add_29Addfire6/expand1x1/bias/readtraining/SGD/mul_118*
T0*
_output_shapes	
:Р

training/SGD/mul_119MulSGD/lr/read?training/SGD/gradients/fire6/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_59Subtraining/SGD/add_29training/SGD/mul_119*
_output_shapes	
:Р*
T0
У
training/SGD/Assign_59Assignfire6/expand1x1/biastraining/SGD/sub_59*
use_locking(*
T0*'
_class
loc:@fire6/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р

training/SGD/mul_120MulSGD/momentum/readtraining/SGD/Variable_30/read*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_121MulSGD/lr/readLtraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
x
training/SGD/sub_60Subtraining/SGD/mul_120training/SGD/mul_121*
T0*'
_output_shapes
:0Р
з
training/SGD/Assign_60Assigntraining/SGD/Variable_30training/SGD/sub_60*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_30*
validate_shape(*'
_output_shapes
:0Р
u
training/SGD/mul_122MulSGD/momentum/readtraining/SGD/sub_60*'
_output_shapes
:0Р*
T0

training/SGD/add_30Addfire6/expand3x3/kernel/readtraining/SGD/mul_122*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_123MulSGD/lr/readLtraining/SGD/gradients/fire6/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_61Subtraining/SGD/add_30training/SGD/mul_123*'
_output_shapes
:0Р*
T0
г
training/SGD/Assign_61Assignfire6/expand3x3/kerneltraining/SGD/sub_61*
use_locking(*
T0*)
_class
loc:@fire6/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р
s
training/SGD/mul_124MulSGD/momentum/readtraining/SGD/Variable_31/read*
T0*
_output_shapes	
:Р

training/SGD/mul_125MulSGD/lr/read?training/SGD/gradients/fire6/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
l
training/SGD/sub_62Subtraining/SGD/mul_124training/SGD/mul_125*
T0*
_output_shapes	
:Р
Ы
training/SGD/Assign_62Assigntraining/SGD/Variable_31training/SGD/sub_62*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_31*
validate_shape(*
_output_shapes	
:Р
i
training/SGD/mul_126MulSGD/momentum/readtraining/SGD/sub_62*
T0*
_output_shapes	
:Р
q
training/SGD/add_31Addfire6/expand3x3/bias/readtraining/SGD/mul_126*
T0*
_output_shapes	
:Р

training/SGD/mul_127MulSGD/lr/read?training/SGD/gradients/fire6/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_63Subtraining/SGD/add_31training/SGD/mul_127*
_output_shapes	
:Р*
T0
У
training/SGD/Assign_63Assignfire6/expand3x3/biastraining/SGD/sub_63*
validate_shape(*
_output_shapes	
:Р*
use_locking(*
T0*'
_class
loc:@fire6/expand3x3/bias

training/SGD/mul_128MulSGD/momentum/readtraining/SGD/Variable_32/read*
T0*'
_output_shapes
:0
Љ
training/SGD/mul_129MulSGD/lr/readMtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:0*
T0
x
training/SGD/sub_64Subtraining/SGD/mul_128training/SGD/mul_129*
T0*'
_output_shapes
:0
з
training/SGD/Assign_64Assigntraining/SGD/Variable_32training/SGD/sub_64*
T0*+
_class!
loc:@training/SGD/Variable_32*
validate_shape(*'
_output_shapes
:0*
use_locking(
u
training/SGD/mul_130MulSGD/momentum/readtraining/SGD/sub_64*
T0*'
_output_shapes
:0

training/SGD/add_32Addfire7/squeeze1x1/kernel/readtraining/SGD/mul_130*
T0*'
_output_shapes
:0
Љ
training/SGD/mul_131MulSGD/lr/readMtraining/SGD/gradients/fire7/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:0*
T0
w
training/SGD/sub_65Subtraining/SGD/add_32training/SGD/mul_131*
T0*'
_output_shapes
:0
е
training/SGD/Assign_65Assignfire7/squeeze1x1/kerneltraining/SGD/sub_65*
use_locking(*
T0**
_class 
loc:@fire7/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:0
r
training/SGD/mul_132MulSGD/momentum/readtraining/SGD/Variable_33/read*
T0*
_output_shapes
:0

training/SGD/mul_133MulSGD/lr/read@training/SGD/gradients/fire7/squeeze1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0*
T0
k
training/SGD/sub_66Subtraining/SGD/mul_132training/SGD/mul_133*
_output_shapes
:0*
T0
Ъ
training/SGD/Assign_66Assigntraining/SGD/Variable_33training/SGD/sub_66*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_33*
validate_shape(*
_output_shapes
:0
h
training/SGD/mul_134MulSGD/momentum/readtraining/SGD/sub_66*
T0*
_output_shapes
:0
q
training/SGD/add_33Addfire7/squeeze1x1/bias/readtraining/SGD/mul_134*
_output_shapes
:0*
T0

training/SGD/mul_135MulSGD/lr/read@training/SGD/gradients/fire7/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:0
j
training/SGD/sub_67Subtraining/SGD/add_33training/SGD/mul_135*
_output_shapes
:0*
T0
Ф
training/SGD/Assign_67Assignfire7/squeeze1x1/biastraining/SGD/sub_67*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*(
_class
loc:@fire7/squeeze1x1/bias

training/SGD/mul_136MulSGD/momentum/readtraining/SGD/Variable_34/read*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_137MulSGD/lr/readLtraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
x
training/SGD/sub_68Subtraining/SGD/mul_136training/SGD/mul_137*
T0*'
_output_shapes
:0Р
з
training/SGD/Assign_68Assigntraining/SGD/Variable_34training/SGD/sub_68*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_34*
validate_shape(*'
_output_shapes
:0Р
u
training/SGD/mul_138MulSGD/momentum/readtraining/SGD/sub_68*'
_output_shapes
:0Р*
T0

training/SGD/add_34Addfire7/expand1x1/kernel/readtraining/SGD/mul_138*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_139MulSGD/lr/readLtraining/SGD/gradients/fire7/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_69Subtraining/SGD/add_34training/SGD/mul_139*
T0*'
_output_shapes
:0Р
г
training/SGD/Assign_69Assignfire7/expand1x1/kerneltraining/SGD/sub_69*
use_locking(*
T0*)
_class
loc:@fire7/expand1x1/kernel*
validate_shape(*'
_output_shapes
:0Р
s
training/SGD/mul_140MulSGD/momentum/readtraining/SGD/Variable_35/read*
T0*
_output_shapes	
:Р

training/SGD/mul_141MulSGD/lr/read?training/SGD/gradients/fire7/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:Р*
T0
l
training/SGD/sub_70Subtraining/SGD/mul_140training/SGD/mul_141*
T0*
_output_shapes	
:Р
Ы
training/SGD/Assign_70Assigntraining/SGD/Variable_35training/SGD/sub_70*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_35*
validate_shape(*
_output_shapes	
:Р
i
training/SGD/mul_142MulSGD/momentum/readtraining/SGD/sub_70*
T0*
_output_shapes	
:Р
q
training/SGD/add_35Addfire7/expand1x1/bias/readtraining/SGD/mul_142*
T0*
_output_shapes	
:Р

training/SGD/mul_143MulSGD/lr/read?training/SGD/gradients/fire7/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_71Subtraining/SGD/add_35training/SGD/mul_143*
_output_shapes	
:Р*
T0
У
training/SGD/Assign_71Assignfire7/expand1x1/biastraining/SGD/sub_71*
use_locking(*
T0*'
_class
loc:@fire7/expand1x1/bias*
validate_shape(*
_output_shapes	
:Р

training/SGD/mul_144MulSGD/momentum/readtraining/SGD/Variable_36/read*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_145MulSGD/lr/readLtraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:0Р*
T0
x
training/SGD/sub_72Subtraining/SGD/mul_144training/SGD/mul_145*
T0*'
_output_shapes
:0Р
з
training/SGD/Assign_72Assigntraining/SGD/Variable_36training/SGD/sub_72*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_36*
validate_shape(*'
_output_shapes
:0Р
u
training/SGD/mul_146MulSGD/momentum/readtraining/SGD/sub_72*'
_output_shapes
:0Р*
T0

training/SGD/add_36Addfire7/expand3x3/kernel/readtraining/SGD/mul_146*
T0*'
_output_shapes
:0Р
Ј
training/SGD/mul_147MulSGD/lr/readLtraining/SGD/gradients/fire7/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:0Р
w
training/SGD/sub_73Subtraining/SGD/add_36training/SGD/mul_147*'
_output_shapes
:0Р*
T0
г
training/SGD/Assign_73Assignfire7/expand3x3/kerneltraining/SGD/sub_73*
use_locking(*
T0*)
_class
loc:@fire7/expand3x3/kernel*
validate_shape(*'
_output_shapes
:0Р
s
training/SGD/mul_148MulSGD/momentum/readtraining/SGD/Variable_37/read*
_output_shapes	
:Р*
T0

training/SGD/mul_149MulSGD/lr/read?training/SGD/gradients/fire7/expand3x3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:Р*
T0
l
training/SGD/sub_74Subtraining/SGD/mul_148training/SGD/mul_149*
T0*
_output_shapes	
:Р
Ы
training/SGD/Assign_74Assigntraining/SGD/Variable_37training/SGD/sub_74*
_output_shapes	
:Р*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_37*
validate_shape(
i
training/SGD/mul_150MulSGD/momentum/readtraining/SGD/sub_74*
T0*
_output_shapes	
:Р
q
training/SGD/add_37Addfire7/expand3x3/bias/readtraining/SGD/mul_150*
T0*
_output_shapes	
:Р

training/SGD/mul_151MulSGD/lr/read?training/SGD/gradients/fire7/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:Р
k
training/SGD/sub_75Subtraining/SGD/add_37training/SGD/mul_151*
T0*
_output_shapes	
:Р
У
training/SGD/Assign_75Assignfire7/expand3x3/biastraining/SGD/sub_75*
use_locking(*
T0*'
_class
loc:@fire7/expand3x3/bias*
validate_shape(*
_output_shapes	
:Р

training/SGD/mul_152MulSGD/momentum/readtraining/SGD/Variable_38/read*
T0*'
_output_shapes
:@
Љ
training/SGD/mul_153MulSGD/lr/readMtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
x
training/SGD/sub_76Subtraining/SGD/mul_152training/SGD/mul_153*
T0*'
_output_shapes
:@
з
training/SGD/Assign_76Assigntraining/SGD/Variable_38training/SGD/sub_76*
T0*+
_class!
loc:@training/SGD/Variable_38*
validate_shape(*'
_output_shapes
:@*
use_locking(
u
training/SGD/mul_154MulSGD/momentum/readtraining/SGD/sub_76*
T0*'
_output_shapes
:@

training/SGD/add_38Addfire8/squeeze1x1/kernel/readtraining/SGD/mul_154*
T0*'
_output_shapes
:@
Љ
training/SGD/mul_155MulSGD/lr/readMtraining/SGD/gradients/fire8/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
w
training/SGD/sub_77Subtraining/SGD/add_38training/SGD/mul_155*
T0*'
_output_shapes
:@
е
training/SGD/Assign_77Assignfire8/squeeze1x1/kerneltraining/SGD/sub_77*
use_locking(*
T0**
_class 
loc:@fire8/squeeze1x1/kernel*
validate_shape(*'
_output_shapes
:@
r
training/SGD/mul_156MulSGD/momentum/readtraining/SGD/Variable_39/read*
_output_shapes
:@*
T0

training/SGD/mul_157MulSGD/lr/read@training/SGD/gradients/fire8/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
k
training/SGD/sub_78Subtraining/SGD/mul_156training/SGD/mul_157*
_output_shapes
:@*
T0
Ъ
training/SGD/Assign_78Assigntraining/SGD/Variable_39training/SGD/sub_78*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_39
h
training/SGD/mul_158MulSGD/momentum/readtraining/SGD/sub_78*
T0*
_output_shapes
:@
q
training/SGD/add_39Addfire8/squeeze1x1/bias/readtraining/SGD/mul_158*
_output_shapes
:@*
T0

training/SGD/mul_159MulSGD/lr/read@training/SGD/gradients/fire8/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
j
training/SGD/sub_79Subtraining/SGD/add_39training/SGD/mul_159*
_output_shapes
:@*
T0
Ф
training/SGD/Assign_79Assignfire8/squeeze1x1/biastraining/SGD/sub_79*
T0*(
_class
loc:@fire8/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(

training/SGD/mul_160MulSGD/momentum/readtraining/SGD/Variable_40/read*'
_output_shapes
:@*
T0
Ј
training/SGD/mul_161MulSGD/lr/readLtraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
x
training/SGD/sub_80Subtraining/SGD/mul_160training/SGD/mul_161*'
_output_shapes
:@*
T0
з
training/SGD/Assign_80Assigntraining/SGD/Variable_40training/SGD/sub_80*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_40*
validate_shape(*'
_output_shapes
:@
u
training/SGD/mul_162MulSGD/momentum/readtraining/SGD/sub_80*
T0*'
_output_shapes
:@

training/SGD/add_40Addfire8/expand1x1/kernel/readtraining/SGD/mul_162*'
_output_shapes
:@*
T0
Ј
training/SGD/mul_163MulSGD/lr/readLtraining/SGD/gradients/fire8/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_81Subtraining/SGD/add_40training/SGD/mul_163*
T0*'
_output_shapes
:@
г
training/SGD/Assign_81Assignfire8/expand1x1/kerneltraining/SGD/sub_81*)
_class
loc:@fire8/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0
s
training/SGD/mul_164MulSGD/momentum/readtraining/SGD/Variable_41/read*
_output_shapes	
:*
T0

training/SGD/mul_165MulSGD/lr/read?training/SGD/gradients/fire8/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/SGD/sub_82Subtraining/SGD/mul_164training/SGD/mul_165*
T0*
_output_shapes	
:
Ы
training/SGD/Assign_82Assigntraining/SGD/Variable_41training/SGD/sub_82*+
_class!
loc:@training/SGD/Variable_41*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
i
training/SGD/mul_166MulSGD/momentum/readtraining/SGD/sub_82*
_output_shapes	
:*
T0
q
training/SGD/add_41Addfire8/expand1x1/bias/readtraining/SGD/mul_166*
_output_shapes	
:*
T0

training/SGD/mul_167MulSGD/lr/read?training/SGD/gradients/fire8/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
k
training/SGD/sub_83Subtraining/SGD/add_41training/SGD/mul_167*
T0*
_output_shapes	
:
У
training/SGD/Assign_83Assignfire8/expand1x1/biastraining/SGD/sub_83*
use_locking(*
T0*'
_class
loc:@fire8/expand1x1/bias*
validate_shape(*
_output_shapes	
:

training/SGD/mul_168MulSGD/momentum/readtraining/SGD/Variable_42/read*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_169MulSGD/lr/readLtraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
x
training/SGD/sub_84Subtraining/SGD/mul_168training/SGD/mul_169*
T0*'
_output_shapes
:@
з
training/SGD/Assign_84Assigntraining/SGD/Variable_42training/SGD/sub_84*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_42*
validate_shape(*'
_output_shapes
:@
u
training/SGD/mul_170MulSGD/momentum/readtraining/SGD/sub_84*
T0*'
_output_shapes
:@

training/SGD/add_42Addfire8/expand3x3/kernel/readtraining/SGD/mul_170*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_171MulSGD/lr/readLtraining/SGD/gradients/fire8/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_85Subtraining/SGD/add_42training/SGD/mul_171*
T0*'
_output_shapes
:@
г
training/SGD/Assign_85Assignfire8/expand3x3/kerneltraining/SGD/sub_85*
T0*)
_class
loc:@fire8/expand3x3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
s
training/SGD/mul_172MulSGD/momentum/readtraining/SGD/Variable_43/read*
T0*
_output_shapes	
:

training/SGD/mul_173MulSGD/lr/read?training/SGD/gradients/fire8/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/SGD/sub_86Subtraining/SGD/mul_172training/SGD/mul_173*
_output_shapes	
:*
T0
Ы
training/SGD/Assign_86Assigntraining/SGD/Variable_43training/SGD/sub_86*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_43*
validate_shape(*
_output_shapes	
:
i
training/SGD/mul_174MulSGD/momentum/readtraining/SGD/sub_86*
T0*
_output_shapes	
:
q
training/SGD/add_43Addfire8/expand3x3/bias/readtraining/SGD/mul_174*
T0*
_output_shapes	
:

training/SGD/mul_175MulSGD/lr/read?training/SGD/gradients/fire8/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
k
training/SGD/sub_87Subtraining/SGD/add_43training/SGD/mul_175*
T0*
_output_shapes	
:
У
training/SGD/Assign_87Assignfire8/expand3x3/biastraining/SGD/sub_87*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*'
_class
loc:@fire8/expand3x3/bias

training/SGD/mul_176MulSGD/momentum/readtraining/SGD/Variable_44/read*
T0*'
_output_shapes
:@
Љ
training/SGD/mul_177MulSGD/lr/readMtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:@*
T0
x
training/SGD/sub_88Subtraining/SGD/mul_176training/SGD/mul_177*'
_output_shapes
:@*
T0
з
training/SGD/Assign_88Assigntraining/SGD/Variable_44training/SGD/sub_88*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_44*
validate_shape(*'
_output_shapes
:@
u
training/SGD/mul_178MulSGD/momentum/readtraining/SGD/sub_88*
T0*'
_output_shapes
:@

training/SGD/add_44Addfire9/squeeze1x1/kernel/readtraining/SGD/mul_178*'
_output_shapes
:@*
T0
Љ
training/SGD/mul_179MulSGD/lr/readMtraining/SGD/gradients/fire9/squeeze1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_89Subtraining/SGD/add_44training/SGD/mul_179*
T0*'
_output_shapes
:@
е
training/SGD/Assign_89Assignfire9/squeeze1x1/kerneltraining/SGD/sub_89*'
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@fire9/squeeze1x1/kernel*
validate_shape(
r
training/SGD/mul_180MulSGD/momentum/readtraining/SGD/Variable_45/read*
T0*
_output_shapes
:@

training/SGD/mul_181MulSGD/lr/read@training/SGD/gradients/fire9/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
k
training/SGD/sub_90Subtraining/SGD/mul_180training/SGD/mul_181*
T0*
_output_shapes
:@
Ъ
training/SGD/Assign_90Assigntraining/SGD/Variable_45training/SGD/sub_90*
T0*+
_class!
loc:@training/SGD/Variable_45*
validate_shape(*
_output_shapes
:@*
use_locking(
h
training/SGD/mul_182MulSGD/momentum/readtraining/SGD/sub_90*
_output_shapes
:@*
T0
q
training/SGD/add_45Addfire9/squeeze1x1/bias/readtraining/SGD/mul_182*
T0*
_output_shapes
:@

training/SGD/mul_183MulSGD/lr/read@training/SGD/gradients/fire9/squeeze1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
j
training/SGD/sub_91Subtraining/SGD/add_45training/SGD/mul_183*
T0*
_output_shapes
:@
Ф
training/SGD/Assign_91Assignfire9/squeeze1x1/biastraining/SGD/sub_91*
use_locking(*
T0*(
_class
loc:@fire9/squeeze1x1/bias*
validate_shape(*
_output_shapes
:@

training/SGD/mul_184MulSGD/momentum/readtraining/SGD/Variable_46/read*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_185MulSGD/lr/readLtraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
x
training/SGD/sub_92Subtraining/SGD/mul_184training/SGD/mul_185*'
_output_shapes
:@*
T0
з
training/SGD/Assign_92Assigntraining/SGD/Variable_46training/SGD/sub_92*+
_class!
loc:@training/SGD/Variable_46*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0
u
training/SGD/mul_186MulSGD/momentum/readtraining/SGD/sub_92*
T0*'
_output_shapes
:@

training/SGD/add_46Addfire9/expand1x1/kernel/readtraining/SGD/mul_186*
T0*'
_output_shapes
:@
Ј
training/SGD/mul_187MulSGD/lr/readLtraining/SGD/gradients/fire9/expand1x1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_93Subtraining/SGD/add_46training/SGD/mul_187*
T0*'
_output_shapes
:@
г
training/SGD/Assign_93Assignfire9/expand1x1/kerneltraining/SGD/sub_93*
T0*)
_class
loc:@fire9/expand1x1/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
s
training/SGD/mul_188MulSGD/momentum/readtraining/SGD/Variable_47/read*
_output_shapes	
:*
T0

training/SGD/mul_189MulSGD/lr/read?training/SGD/gradients/fire9/expand1x1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
l
training/SGD/sub_94Subtraining/SGD/mul_188training/SGD/mul_189*
_output_shapes	
:*
T0
Ы
training/SGD/Assign_94Assigntraining/SGD/Variable_47training/SGD/sub_94*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_47*
validate_shape(*
_output_shapes	
:
i
training/SGD/mul_190MulSGD/momentum/readtraining/SGD/sub_94*
T0*
_output_shapes	
:
q
training/SGD/add_47Addfire9/expand1x1/bias/readtraining/SGD/mul_190*
_output_shapes	
:*
T0

training/SGD/mul_191MulSGD/lr/read?training/SGD/gradients/fire9/expand1x1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
k
training/SGD/sub_95Subtraining/SGD/add_47training/SGD/mul_191*
_output_shapes	
:*
T0
У
training/SGD/Assign_95Assignfire9/expand1x1/biastraining/SGD/sub_95*
use_locking(*
T0*'
_class
loc:@fire9/expand1x1/bias*
validate_shape(*
_output_shapes	
:

training/SGD/mul_192MulSGD/momentum/readtraining/SGD/Variable_48/read*'
_output_shapes
:@*
T0
Ј
training/SGD/mul_193MulSGD/lr/readLtraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
x
training/SGD/sub_96Subtraining/SGD/mul_192training/SGD/mul_193*
T0*'
_output_shapes
:@
з
training/SGD/Assign_96Assigntraining/SGD/Variable_48training/SGD/sub_96*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_48*
validate_shape(*'
_output_shapes
:@
u
training/SGD/mul_194MulSGD/momentum/readtraining/SGD/sub_96*
T0*'
_output_shapes
:@

training/SGD/add_48Addfire9/expand3x3/kernel/readtraining/SGD/mul_194*'
_output_shapes
:@*
T0
Ј
training/SGD/mul_195MulSGD/lr/readLtraining/SGD/gradients/fire9/expand3x3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
w
training/SGD/sub_97Subtraining/SGD/add_48training/SGD/mul_195*
T0*'
_output_shapes
:@
г
training/SGD/Assign_97Assignfire9/expand3x3/kerneltraining/SGD/sub_97*'
_output_shapes
:@*
use_locking(*
T0*)
_class
loc:@fire9/expand3x3/kernel*
validate_shape(
s
training/SGD/mul_196MulSGD/momentum/readtraining/SGD/Variable_49/read*
T0*
_output_shapes	
:

training/SGD/mul_197MulSGD/lr/read?training/SGD/gradients/fire9/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
l
training/SGD/sub_98Subtraining/SGD/mul_196training/SGD/mul_197*
_output_shapes	
:*
T0
Ы
training/SGD/Assign_98Assigntraining/SGD/Variable_49training/SGD/sub_98*
_output_shapes	
:*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_49*
validate_shape(
i
training/SGD/mul_198MulSGD/momentum/readtraining/SGD/sub_98*
T0*
_output_shapes	
:
q
training/SGD/add_49Addfire9/expand3x3/bias/readtraining/SGD/mul_198*
T0*
_output_shapes	
:

training/SGD/mul_199MulSGD/lr/read?training/SGD/gradients/fire9/expand3x3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
k
training/SGD/sub_99Subtraining/SGD/add_49training/SGD/mul_199*
_output_shapes	
:*
T0
У
training/SGD/Assign_99Assignfire9/expand3x3/biastraining/SGD/sub_99*
use_locking(*
T0*'
_class
loc:@fire9/expand3x3/bias*
validate_shape(*
_output_shapes	
:

training/SGD/mul_200MulSGD/momentum/readtraining/SGD/Variable_50/read*
T0*'
_output_shapes
:

Ё
training/SGD/mul_201MulSGD/lr/readEtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropFilter*'
_output_shapes
:
*
T0
y
training/SGD/sub_100Subtraining/SGD/mul_200training/SGD/mul_201*
T0*'
_output_shapes
:

й
training/SGD/Assign_100Assigntraining/SGD/Variable_50training/SGD/sub_100*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_50*
validate_shape(*'
_output_shapes
:

v
training/SGD/mul_202MulSGD/momentum/readtraining/SGD/sub_100*
T0*'
_output_shapes
:

x
training/SGD/add_50Addconv10_1/kernel/readtraining/SGD/mul_202*
T0*'
_output_shapes
:

Ё
training/SGD/mul_203MulSGD/lr/readEtraining/SGD/gradients/conv10_1/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:

x
training/SGD/sub_101Subtraining/SGD/add_50training/SGD/mul_203*
T0*'
_output_shapes
:

Ч
training/SGD/Assign_101Assignconv10_1/kerneltraining/SGD/sub_101*'
_output_shapes
:
*
use_locking(*
T0*"
_class
loc:@conv10_1/kernel*
validate_shape(
r
training/SGD/mul_204MulSGD/momentum/readtraining/SGD/Variable_51/read*
T0*
_output_shapes
:


training/SGD/mul_205MulSGD/lr/read8training/SGD/gradients/conv10_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
l
training/SGD/sub_102Subtraining/SGD/mul_204training/SGD/mul_205*
_output_shapes
:
*
T0
Ь
training/SGD/Assign_102Assigntraining/SGD/Variable_51training/SGD/sub_102*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*+
_class!
loc:@training/SGD/Variable_51
i
training/SGD/mul_206MulSGD/momentum/readtraining/SGD/sub_102*
T0*
_output_shapes
:

i
training/SGD/add_51Addconv10_1/bias/readtraining/SGD/mul_206*
T0*
_output_shapes
:


training/SGD/mul_207MulSGD/lr/read8training/SGD/gradients/conv10_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

k
training/SGD/sub_103Subtraining/SGD/add_51training/SGD/mul_207*
T0*
_output_shapes
:

Ж
training/SGD/Assign_103Assignconv10_1/biastraining/SGD/sub_103*
_output_shapes
:
*
use_locking(*
T0* 
_class
loc:@conv10_1/bias*
validate_shape(
є
training/group_depsNoOp^loss_2/mul^metrics/acc/Mean^training/SGD/Assign^training/SGD/AssignAdd^training/SGD/Assign_1^training/SGD/Assign_10^training/SGD/Assign_100^training/SGD/Assign_101^training/SGD/Assign_102^training/SGD/Assign_103^training/SGD/Assign_11^training/SGD/Assign_12^training/SGD/Assign_13^training/SGD/Assign_14^training/SGD/Assign_15^training/SGD/Assign_16^training/SGD/Assign_17^training/SGD/Assign_18^training/SGD/Assign_19^training/SGD/Assign_2^training/SGD/Assign_20^training/SGD/Assign_21^training/SGD/Assign_22^training/SGD/Assign_23^training/SGD/Assign_24^training/SGD/Assign_25^training/SGD/Assign_26^training/SGD/Assign_27^training/SGD/Assign_28^training/SGD/Assign_29^training/SGD/Assign_3^training/SGD/Assign_30^training/SGD/Assign_31^training/SGD/Assign_32^training/SGD/Assign_33^training/SGD/Assign_34^training/SGD/Assign_35^training/SGD/Assign_36^training/SGD/Assign_37^training/SGD/Assign_38^training/SGD/Assign_39^training/SGD/Assign_4^training/SGD/Assign_40^training/SGD/Assign_41^training/SGD/Assign_42^training/SGD/Assign_43^training/SGD/Assign_44^training/SGD/Assign_45^training/SGD/Assign_46^training/SGD/Assign_47^training/SGD/Assign_48^training/SGD/Assign_49^training/SGD/Assign_5^training/SGD/Assign_50^training/SGD/Assign_51^training/SGD/Assign_52^training/SGD/Assign_53^training/SGD/Assign_54^training/SGD/Assign_55^training/SGD/Assign_56^training/SGD/Assign_57^training/SGD/Assign_58^training/SGD/Assign_59^training/SGD/Assign_6^training/SGD/Assign_60^training/SGD/Assign_61^training/SGD/Assign_62^training/SGD/Assign_63^training/SGD/Assign_64^training/SGD/Assign_65^training/SGD/Assign_66^training/SGD/Assign_67^training/SGD/Assign_68^training/SGD/Assign_69^training/SGD/Assign_7^training/SGD/Assign_70^training/SGD/Assign_71^training/SGD/Assign_72^training/SGD/Assign_73^training/SGD/Assign_74^training/SGD/Assign_75^training/SGD/Assign_76^training/SGD/Assign_77^training/SGD/Assign_78^training/SGD/Assign_79^training/SGD/Assign_8^training/SGD/Assign_80^training/SGD/Assign_81^training/SGD/Assign_82^training/SGD/Assign_83^training/SGD/Assign_84^training/SGD/Assign_85^training/SGD/Assign_86^training/SGD/Assign_87^training/SGD/Assign_88^training/SGD/Assign_89^training/SGD/Assign_9^training/SGD/Assign_90^training/SGD/Assign_91^training/SGD/Assign_92^training/SGD/Assign_93^training/SGD/Assign_94^training/SGD/Assign_95^training/SGD/Assign_96^training/SGD/Assign_97^training/SGD/Assign_98^training/SGD/Assign_99

IsVariableInitialized_52IsVariableInitializedconv10_1/kernel*"
_class
loc:@conv10_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_53IsVariableInitializedconv10_1/bias* 
_class
loc:@conv10_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_54IsVariableInitializedSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
y
IsVariableInitialized_55IsVariableInitializedSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

IsVariableInitialized_56IsVariableInitializedSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

IsVariableInitialized_57IsVariableInitialized	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 

IsVariableInitialized_58IsVariableInitializedtraining/SGD/Variable*(
_class
loc:@training/SGD/Variable*
dtype0*
_output_shapes
: 

IsVariableInitialized_59IsVariableInitializedtraining/SGD/Variable_1**
_class 
loc:@training/SGD/Variable_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_60IsVariableInitializedtraining/SGD/Variable_2**
_class 
loc:@training/SGD/Variable_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_61IsVariableInitializedtraining/SGD/Variable_3**
_class 
loc:@training/SGD/Variable_3*
dtype0*
_output_shapes
: 

IsVariableInitialized_62IsVariableInitializedtraining/SGD/Variable_4**
_class 
loc:@training/SGD/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_63IsVariableInitializedtraining/SGD/Variable_5**
_class 
loc:@training/SGD/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_64IsVariableInitializedtraining/SGD/Variable_6**
_class 
loc:@training/SGD/Variable_6*
dtype0*
_output_shapes
: 

IsVariableInitialized_65IsVariableInitializedtraining/SGD/Variable_7**
_class 
loc:@training/SGD/Variable_7*
dtype0*
_output_shapes
: 

IsVariableInitialized_66IsVariableInitializedtraining/SGD/Variable_8*
dtype0*
_output_shapes
: **
_class 
loc:@training/SGD/Variable_8

IsVariableInitialized_67IsVariableInitializedtraining/SGD/Variable_9*
_output_shapes
: **
_class 
loc:@training/SGD/Variable_9*
dtype0

IsVariableInitialized_68IsVariableInitializedtraining/SGD/Variable_10*+
_class!
loc:@training/SGD/Variable_10*
dtype0*
_output_shapes
: 

IsVariableInitialized_69IsVariableInitializedtraining/SGD/Variable_11*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_11

IsVariableInitialized_70IsVariableInitializedtraining/SGD/Variable_12*+
_class!
loc:@training/SGD/Variable_12*
dtype0*
_output_shapes
: 

IsVariableInitialized_71IsVariableInitializedtraining/SGD/Variable_13*+
_class!
loc:@training/SGD/Variable_13*
dtype0*
_output_shapes
: 

IsVariableInitialized_72IsVariableInitializedtraining/SGD/Variable_14*+
_class!
loc:@training/SGD/Variable_14*
dtype0*
_output_shapes
: 

IsVariableInitialized_73IsVariableInitializedtraining/SGD/Variable_15*+
_class!
loc:@training/SGD/Variable_15*
dtype0*
_output_shapes
: 

IsVariableInitialized_74IsVariableInitializedtraining/SGD/Variable_16*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_16

IsVariableInitialized_75IsVariableInitializedtraining/SGD/Variable_17*+
_class!
loc:@training/SGD/Variable_17*
dtype0*
_output_shapes
: 

IsVariableInitialized_76IsVariableInitializedtraining/SGD/Variable_18*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_18*
dtype0

IsVariableInitialized_77IsVariableInitializedtraining/SGD/Variable_19*+
_class!
loc:@training/SGD/Variable_19*
dtype0*
_output_shapes
: 

IsVariableInitialized_78IsVariableInitializedtraining/SGD/Variable_20*+
_class!
loc:@training/SGD/Variable_20*
dtype0*
_output_shapes
: 

IsVariableInitialized_79IsVariableInitializedtraining/SGD/Variable_21*+
_class!
loc:@training/SGD/Variable_21*
dtype0*
_output_shapes
: 

IsVariableInitialized_80IsVariableInitializedtraining/SGD/Variable_22*+
_class!
loc:@training/SGD/Variable_22*
dtype0*
_output_shapes
: 

IsVariableInitialized_81IsVariableInitializedtraining/SGD/Variable_23*+
_class!
loc:@training/SGD/Variable_23*
dtype0*
_output_shapes
: 

IsVariableInitialized_82IsVariableInitializedtraining/SGD/Variable_24*+
_class!
loc:@training/SGD/Variable_24*
dtype0*
_output_shapes
: 

IsVariableInitialized_83IsVariableInitializedtraining/SGD/Variable_25*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_25

IsVariableInitialized_84IsVariableInitializedtraining/SGD/Variable_26*+
_class!
loc:@training/SGD/Variable_26*
dtype0*
_output_shapes
: 

IsVariableInitialized_85IsVariableInitializedtraining/SGD/Variable_27*+
_class!
loc:@training/SGD/Variable_27*
dtype0*
_output_shapes
: 

IsVariableInitialized_86IsVariableInitializedtraining/SGD/Variable_28*+
_class!
loc:@training/SGD/Variable_28*
dtype0*
_output_shapes
: 

IsVariableInitialized_87IsVariableInitializedtraining/SGD/Variable_29*+
_class!
loc:@training/SGD/Variable_29*
dtype0*
_output_shapes
: 

IsVariableInitialized_88IsVariableInitializedtraining/SGD/Variable_30*+
_class!
loc:@training/SGD/Variable_30*
dtype0*
_output_shapes
: 

IsVariableInitialized_89IsVariableInitializedtraining/SGD/Variable_31*+
_class!
loc:@training/SGD/Variable_31*
dtype0*
_output_shapes
: 

IsVariableInitialized_90IsVariableInitializedtraining/SGD/Variable_32*+
_class!
loc:@training/SGD/Variable_32*
dtype0*
_output_shapes
: 

IsVariableInitialized_91IsVariableInitializedtraining/SGD/Variable_33*+
_class!
loc:@training/SGD/Variable_33*
dtype0*
_output_shapes
: 

IsVariableInitialized_92IsVariableInitializedtraining/SGD/Variable_34*+
_class!
loc:@training/SGD/Variable_34*
dtype0*
_output_shapes
: 

IsVariableInitialized_93IsVariableInitializedtraining/SGD/Variable_35*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_35

IsVariableInitialized_94IsVariableInitializedtraining/SGD/Variable_36*+
_class!
loc:@training/SGD/Variable_36*
dtype0*
_output_shapes
: 

IsVariableInitialized_95IsVariableInitializedtraining/SGD/Variable_37*+
_class!
loc:@training/SGD/Variable_37*
dtype0*
_output_shapes
: 

IsVariableInitialized_96IsVariableInitializedtraining/SGD/Variable_38*+
_class!
loc:@training/SGD/Variable_38*
dtype0*
_output_shapes
: 

IsVariableInitialized_97IsVariableInitializedtraining/SGD/Variable_39*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_39

IsVariableInitialized_98IsVariableInitializedtraining/SGD/Variable_40*
dtype0*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_40

IsVariableInitialized_99IsVariableInitializedtraining/SGD/Variable_41*+
_class!
loc:@training/SGD/Variable_41*
dtype0*
_output_shapes
: 

IsVariableInitialized_100IsVariableInitializedtraining/SGD/Variable_42*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_42*
dtype0

IsVariableInitialized_101IsVariableInitializedtraining/SGD/Variable_43*+
_class!
loc:@training/SGD/Variable_43*
dtype0*
_output_shapes
: 

IsVariableInitialized_102IsVariableInitializedtraining/SGD/Variable_44*+
_class!
loc:@training/SGD/Variable_44*
dtype0*
_output_shapes
: 

IsVariableInitialized_103IsVariableInitializedtraining/SGD/Variable_45*
_output_shapes
: *+
_class!
loc:@training/SGD/Variable_45*
dtype0

IsVariableInitialized_104IsVariableInitializedtraining/SGD/Variable_46*+
_class!
loc:@training/SGD/Variable_46*
dtype0*
_output_shapes
: 

IsVariableInitialized_105IsVariableInitializedtraining/SGD/Variable_47*+
_class!
loc:@training/SGD/Variable_47*
dtype0*
_output_shapes
: 

IsVariableInitialized_106IsVariableInitializedtraining/SGD/Variable_48*+
_class!
loc:@training/SGD/Variable_48*
dtype0*
_output_shapes
: 

IsVariableInitialized_107IsVariableInitializedtraining/SGD/Variable_49*+
_class!
loc:@training/SGD/Variable_49*
dtype0*
_output_shapes
: 

IsVariableInitialized_108IsVariableInitializedtraining/SGD/Variable_50*+
_class!
loc:@training/SGD/Variable_50*
dtype0*
_output_shapes
: 

IsVariableInitialized_109IsVariableInitializedtraining/SGD/Variable_51*+
_class!
loc:@training/SGD/Variable_51*
dtype0*
_output_shapes
: 
ы
init_1NoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^conv10_1/bias/Assign^conv10_1/kernel/Assign^training/SGD/Variable/Assign^training/SGD/Variable_1/Assign ^training/SGD/Variable_10/Assign ^training/SGD/Variable_11/Assign ^training/SGD/Variable_12/Assign ^training/SGD/Variable_13/Assign ^training/SGD/Variable_14/Assign ^training/SGD/Variable_15/Assign ^training/SGD/Variable_16/Assign ^training/SGD/Variable_17/Assign ^training/SGD/Variable_18/Assign ^training/SGD/Variable_19/Assign^training/SGD/Variable_2/Assign ^training/SGD/Variable_20/Assign ^training/SGD/Variable_21/Assign ^training/SGD/Variable_22/Assign ^training/SGD/Variable_23/Assign ^training/SGD/Variable_24/Assign ^training/SGD/Variable_25/Assign ^training/SGD/Variable_26/Assign ^training/SGD/Variable_27/Assign ^training/SGD/Variable_28/Assign ^training/SGD/Variable_29/Assign^training/SGD/Variable_3/Assign ^training/SGD/Variable_30/Assign ^training/SGD/Variable_31/Assign ^training/SGD/Variable_32/Assign ^training/SGD/Variable_33/Assign ^training/SGD/Variable_34/Assign ^training/SGD/Variable_35/Assign ^training/SGD/Variable_36/Assign ^training/SGD/Variable_37/Assign ^training/SGD/Variable_38/Assign ^training/SGD/Variable_39/Assign^training/SGD/Variable_4/Assign ^training/SGD/Variable_40/Assign ^training/SGD/Variable_41/Assign ^training/SGD/Variable_42/Assign ^training/SGD/Variable_43/Assign ^training/SGD/Variable_44/Assign ^training/SGD/Variable_45/Assign ^training/SGD/Variable_46/Assign ^training/SGD/Variable_47/Assign ^training/SGD/Variable_48/Assign ^training/SGD/Variable_49/Assign^training/SGD/Variable_5/Assign ^training/SGD/Variable_50/Assign ^training/SGD/Variable_51/Assign^training/SGD/Variable_6/Assign^training/SGD/Variable_7/Assign^training/SGD/Variable_8/Assign^training/SGD/Variable_9/Assign""џ
cond_contextюы
Э
drop9/cond/cond_textdrop9/cond/pred_id:0drop9/cond/switch_t:0 *
drop9/cond/dropout/Floor:0
drop9/cond/dropout/Shape:0
drop9/cond/dropout/add:0
drop9/cond/dropout/div:0
drop9/cond/dropout/keep_prob:0
drop9/cond/dropout/mul:0
1drop9/cond/dropout/random_uniform/RandomUniform:0
'drop9/cond/dropout/random_uniform/max:0
'drop9/cond/dropout/random_uniform/min:0
'drop9/cond/dropout/random_uniform/mul:0
'drop9/cond/dropout/random_uniform/sub:0
#drop9/cond/dropout/random_uniform:0
drop9/cond/mul/Switch:1
drop9/cond/mul/y:0
drop9/cond/mul:0
drop9/cond/pred_id:0
drop9/cond/switch_t:0
fire9/concat/concat:00
fire9/concat/concat:0drop9/cond/mul/Switch:1,
drop9/cond/pred_id:0drop9/cond/pred_id:0

drop9/cond/cond_text_1drop9/cond/pred_id:0drop9/cond/switch_f:0*а
drop9/cond/Switch_1:0
drop9/cond/Switch_1:1
drop9/cond/pred_id:0
drop9/cond/switch_f:0
fire9/concat/concat:0,
drop9/cond/pred_id:0drop9/cond/pred_id:0.
fire9/concat/concat:0drop9/cond/Switch_1:0"Јe
	variablesee
T
conv1/kernel:0conv1/kernel/Assignconv1/kernel/read:02conv1/random_uniform:08
E
conv1/bias:0conv1/bias/Assignconv1/bias/read:02conv1/Const:08

fire2/squeeze1x1/kernel:0fire2/squeeze1x1/kernel/Assignfire2/squeeze1x1/kernel/read:02!fire2/squeeze1x1/random_uniform:08
q
fire2/squeeze1x1/bias:0fire2/squeeze1x1/bias/Assignfire2/squeeze1x1/bias/read:02fire2/squeeze1x1/Const:08
|
fire2/expand1x1/kernel:0fire2/expand1x1/kernel/Assignfire2/expand1x1/kernel/read:02 fire2/expand1x1/random_uniform:08
m
fire2/expand1x1/bias:0fire2/expand1x1/bias/Assignfire2/expand1x1/bias/read:02fire2/expand1x1/Const:08
|
fire2/expand3x3/kernel:0fire2/expand3x3/kernel/Assignfire2/expand3x3/kernel/read:02 fire2/expand3x3/random_uniform:08
m
fire2/expand3x3/bias:0fire2/expand3x3/bias/Assignfire2/expand3x3/bias/read:02fire2/expand3x3/Const:08

fire3/squeeze1x1/kernel:0fire3/squeeze1x1/kernel/Assignfire3/squeeze1x1/kernel/read:02!fire3/squeeze1x1/random_uniform:08
q
fire3/squeeze1x1/bias:0fire3/squeeze1x1/bias/Assignfire3/squeeze1x1/bias/read:02fire3/squeeze1x1/Const:08
|
fire3/expand1x1/kernel:0fire3/expand1x1/kernel/Assignfire3/expand1x1/kernel/read:02 fire3/expand1x1/random_uniform:08
m
fire3/expand1x1/bias:0fire3/expand1x1/bias/Assignfire3/expand1x1/bias/read:02fire3/expand1x1/Const:08
|
fire3/expand3x3/kernel:0fire3/expand3x3/kernel/Assignfire3/expand3x3/kernel/read:02 fire3/expand3x3/random_uniform:08
m
fire3/expand3x3/bias:0fire3/expand3x3/bias/Assignfire3/expand3x3/bias/read:02fire3/expand3x3/Const:08

fire4/squeeze1x1/kernel:0fire4/squeeze1x1/kernel/Assignfire4/squeeze1x1/kernel/read:02!fire4/squeeze1x1/random_uniform:08
q
fire4/squeeze1x1/bias:0fire4/squeeze1x1/bias/Assignfire4/squeeze1x1/bias/read:02fire4/squeeze1x1/Const:08
|
fire4/expand1x1/kernel:0fire4/expand1x1/kernel/Assignfire4/expand1x1/kernel/read:02 fire4/expand1x1/random_uniform:08
m
fire4/expand1x1/bias:0fire4/expand1x1/bias/Assignfire4/expand1x1/bias/read:02fire4/expand1x1/Const:08
|
fire4/expand3x3/kernel:0fire4/expand3x3/kernel/Assignfire4/expand3x3/kernel/read:02 fire4/expand3x3/random_uniform:08
m
fire4/expand3x3/bias:0fire4/expand3x3/bias/Assignfire4/expand3x3/bias/read:02fire4/expand3x3/Const:08

fire5/squeeze1x1/kernel:0fire5/squeeze1x1/kernel/Assignfire5/squeeze1x1/kernel/read:02!fire5/squeeze1x1/random_uniform:08
q
fire5/squeeze1x1/bias:0fire5/squeeze1x1/bias/Assignfire5/squeeze1x1/bias/read:02fire5/squeeze1x1/Const:08
|
fire5/expand1x1/kernel:0fire5/expand1x1/kernel/Assignfire5/expand1x1/kernel/read:02 fire5/expand1x1/random_uniform:08
m
fire5/expand1x1/bias:0fire5/expand1x1/bias/Assignfire5/expand1x1/bias/read:02fire5/expand1x1/Const:08
|
fire5/expand3x3/kernel:0fire5/expand3x3/kernel/Assignfire5/expand3x3/kernel/read:02 fire5/expand3x3/random_uniform:08
m
fire5/expand3x3/bias:0fire5/expand3x3/bias/Assignfire5/expand3x3/bias/read:02fire5/expand3x3/Const:08

fire6/squeeze1x1/kernel:0fire6/squeeze1x1/kernel/Assignfire6/squeeze1x1/kernel/read:02!fire6/squeeze1x1/random_uniform:08
q
fire6/squeeze1x1/bias:0fire6/squeeze1x1/bias/Assignfire6/squeeze1x1/bias/read:02fire6/squeeze1x1/Const:08
|
fire6/expand1x1/kernel:0fire6/expand1x1/kernel/Assignfire6/expand1x1/kernel/read:02 fire6/expand1x1/random_uniform:08
m
fire6/expand1x1/bias:0fire6/expand1x1/bias/Assignfire6/expand1x1/bias/read:02fire6/expand1x1/Const:08
|
fire6/expand3x3/kernel:0fire6/expand3x3/kernel/Assignfire6/expand3x3/kernel/read:02 fire6/expand3x3/random_uniform:08
m
fire6/expand3x3/bias:0fire6/expand3x3/bias/Assignfire6/expand3x3/bias/read:02fire6/expand3x3/Const:08

fire7/squeeze1x1/kernel:0fire7/squeeze1x1/kernel/Assignfire7/squeeze1x1/kernel/read:02!fire7/squeeze1x1/random_uniform:08
q
fire7/squeeze1x1/bias:0fire7/squeeze1x1/bias/Assignfire7/squeeze1x1/bias/read:02fire7/squeeze1x1/Const:08
|
fire7/expand1x1/kernel:0fire7/expand1x1/kernel/Assignfire7/expand1x1/kernel/read:02 fire7/expand1x1/random_uniform:08
m
fire7/expand1x1/bias:0fire7/expand1x1/bias/Assignfire7/expand1x1/bias/read:02fire7/expand1x1/Const:08
|
fire7/expand3x3/kernel:0fire7/expand3x3/kernel/Assignfire7/expand3x3/kernel/read:02 fire7/expand3x3/random_uniform:08
m
fire7/expand3x3/bias:0fire7/expand3x3/bias/Assignfire7/expand3x3/bias/read:02fire7/expand3x3/Const:08

fire8/squeeze1x1/kernel:0fire8/squeeze1x1/kernel/Assignfire8/squeeze1x1/kernel/read:02!fire8/squeeze1x1/random_uniform:08
q
fire8/squeeze1x1/bias:0fire8/squeeze1x1/bias/Assignfire8/squeeze1x1/bias/read:02fire8/squeeze1x1/Const:08
|
fire8/expand1x1/kernel:0fire8/expand1x1/kernel/Assignfire8/expand1x1/kernel/read:02 fire8/expand1x1/random_uniform:08
m
fire8/expand1x1/bias:0fire8/expand1x1/bias/Assignfire8/expand1x1/bias/read:02fire8/expand1x1/Const:08
|
fire8/expand3x3/kernel:0fire8/expand3x3/kernel/Assignfire8/expand3x3/kernel/read:02 fire8/expand3x3/random_uniform:08
m
fire8/expand3x3/bias:0fire8/expand3x3/bias/Assignfire8/expand3x3/bias/read:02fire8/expand3x3/Const:08

fire9/squeeze1x1/kernel:0fire9/squeeze1x1/kernel/Assignfire9/squeeze1x1/kernel/read:02!fire9/squeeze1x1/random_uniform:08
q
fire9/squeeze1x1/bias:0fire9/squeeze1x1/bias/Assignfire9/squeeze1x1/bias/read:02fire9/squeeze1x1/Const:08
|
fire9/expand1x1/kernel:0fire9/expand1x1/kernel/Assignfire9/expand1x1/kernel/read:02 fire9/expand1x1/random_uniform:08
m
fire9/expand1x1/bias:0fire9/expand1x1/bias/Assignfire9/expand1x1/bias/read:02fire9/expand1x1/Const:08
|
fire9/expand3x3/kernel:0fire9/expand3x3/kernel/Assignfire9/expand3x3/kernel/read:02 fire9/expand3x3/random_uniform:08
m
fire9/expand3x3/bias:0fire9/expand3x3/bias/Assignfire9/expand3x3/bias/read:02fire9/expand3x3/Const:08
X
conv10/kernel:0conv10/kernel/Assignconv10/kernel/read:02conv10/random_uniform:08
I
conv10/bias:0conv10/bias/Assignconv10/bias/read:02conv10/Const:08
`
conv10_1/kernel:0conv10_1/kernel/Assignconv10_1/kernel/read:02conv10_1/random_uniform:08
Q
conv10_1/bias:0conv10_1/bias/Assignconv10_1/bias/read:02conv10_1/Const:08
b
SGD/iterations:0SGD/iterations/AssignSGD/iterations/read:02SGD/iterations/initial_value:08
B
SGD/lr:0SGD/lr/AssignSGD/lr/read:02SGD/lr/initial_value:08
Z
SGD/momentum:0SGD/momentum/AssignSGD/momentum/read:02SGD/momentum/initial_value:08
N
SGD/decay:0SGD/decay/AssignSGD/decay/read:02SGD/decay/initial_value:08
m
training/SGD/Variable:0training/SGD/Variable/Assigntraining/SGD/Variable/read:02training/SGD/zeros:08
u
training/SGD/Variable_1:0training/SGD/Variable_1/Assigntraining/SGD/Variable_1/read:02training/SGD/zeros_1:08
u
training/SGD/Variable_2:0training/SGD/Variable_2/Assigntraining/SGD/Variable_2/read:02training/SGD/zeros_2:08
u
training/SGD/Variable_3:0training/SGD/Variable_3/Assigntraining/SGD/Variable_3/read:02training/SGD/zeros_3:08
u
training/SGD/Variable_4:0training/SGD/Variable_4/Assigntraining/SGD/Variable_4/read:02training/SGD/zeros_4:08
u
training/SGD/Variable_5:0training/SGD/Variable_5/Assigntraining/SGD/Variable_5/read:02training/SGD/zeros_5:08
u
training/SGD/Variable_6:0training/SGD/Variable_6/Assigntraining/SGD/Variable_6/read:02training/SGD/zeros_6:08
u
training/SGD/Variable_7:0training/SGD/Variable_7/Assigntraining/SGD/Variable_7/read:02training/SGD/zeros_7:08
u
training/SGD/Variable_8:0training/SGD/Variable_8/Assigntraining/SGD/Variable_8/read:02training/SGD/zeros_8:08
u
training/SGD/Variable_9:0training/SGD/Variable_9/Assigntraining/SGD/Variable_9/read:02training/SGD/zeros_9:08
y
training/SGD/Variable_10:0training/SGD/Variable_10/Assigntraining/SGD/Variable_10/read:02training/SGD/zeros_10:08
y
training/SGD/Variable_11:0training/SGD/Variable_11/Assigntraining/SGD/Variable_11/read:02training/SGD/zeros_11:08
y
training/SGD/Variable_12:0training/SGD/Variable_12/Assigntraining/SGD/Variable_12/read:02training/SGD/zeros_12:08
y
training/SGD/Variable_13:0training/SGD/Variable_13/Assigntraining/SGD/Variable_13/read:02training/SGD/zeros_13:08
y
training/SGD/Variable_14:0training/SGD/Variable_14/Assigntraining/SGD/Variable_14/read:02training/SGD/zeros_14:08
y
training/SGD/Variable_15:0training/SGD/Variable_15/Assigntraining/SGD/Variable_15/read:02training/SGD/zeros_15:08
y
training/SGD/Variable_16:0training/SGD/Variable_16/Assigntraining/SGD/Variable_16/read:02training/SGD/zeros_16:08
y
training/SGD/Variable_17:0training/SGD/Variable_17/Assigntraining/SGD/Variable_17/read:02training/SGD/zeros_17:08
y
training/SGD/Variable_18:0training/SGD/Variable_18/Assigntraining/SGD/Variable_18/read:02training/SGD/zeros_18:08
y
training/SGD/Variable_19:0training/SGD/Variable_19/Assigntraining/SGD/Variable_19/read:02training/SGD/zeros_19:08
y
training/SGD/Variable_20:0training/SGD/Variable_20/Assigntraining/SGD/Variable_20/read:02training/SGD/zeros_20:08
y
training/SGD/Variable_21:0training/SGD/Variable_21/Assigntraining/SGD/Variable_21/read:02training/SGD/zeros_21:08
y
training/SGD/Variable_22:0training/SGD/Variable_22/Assigntraining/SGD/Variable_22/read:02training/SGD/zeros_22:08
y
training/SGD/Variable_23:0training/SGD/Variable_23/Assigntraining/SGD/Variable_23/read:02training/SGD/zeros_23:08
y
training/SGD/Variable_24:0training/SGD/Variable_24/Assigntraining/SGD/Variable_24/read:02training/SGD/zeros_24:08
y
training/SGD/Variable_25:0training/SGD/Variable_25/Assigntraining/SGD/Variable_25/read:02training/SGD/zeros_25:08
y
training/SGD/Variable_26:0training/SGD/Variable_26/Assigntraining/SGD/Variable_26/read:02training/SGD/zeros_26:08
y
training/SGD/Variable_27:0training/SGD/Variable_27/Assigntraining/SGD/Variable_27/read:02training/SGD/zeros_27:08
y
training/SGD/Variable_28:0training/SGD/Variable_28/Assigntraining/SGD/Variable_28/read:02training/SGD/zeros_28:08
y
training/SGD/Variable_29:0training/SGD/Variable_29/Assigntraining/SGD/Variable_29/read:02training/SGD/zeros_29:08
y
training/SGD/Variable_30:0training/SGD/Variable_30/Assigntraining/SGD/Variable_30/read:02training/SGD/zeros_30:08
y
training/SGD/Variable_31:0training/SGD/Variable_31/Assigntraining/SGD/Variable_31/read:02training/SGD/zeros_31:08
y
training/SGD/Variable_32:0training/SGD/Variable_32/Assigntraining/SGD/Variable_32/read:02training/SGD/zeros_32:08
y
training/SGD/Variable_33:0training/SGD/Variable_33/Assigntraining/SGD/Variable_33/read:02training/SGD/zeros_33:08
y
training/SGD/Variable_34:0training/SGD/Variable_34/Assigntraining/SGD/Variable_34/read:02training/SGD/zeros_34:08
y
training/SGD/Variable_35:0training/SGD/Variable_35/Assigntraining/SGD/Variable_35/read:02training/SGD/zeros_35:08
y
training/SGD/Variable_36:0training/SGD/Variable_36/Assigntraining/SGD/Variable_36/read:02training/SGD/zeros_36:08
y
training/SGD/Variable_37:0training/SGD/Variable_37/Assigntraining/SGD/Variable_37/read:02training/SGD/zeros_37:08
y
training/SGD/Variable_38:0training/SGD/Variable_38/Assigntraining/SGD/Variable_38/read:02training/SGD/zeros_38:08
y
training/SGD/Variable_39:0training/SGD/Variable_39/Assigntraining/SGD/Variable_39/read:02training/SGD/zeros_39:08
y
training/SGD/Variable_40:0training/SGD/Variable_40/Assigntraining/SGD/Variable_40/read:02training/SGD/zeros_40:08
y
training/SGD/Variable_41:0training/SGD/Variable_41/Assigntraining/SGD/Variable_41/read:02training/SGD/zeros_41:08
y
training/SGD/Variable_42:0training/SGD/Variable_42/Assigntraining/SGD/Variable_42/read:02training/SGD/zeros_42:08
y
training/SGD/Variable_43:0training/SGD/Variable_43/Assigntraining/SGD/Variable_43/read:02training/SGD/zeros_43:08
y
training/SGD/Variable_44:0training/SGD/Variable_44/Assigntraining/SGD/Variable_44/read:02training/SGD/zeros_44:08
y
training/SGD/Variable_45:0training/SGD/Variable_45/Assigntraining/SGD/Variable_45/read:02training/SGD/zeros_45:08
y
training/SGD/Variable_46:0training/SGD/Variable_46/Assigntraining/SGD/Variable_46/read:02training/SGD/zeros_46:08
y
training/SGD/Variable_47:0training/SGD/Variable_47/Assigntraining/SGD/Variable_47/read:02training/SGD/zeros_47:08
y
training/SGD/Variable_48:0training/SGD/Variable_48/Assigntraining/SGD/Variable_48/read:02training/SGD/zeros_48:08
y
training/SGD/Variable_49:0training/SGD/Variable_49/Assigntraining/SGD/Variable_49/read:02training/SGD/zeros_49:08
y
training/SGD/Variable_50:0training/SGD/Variable_50/Assigntraining/SGD/Variable_50/read:02training/SGD/zeros_50:08
y
training/SGD/Variable_51:0training/SGD/Variable_51/Assigntraining/SGD/Variable_51/read:02training/SGD/zeros_51:08"Вe
trainable_variablesee
T
conv1/kernel:0conv1/kernel/Assignconv1/kernel/read:02conv1/random_uniform:08
E
conv1/bias:0conv1/bias/Assignconv1/bias/read:02conv1/Const:08

fire2/squeeze1x1/kernel:0fire2/squeeze1x1/kernel/Assignfire2/squeeze1x1/kernel/read:02!fire2/squeeze1x1/random_uniform:08
q
fire2/squeeze1x1/bias:0fire2/squeeze1x1/bias/Assignfire2/squeeze1x1/bias/read:02fire2/squeeze1x1/Const:08
|
fire2/expand1x1/kernel:0fire2/expand1x1/kernel/Assignfire2/expand1x1/kernel/read:02 fire2/expand1x1/random_uniform:08
m
fire2/expand1x1/bias:0fire2/expand1x1/bias/Assignfire2/expand1x1/bias/read:02fire2/expand1x1/Const:08
|
fire2/expand3x3/kernel:0fire2/expand3x3/kernel/Assignfire2/expand3x3/kernel/read:02 fire2/expand3x3/random_uniform:08
m
fire2/expand3x3/bias:0fire2/expand3x3/bias/Assignfire2/expand3x3/bias/read:02fire2/expand3x3/Const:08

fire3/squeeze1x1/kernel:0fire3/squeeze1x1/kernel/Assignfire3/squeeze1x1/kernel/read:02!fire3/squeeze1x1/random_uniform:08
q
fire3/squeeze1x1/bias:0fire3/squeeze1x1/bias/Assignfire3/squeeze1x1/bias/read:02fire3/squeeze1x1/Const:08
|
fire3/expand1x1/kernel:0fire3/expand1x1/kernel/Assignfire3/expand1x1/kernel/read:02 fire3/expand1x1/random_uniform:08
m
fire3/expand1x1/bias:0fire3/expand1x1/bias/Assignfire3/expand1x1/bias/read:02fire3/expand1x1/Const:08
|
fire3/expand3x3/kernel:0fire3/expand3x3/kernel/Assignfire3/expand3x3/kernel/read:02 fire3/expand3x3/random_uniform:08
m
fire3/expand3x3/bias:0fire3/expand3x3/bias/Assignfire3/expand3x3/bias/read:02fire3/expand3x3/Const:08

fire4/squeeze1x1/kernel:0fire4/squeeze1x1/kernel/Assignfire4/squeeze1x1/kernel/read:02!fire4/squeeze1x1/random_uniform:08
q
fire4/squeeze1x1/bias:0fire4/squeeze1x1/bias/Assignfire4/squeeze1x1/bias/read:02fire4/squeeze1x1/Const:08
|
fire4/expand1x1/kernel:0fire4/expand1x1/kernel/Assignfire4/expand1x1/kernel/read:02 fire4/expand1x1/random_uniform:08
m
fire4/expand1x1/bias:0fire4/expand1x1/bias/Assignfire4/expand1x1/bias/read:02fire4/expand1x1/Const:08
|
fire4/expand3x3/kernel:0fire4/expand3x3/kernel/Assignfire4/expand3x3/kernel/read:02 fire4/expand3x3/random_uniform:08
m
fire4/expand3x3/bias:0fire4/expand3x3/bias/Assignfire4/expand3x3/bias/read:02fire4/expand3x3/Const:08

fire5/squeeze1x1/kernel:0fire5/squeeze1x1/kernel/Assignfire5/squeeze1x1/kernel/read:02!fire5/squeeze1x1/random_uniform:08
q
fire5/squeeze1x1/bias:0fire5/squeeze1x1/bias/Assignfire5/squeeze1x1/bias/read:02fire5/squeeze1x1/Const:08
|
fire5/expand1x1/kernel:0fire5/expand1x1/kernel/Assignfire5/expand1x1/kernel/read:02 fire5/expand1x1/random_uniform:08
m
fire5/expand1x1/bias:0fire5/expand1x1/bias/Assignfire5/expand1x1/bias/read:02fire5/expand1x1/Const:08
|
fire5/expand3x3/kernel:0fire5/expand3x3/kernel/Assignfire5/expand3x3/kernel/read:02 fire5/expand3x3/random_uniform:08
m
fire5/expand3x3/bias:0fire5/expand3x3/bias/Assignfire5/expand3x3/bias/read:02fire5/expand3x3/Const:08

fire6/squeeze1x1/kernel:0fire6/squeeze1x1/kernel/Assignfire6/squeeze1x1/kernel/read:02!fire6/squeeze1x1/random_uniform:08
q
fire6/squeeze1x1/bias:0fire6/squeeze1x1/bias/Assignfire6/squeeze1x1/bias/read:02fire6/squeeze1x1/Const:08
|
fire6/expand1x1/kernel:0fire6/expand1x1/kernel/Assignfire6/expand1x1/kernel/read:02 fire6/expand1x1/random_uniform:08
m
fire6/expand1x1/bias:0fire6/expand1x1/bias/Assignfire6/expand1x1/bias/read:02fire6/expand1x1/Const:08
|
fire6/expand3x3/kernel:0fire6/expand3x3/kernel/Assignfire6/expand3x3/kernel/read:02 fire6/expand3x3/random_uniform:08
m
fire6/expand3x3/bias:0fire6/expand3x3/bias/Assignfire6/expand3x3/bias/read:02fire6/expand3x3/Const:08

fire7/squeeze1x1/kernel:0fire7/squeeze1x1/kernel/Assignfire7/squeeze1x1/kernel/read:02!fire7/squeeze1x1/random_uniform:08
q
fire7/squeeze1x1/bias:0fire7/squeeze1x1/bias/Assignfire7/squeeze1x1/bias/read:02fire7/squeeze1x1/Const:08
|
fire7/expand1x1/kernel:0fire7/expand1x1/kernel/Assignfire7/expand1x1/kernel/read:02 fire7/expand1x1/random_uniform:08
m
fire7/expand1x1/bias:0fire7/expand1x1/bias/Assignfire7/expand1x1/bias/read:02fire7/expand1x1/Const:08
|
fire7/expand3x3/kernel:0fire7/expand3x3/kernel/Assignfire7/expand3x3/kernel/read:02 fire7/expand3x3/random_uniform:08
m
fire7/expand3x3/bias:0fire7/expand3x3/bias/Assignfire7/expand3x3/bias/read:02fire7/expand3x3/Const:08

fire8/squeeze1x1/kernel:0fire8/squeeze1x1/kernel/Assignfire8/squeeze1x1/kernel/read:02!fire8/squeeze1x1/random_uniform:08
q
fire8/squeeze1x1/bias:0fire8/squeeze1x1/bias/Assignfire8/squeeze1x1/bias/read:02fire8/squeeze1x1/Const:08
|
fire8/expand1x1/kernel:0fire8/expand1x1/kernel/Assignfire8/expand1x1/kernel/read:02 fire8/expand1x1/random_uniform:08
m
fire8/expand1x1/bias:0fire8/expand1x1/bias/Assignfire8/expand1x1/bias/read:02fire8/expand1x1/Const:08
|
fire8/expand3x3/kernel:0fire8/expand3x3/kernel/Assignfire8/expand3x3/kernel/read:02 fire8/expand3x3/random_uniform:08
m
fire8/expand3x3/bias:0fire8/expand3x3/bias/Assignfire8/expand3x3/bias/read:02fire8/expand3x3/Const:08

fire9/squeeze1x1/kernel:0fire9/squeeze1x1/kernel/Assignfire9/squeeze1x1/kernel/read:02!fire9/squeeze1x1/random_uniform:08
q
fire9/squeeze1x1/bias:0fire9/squeeze1x1/bias/Assignfire9/squeeze1x1/bias/read:02fire9/squeeze1x1/Const:08
|
fire9/expand1x1/kernel:0fire9/expand1x1/kernel/Assignfire9/expand1x1/kernel/read:02 fire9/expand1x1/random_uniform:08
m
fire9/expand1x1/bias:0fire9/expand1x1/bias/Assignfire9/expand1x1/bias/read:02fire9/expand1x1/Const:08
|
fire9/expand3x3/kernel:0fire9/expand3x3/kernel/Assignfire9/expand3x3/kernel/read:02 fire9/expand3x3/random_uniform:08
m
fire9/expand3x3/bias:0fire9/expand3x3/bias/Assignfire9/expand3x3/bias/read:02fire9/expand3x3/Const:08
X
conv10/kernel:0conv10/kernel/Assignconv10/kernel/read:02conv10/random_uniform:08
I
conv10/bias:0conv10/bias/Assignconv10/bias/read:02conv10/Const:08
`
conv10_1/kernel:0conv10_1/kernel/Assignconv10_1/kernel/read:02conv10_1/random_uniform:08
Q
conv10_1/bias:0conv10_1/bias/Assignconv10_1/bias/read:02conv10_1/Const:08
b
SGD/iterations:0SGD/iterations/AssignSGD/iterations/read:02SGD/iterations/initial_value:08
B
SGD/lr:0SGD/lr/AssignSGD/lr/read:02SGD/lr/initial_value:08
Z
SGD/momentum:0SGD/momentum/AssignSGD/momentum/read:02SGD/momentum/initial_value:08
N
SGD/decay:0SGD/decay/AssignSGD/decay/read:02SGD/decay/initial_value:08
m
training/SGD/Variable:0training/SGD/Variable/Assigntraining/SGD/Variable/read:02training/SGD/zeros:08
u
training/SGD/Variable_1:0training/SGD/Variable_1/Assigntraining/SGD/Variable_1/read:02training/SGD/zeros_1:08
u
training/SGD/Variable_2:0training/SGD/Variable_2/Assigntraining/SGD/Variable_2/read:02training/SGD/zeros_2:08
u
training/SGD/Variable_3:0training/SGD/Variable_3/Assigntraining/SGD/Variable_3/read:02training/SGD/zeros_3:08
u
training/SGD/Variable_4:0training/SGD/Variable_4/Assigntraining/SGD/Variable_4/read:02training/SGD/zeros_4:08
u
training/SGD/Variable_5:0training/SGD/Variable_5/Assigntraining/SGD/Variable_5/read:02training/SGD/zeros_5:08
u
training/SGD/Variable_6:0training/SGD/Variable_6/Assigntraining/SGD/Variable_6/read:02training/SGD/zeros_6:08
u
training/SGD/Variable_7:0training/SGD/Variable_7/Assigntraining/SGD/Variable_7/read:02training/SGD/zeros_7:08
u
training/SGD/Variable_8:0training/SGD/Variable_8/Assigntraining/SGD/Variable_8/read:02training/SGD/zeros_8:08
u
training/SGD/Variable_9:0training/SGD/Variable_9/Assigntraining/SGD/Variable_9/read:02training/SGD/zeros_9:08
y
training/SGD/Variable_10:0training/SGD/Variable_10/Assigntraining/SGD/Variable_10/read:02training/SGD/zeros_10:08
y
training/SGD/Variable_11:0training/SGD/Variable_11/Assigntraining/SGD/Variable_11/read:02training/SGD/zeros_11:08
y
training/SGD/Variable_12:0training/SGD/Variable_12/Assigntraining/SGD/Variable_12/read:02training/SGD/zeros_12:08
y
training/SGD/Variable_13:0training/SGD/Variable_13/Assigntraining/SGD/Variable_13/read:02training/SGD/zeros_13:08
y
training/SGD/Variable_14:0training/SGD/Variable_14/Assigntraining/SGD/Variable_14/read:02training/SGD/zeros_14:08
y
training/SGD/Variable_15:0training/SGD/Variable_15/Assigntraining/SGD/Variable_15/read:02training/SGD/zeros_15:08
y
training/SGD/Variable_16:0training/SGD/Variable_16/Assigntraining/SGD/Variable_16/read:02training/SGD/zeros_16:08
y
training/SGD/Variable_17:0training/SGD/Variable_17/Assigntraining/SGD/Variable_17/read:02training/SGD/zeros_17:08
y
training/SGD/Variable_18:0training/SGD/Variable_18/Assigntraining/SGD/Variable_18/read:02training/SGD/zeros_18:08
y
training/SGD/Variable_19:0training/SGD/Variable_19/Assigntraining/SGD/Variable_19/read:02training/SGD/zeros_19:08
y
training/SGD/Variable_20:0training/SGD/Variable_20/Assigntraining/SGD/Variable_20/read:02training/SGD/zeros_20:08
y
training/SGD/Variable_21:0training/SGD/Variable_21/Assigntraining/SGD/Variable_21/read:02training/SGD/zeros_21:08
y
training/SGD/Variable_22:0training/SGD/Variable_22/Assigntraining/SGD/Variable_22/read:02training/SGD/zeros_22:08
y
training/SGD/Variable_23:0training/SGD/Variable_23/Assigntraining/SGD/Variable_23/read:02training/SGD/zeros_23:08
y
training/SGD/Variable_24:0training/SGD/Variable_24/Assigntraining/SGD/Variable_24/read:02training/SGD/zeros_24:08
y
training/SGD/Variable_25:0training/SGD/Variable_25/Assigntraining/SGD/Variable_25/read:02training/SGD/zeros_25:08
y
training/SGD/Variable_26:0training/SGD/Variable_26/Assigntraining/SGD/Variable_26/read:02training/SGD/zeros_26:08
y
training/SGD/Variable_27:0training/SGD/Variable_27/Assigntraining/SGD/Variable_27/read:02training/SGD/zeros_27:08
y
training/SGD/Variable_28:0training/SGD/Variable_28/Assigntraining/SGD/Variable_28/read:02training/SGD/zeros_28:08
y
training/SGD/Variable_29:0training/SGD/Variable_29/Assigntraining/SGD/Variable_29/read:02training/SGD/zeros_29:08
y
training/SGD/Variable_30:0training/SGD/Variable_30/Assigntraining/SGD/Variable_30/read:02training/SGD/zeros_30:08
y
training/SGD/Variable_31:0training/SGD/Variable_31/Assigntraining/SGD/Variable_31/read:02training/SGD/zeros_31:08
y
training/SGD/Variable_32:0training/SGD/Variable_32/Assigntraining/SGD/Variable_32/read:02training/SGD/zeros_32:08
y
training/SGD/Variable_33:0training/SGD/Variable_33/Assigntraining/SGD/Variable_33/read:02training/SGD/zeros_33:08
y
training/SGD/Variable_34:0training/SGD/Variable_34/Assigntraining/SGD/Variable_34/read:02training/SGD/zeros_34:08
y
training/SGD/Variable_35:0training/SGD/Variable_35/Assigntraining/SGD/Variable_35/read:02training/SGD/zeros_35:08
y
training/SGD/Variable_36:0training/SGD/Variable_36/Assigntraining/SGD/Variable_36/read:02training/SGD/zeros_36:08
y
training/SGD/Variable_37:0training/SGD/Variable_37/Assigntraining/SGD/Variable_37/read:02training/SGD/zeros_37:08
y
training/SGD/Variable_38:0training/SGD/Variable_38/Assigntraining/SGD/Variable_38/read:02training/SGD/zeros_38:08
y
training/SGD/Variable_39:0training/SGD/Variable_39/Assigntraining/SGD/Variable_39/read:02training/SGD/zeros_39:08
y
training/SGD/Variable_40:0training/SGD/Variable_40/Assigntraining/SGD/Variable_40/read:02training/SGD/zeros_40:08
y
training/SGD/Variable_41:0training/SGD/Variable_41/Assigntraining/SGD/Variable_41/read:02training/SGD/zeros_41:08
y
training/SGD/Variable_42:0training/SGD/Variable_42/Assigntraining/SGD/Variable_42/read:02training/SGD/zeros_42:08
y
training/SGD/Variable_43:0training/SGD/Variable_43/Assigntraining/SGD/Variable_43/read:02training/SGD/zeros_43:08
y
training/SGD/Variable_44:0training/SGD/Variable_44/Assigntraining/SGD/Variable_44/read:02training/SGD/zeros_44:08
y
training/SGD/Variable_45:0training/SGD/Variable_45/Assigntraining/SGD/Variable_45/read:02training/SGD/zeros_45:08
y
training/SGD/Variable_46:0training/SGD/Variable_46/Assigntraining/SGD/Variable_46/read:02training/SGD/zeros_46:08
y
training/SGD/Variable_47:0training/SGD/Variable_47/Assigntraining/SGD/Variable_47/read:02training/SGD/zeros_47:08
y
training/SGD/Variable_48:0training/SGD/Variable_48/Assigntraining/SGD/Variable_48/read:02training/SGD/zeros_48:08
y
training/SGD/Variable_49:0training/SGD/Variable_49/Assigntraining/SGD/Variable_49/read:02training/SGD/zeros_49:08
y
training/SGD/Variable_50:0training/SGD/Variable_50/Assigntraining/SGD/Variable_50/read:02training/SGD/zeros_50:08
y
training/SGD/Variable_51:0training/SGD/Variable_51/Assigntraining/SGD/Variable_51/read:02training/SGD/zeros_51:08YVВ       чЮј	nжЗbНћжA*


accр>КЈ0       ЃK"	џжЗbНћжA*

lossћ7љ?і^ _       ё(	єeНћжA*


acc4Ђќ>\ќb       и-	єeНћжA*

lossГЖ?OAI       ё(	їgНћжA*


accЧК?bc       и-	gНћжA*

loss(?Щ0&