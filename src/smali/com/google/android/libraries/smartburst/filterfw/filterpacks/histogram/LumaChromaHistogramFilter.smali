.class public final Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "LumaChromaHistogramFilter.java"


# instance fields
.field private mHueBins:I

.field private mSaturationBins:I

.field private mSaturationThreshold:I

.field private mValueThreshold:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mHueBins:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mSaturationBins:I

    .line 49
    const/16 v0, 0x1a

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mSaturationThreshold:I

    .line 50
    const/16 v0, 0x33

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mValueThreshold:I

    .line 54
    return-void
.end method


# virtual methods
.method public final getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 8

    .prologue
    const/16 v2, 0xc8

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 58
    const/16 v0, 0x12d

    invoke-static {v0, v6}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 59
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->buffer2D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 60
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->buffer1D(I)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    .line 61
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    .line 62
    new-instance v4, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v4}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v5, "image"

    .line 63
    invoke-virtual {v4, v5, v7, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "huebins"

    .line 64
    invoke-virtual {v0, v4, v6, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "saturationbins"

    .line 65
    invoke-virtual {v0, v4, v6, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "saturationthreshold"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 67
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v5

    .line 66
    invoke-virtual {v0, v4, v6, v5}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "valuethreshold"

    .line 68
    invoke-virtual {v0, v4, v6, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v3, "huesat"

    .line 69
    invoke-virtual {v0, v3, v7, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "value"

    .line 70
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huebins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "mHueBins"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saturationbins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "mSaturationBins"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saturationthreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    const-string v0, "mSaturationThreshold"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "valuethreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "mValueThreshold"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected final onProcess()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 93
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 94
    const-string v1, "huesat"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v8

    .line 95
    const-string v1, "value"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v9

    .line 97
    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mHueBins:I

    .line 98
    new-array v1, v4, [I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mHueBins:I

    aput v2, v1, v5

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mSaturationBins:I

    aput v2, v1, v6

    .line 99
    new-array v2, v6, [I

    aput v3, v2, v5

    .line 100
    invoke-virtual {v8, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameBuffer2D()Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;

    move-result-object v10

    .line 101
    invoke-virtual {v9, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameBuffer1D()Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;

    move-result-object v11

    .line 103
    invoke-virtual {v10, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 104
    invoke-virtual {v11, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 105
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 108
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 110
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mHueBins:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mSaturationBins:I

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mSaturationThreshold:I

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/histogram/LumaChromaHistogramFilter;->mValueThreshold:I

    invoke-static/range {v0 .. v7}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/Histograms;->extractHueSatValueHistogram(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IIIIILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 114
    invoke-virtual {v10}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->unlock()V

    .line 115
    invoke-virtual {v11}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->unlock()V

    .line 117
    invoke-virtual {v8, v10}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 118
    invoke-virtual {v9, v11}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 119
    return-void
.end method
