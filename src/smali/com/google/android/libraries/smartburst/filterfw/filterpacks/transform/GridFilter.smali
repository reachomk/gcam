.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "GridFilter.java"


# instance fields
.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

.field private mUseMipmaps:Z

.field private mXCount:I

.field private mYCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 34
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mXCount:I

    .line 35
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mYCount:I

    .line 36
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mOutputWidth:I

    .line 37
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mOutputHeight:I

    .line 38
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mUseMipmaps:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    .line 45
    return-void
.end method

.method private static generateMipMaps(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockTextureSource()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->generateMipmaps()V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 140
    return-void
.end method

.method private static setTextureParameter(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;II)V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockTextureSource()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->setParameter(II)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 134
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 49
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 50
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 52
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "xCount"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 53
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "yCount"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "useMipmaps"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 55
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "outputWidth"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 56
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "outputHeight"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 57
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 58
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    .line 128
    :cond_0
    return-void
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xCount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "mXCount"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yCount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "mYCount"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useMipmaps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const-string v0, "mUseMipmaps"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    const-string v0, "mOutputWidth"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "mOutputHeight"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected onPrepare()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 85
    return-void
.end method

.method protected onProcess()V
    .locals 10

    .prologue
    const/16 v9, 0x2901

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 90
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    .line 91
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-static {v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/MipMapUtils;->makeMipMappedFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;[I)Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    .line 96
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    const/16 v4, 0x2802

    invoke-static {v3, v4, v9}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->setTextureParameter(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;II)V

    .line 97
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    const/16 v4, 0x2803

    invoke-static {v3, v4, v9}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->setTextureParameter(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;II)V

    .line 100
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v5, v5, v8, v8}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceRect(FFFF)V

    .line 101
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 104
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mUseMipmaps:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->generateMipMaps(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 109
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mOutputWidth:I

    aput v3, v1, v6

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mOutputHeight:I

    aput v3, v1, v7

    .line 110
    aget v3, v1, v6

    if-gtz v3, :cond_1

    aget v3, v2, v6

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mXCount:I

    mul-int/2addr v3, v4

    aput v3, v1, v6

    .line 111
    :cond_1
    aget v3, v1, v7

    if-gtz v3, :cond_2

    aget v2, v2, v7

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mYCount:I

    mul-int/2addr v2, v3

    aput v2, v1, v7

    .line 112
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mXCount:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mYCount:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceRect(FFFF)V

    .line 116
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/GridFilter;->mTileFrame:Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 120
    return-void
.end method
