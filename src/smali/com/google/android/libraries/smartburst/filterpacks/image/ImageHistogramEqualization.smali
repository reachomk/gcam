.class public final Lcom/google/android/libraries/smartburst/filterpacks/image/ImageHistogramEqualization;
.super Ljava/lang/Object;
.source "ImageHistogramEqualization.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImageHistogramEqualization"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "smartburst-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static applyImageHistogramEqualization(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v3, p1, p2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 35
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v3, p1, p2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 36
    if-lez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 37
    if-lez p2, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageHistogramEqualization;->doHistogramEqualization(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v0, v2

    .line 35
    goto :goto_1

    :cond_2
    move v0, v2

    .line 36
    goto :goto_2

    :cond_3
    move v1, v2

    .line 37
    goto :goto_3
.end method

.method private static native doHistogramEqualization(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
.end method
