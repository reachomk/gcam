.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "FixedColorSource.java"


# instance fields
.field private mColor:[F

.field private mHeight:I

.field private mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

.field private mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

.field private mLastColor:[F

.field private mLastHeight:I

.field private mLastWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mColor:[F

    .line 28
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastColor:[F

    .line 30
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mWidth:I

    .line 31
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mHeight:I

    .line 33
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastWidth:I

    .line 34
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastHeight:I

    .line 36
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 37
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    .line 41
    return-void

    .line 27
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 45
    const/16 v0, 0x12d

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 46
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v1, "color"

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 47
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "width"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 48
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "height"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 49
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "image"

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 50
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "mColor"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const-string v0, "mWidth"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "mHeight"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected onProcess()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastColor:[F

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mColor:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mHeight:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastHeight:I

    if-eq v1, v2, :cond_2

    .line 74
    :cond_0
    new-array v1, v5, [I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mWidth:I

    aput v2, v1, v3

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mHeight:I

    aput v2, v1, v4

    .line 75
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    .line 79
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 81
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mColor:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mColor:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mColor:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mColor:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 82
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 83
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 85
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mColor:[F

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastColor:[F

    .line 86
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mWidth:I

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastWidth:I

    .line 87
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mHeight:I

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mLastHeight:I

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 91
    return-void
.end method

.method protected onTearDown()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FixedColorSource;->mImageFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 98
    :cond_0
    return-void
.end method
