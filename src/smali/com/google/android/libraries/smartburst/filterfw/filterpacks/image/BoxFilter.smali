.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "BoxFilter.java"


# instance fields
.field private mBoxBlurOperator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

.field private mFilterHeight:I

.field private mFilterWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/16 v2, 0x12d

    const/4 v4, 0x2

    .line 32
    invoke-static {v2, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 33
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "filterWidth"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 35
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "filterHeight"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 37
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filterWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "mFilterWidth"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filterHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "mFilterHeight"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 51
    :cond_1
    return-void
.end method

.method protected onPrepare()V
    .locals 4

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterWidth:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterWidth:I

    .line 57
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterHeight:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterHeight:I

    .line 59
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->isOpenGLSupported()Z

    move-result v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;-><init>(ZII)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mBoxBlurOperator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    .line 60
    return-void
.end method

.method protected onProcess()V
    .locals 5

    .prologue
    .line 64
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    .line 65
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 73
    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterHeight:I

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mFilterWidth:I

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not apply a box filter that is largerthan the original image!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;->mBoxBlurOperator:Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->computeBlur(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 80
    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 83
    :cond_2
    return-void
.end method
