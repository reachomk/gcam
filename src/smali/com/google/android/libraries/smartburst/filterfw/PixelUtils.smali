.class public Lcom/google/android/libraries/smartburst/filterfw/PixelUtils;
.super Ljava/lang/Object;
.source "PixelUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "filterframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyPixels(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input and output buffers must have the same size!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input buffer size must be a multiple of 4!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output buffer size must be a multiple of 4!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    mul-int v0, p2, p3

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input buffer size does not match given dimensions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    mul-int v0, p2, p3

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output buffer size does not match given dimensions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_4
    invoke-static/range {p0 .. p6}, Lcom/google/android/libraries/smartburst/filterfw/PixelUtils;->nativeCopyPixels(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    .line 50
    return-void
.end method

.method private static native nativeCopyPixels(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V
.end method
