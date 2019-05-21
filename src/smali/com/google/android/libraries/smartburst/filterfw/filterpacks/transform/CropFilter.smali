.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "CropFilter.java"


# static fields
.field private static final IDENTITY_CROP_RECT:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;


# instance fields
.field private mCropRect:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

.field private mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mUseMipmaps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 31
    invoke-static {v0, v0, v1, v1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->fromRect(FFFF)Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->IDENTITY_CROP_RECT:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->IDENTITY_CROP_RECT:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mCropRect:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 34
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mOutputWidth:I

    .line 35
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mOutputHeight:I

    .line 36
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mUseMipmaps:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    .line 41
    return-void
.end method


# virtual methods
.method protected getOutputHeight(II)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mOutputHeight:I

    if-gtz v0, :cond_0

    :goto_0
    return p2

    :cond_0
    iget p2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mOutputHeight:I

    goto :goto_0
.end method

.method protected getOutputWidth(II)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mOutputWidth:I

    if-gtz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mOutputWidth:I

    goto :goto_0
.end method

.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 45
    invoke-static {v2, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 46
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 48
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "cropRect"

    const-class v3, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 49
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "outputWidth"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 50
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "outputHeight"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "useMipmaps"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 52
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 53
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;->release()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    .line 109
    :cond_0
    return-void
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropRect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "mCropRect"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputWidth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "mOutputWidth"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputHeight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const-string v0, "mOutputHeight"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useMipmaps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "mUseMipmaps"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected onPrepare()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->isOpenGLSupported()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    .line 77
    return-void
.end method

.method protected onProcess()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 81
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 83
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 84
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mCropRect:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->IDENTITY_CROP_RECT:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 85
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v3

    .line 86
    invoke-static {v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;->computeCropDimensions([ILcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)[I

    move-result-object v4

    .line 87
    const/4 v5, 0x2

    new-array v5, v5, [I

    aget v6, v4, v8

    aget v7, v4, v9

    invoke-virtual {p0, v6, v7}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->getOutputWidth(II)I

    move-result v6

    aput v6, v5, v8

    aget v6, v4, v8

    aget v7, v4, v9

    .line 88
    invoke-virtual {p0, v6, v7}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->getOutputHeight(II)I

    move-result v6

    aput v6, v5, v9

    .line 89
    aget v6, v3, v8

    aget v7, v4, v8

    if-ne v6, v7, :cond_1

    aget v6, v3, v9

    aget v4, v4, v9

    if-ne v6, v4, :cond_1

    aget v4, v3, v8

    aget v6, v5, v8

    if-ne v4, v6, :cond_1

    aget v3, v3, v9

    aget v4, v5, v9

    if-ne v3, v4, :cond_1

    .line 92
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 100
    :goto_1
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mCropRect:Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1, v5}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mImageCropper:Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;

    iget-boolean v5, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;->mUseMipmaps:Z

    invoke-virtual {v4, v2, v0, v3, v5}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/ImageCropper;->cropImage(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Z)V

    .line 98
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    goto :goto_1
.end method
