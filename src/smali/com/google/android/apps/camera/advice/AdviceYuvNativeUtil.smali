.class public final Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;
.super Ljava/lang/Object;
.source "AdviceYuvNativeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downsampleYuv_420_888ToNV21Native(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)[Ljava/nio/ByteBuffer;
    .locals 14

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 45
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v0

    .line 46
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v1

    .line 47
    if-lez p1, :cond_0

    .line 48
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;->finalDimensionsEven(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1124
    div-int v2, v0, p1

    const/16 v3, 0x280

    if-lt v2, v3, :cond_1

    div-int v2, v1, p1

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    .line 49
    :goto_0
    if-nez v2, :cond_2

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_1
    return-object v0

    .line 1124
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 54
    :cond_2
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v3

    .line 55
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 56
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 57
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 59
    mul-int v2, v0, v1

    mul-int v3, p1, p1

    div-int/2addr v2, v3

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 62
    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 68
    invoke-virtual {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 69
    invoke-virtual {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    .line 70
    invoke-virtual {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v4

    .line 71
    invoke-virtual {v7}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 72
    invoke-virtual {v7}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v6

    .line 73
    invoke-virtual {v7}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v7

    .line 74
    invoke-virtual {v10}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 75
    invoke-virtual {v10}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v9

    .line 76
    invoke-virtual {v10}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v10

    move v13, p1

    .line 65
    invoke-static/range {v0 .. v13}, Lcom/google/android/apps/camera/jni/yuv/YuvUtilNative;->downsampleYUV_420_888toNV21Native(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    goto :goto_1

    .line 87
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static finalDimensionsEven(III)Z
    .locals 1

    .prologue
    .line 120
    div-int v0, p0, p2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    div-int v0, p1, p2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findDownsampleSize(II)I
    .locals 2

    .prologue
    .line 107
    div-int/lit16 v0, p0, 0x280

    div-int/lit16 v1, p1, 0x1e0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    if-lez v0, :cond_0

    .line 110
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/camera/advice/AdviceYuvNativeUtil;->finalDimensionsEven(III)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0
.end method
