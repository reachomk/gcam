.class public Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "PHashFilter.java"


# static fields
.field private static final DCT_FILTER_SIZE_PORT:Ljava/lang/String; = "dctFilterSize"

.field private static final HASH_PORT:Ljava/lang/String; = "hash"

.field private static final INPUT_PORT:Ljava/lang/String; = "image"


# instance fields
.field private mDctFilterSize:I

.field private mHashResult:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "smartburst-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 26
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mDctFilterSize:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mHashResult:Ljava/nio/ByteBuffer;

    .line 32
    return-void
.end method

.method private static native phash(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36
    const/16 v0, 0x64

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v2, "image"

    .line 39
    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "dctFilterSize"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "hash"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 42
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 38
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dctFilterSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "mDctFilterSize"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mHashResult:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 57
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mDctFilterSize:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mDctFilterSize:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mHashResult:Ljava/nio/ByteBuffer;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mHashResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 61
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getDimensions()[I

    move-result-object v2

    .line 64
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameBuffer2D()Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 66
    const-string v4, "hash"

    invoke-virtual {p0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v5

    .line 69
    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mHashResult:Ljava/nio/ByteBuffer;

    aget v7, v2, v7

    aget v2, v2, v9

    iget v8, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mDctFilterSize:I

    invoke-static {v6, v3, v7, v2, v8}, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->phash(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 70
    new-array v2, v0, [F

    .line 71
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/PHashFilter;->mHashResult:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2, v9, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 72
    invoke-virtual {v5, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 75
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->unlock()V

    .line 76
    return-void
.end method
