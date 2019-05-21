.class public final Lcom/google/android/libraries/smartburst/filterfw/filterpacks/colorspace/ColorfulnessFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "ColorfulnessFilter.java"


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 45
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->buffer2D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v2, "histogram"

    .line 47
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "score"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 48
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method protected final onProcess()V
    .locals 13

    .prologue
    .line 54
    const-string v0, "histogram"

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/colorspace/ColorfulnessFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameBuffer2D()Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;

    move-result-object v4

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 62
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->getWidth()I

    move-result v6

    .line 63
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->getHeight()I

    move-result v7

    .line 64
    new-array v8, v6, [F

    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_1

    .line 67
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v10, v3

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v9, v0

    .line 68
    const/4 v0, 0x0

    move v1, v2

    :goto_1
    if-ge v0, v6, :cond_0

    .line 69
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    mul-float/2addr v2, v9

    .line 70
    aget v10, v8, v0

    add-float/2addr v10, v2

    aput v10, v8, v0

    .line 71
    add-float/2addr v1, v2

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_2
    if-ge v1, v6, :cond_3

    .line 77
    aget v3, v8, v1

    div-float/2addr v3, v2

    .line 78
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 79
    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    .line 76
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82
    :cond_3
    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 84
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->unlock()V

    .line 85
    const-string v1, "score"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/colorspace/ColorfulnessFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v2

    .line 87
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 89
    return-void
.end method
