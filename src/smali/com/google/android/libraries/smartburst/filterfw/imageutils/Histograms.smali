.class public Lcom/google/android/libraries/smartburst/filterfw/imageutils/Histograms;
.super Ljava/lang/Object;
.source "Histograms.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-string v0, "filterframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractGrayHistogram(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Ljava/nio/IntBuffer;)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/Histograms;->nativeExtractGrayHistogram(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 41
    return-void
.end method

.method public static extractGrayHistogramWithMask(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Ljava/nio/IntBuffer;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 56
    invoke-static {v0, v1, p2}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/Histograms;->nativeExtractGrayHistogram(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 59
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 60
    return-void
.end method

.method public static extractHueSatHistogram(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IILjava/nio/FloatBuffer;)V
    .locals 5

    .prologue
    .line 73
    mul-int v0, p1, p2

    .line 74
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 77
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected histogram size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but got a size of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    invoke-static {v0, p3, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/Histograms;->nativeExtractHueSatHistogram(Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;II)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 82
    return-void
.end method

.method public static extractHueSatValueHistogram(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;IIIIILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    .prologue
    .line 108
    mul-int v0, p1, p2

    .line 109
    invoke-virtual {p6}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 112
    invoke-virtual {p6}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected hueSatHistogram size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but got a size of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    invoke-virtual {p7}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 116
    invoke-virtual {p7}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected valueHistogram size of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got a size of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, p6

    move v2, p1

    move v3, p2

    move-object v4, p7

    move v5, p3

    move v6, p4

    move v7, p5

    .line 118
    invoke-static/range {v0 .. v7}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/Histograms;->nativeExtractHueSatValueHistogram(Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;IILjava/nio/FloatBuffer;III)Z

    .line 121
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 122
    return-void
.end method

.method private static native nativeExtractGrayHistogram(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;)V
.end method

.method private static native nativeExtractHueSatHistogram(Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;II)V
.end method

.method private static native nativeExtractHueSatValueHistogram(Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;IILjava/nio/FloatBuffer;III)Z
.end method
