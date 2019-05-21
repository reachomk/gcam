.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ResizeFilter;
.source "ScaleToAreaFilter.java"


# instance fields
.field private mHeightMultiple:I

.field private mTargetArea:I

.field private mWidthMultiple:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ResizeFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 30
    const v0, 0x12c00

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mTargetArea:I

    .line 31
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mWidthMultiple:I

    .line 32
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mHeightMultiple:I

    .line 36
    return-void
.end method

.method private calcVideoScale(II)F
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mTargetArea:I

    int-to-float v0, v0

    mul-int v1, p1, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method protected getOutputHeight(II)I
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->calcVideoScale(II)F

    move-result v0

    .line 96
    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 97
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mHeightMultiple:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mHeightMultiple:I

    rem-int v2, v0, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mHeightMultiple:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getOutputWidth(II)I
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->calcVideoScale(II)F

    move-result v0

    .line 84
    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 85
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mWidthMultiple:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mWidthMultiple:I

    rem-int v2, v0, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/ScaleToAreaFilter;->mWidthMultiple:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 40
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 41
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 43
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "targetArea"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "widthMultiple"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "heightMultiple"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 46
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "useMipmaps"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 47
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 48
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetArea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "mTargetArea"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "useMipmaps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "mUseMipmaps"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "widthMultiple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "mWidthMultiple"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "heightMultiple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "mHeightMultiple"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method
