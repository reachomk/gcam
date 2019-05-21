.class public Lcom/google/android/libraries/smartburst/training/MetadataSerializer;
.super Ljava/lang/Object;
.source "MetadataSerializer.java"


# instance fields
.field private final log:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 1

    .prologue
    .line 2024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2025
    const-string v0, "NatY420_888Copier"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/training/MetadataSerializer;->log:Lcom/android/camera/debug/Logger;

    .line 2026
    return-void
.end method

.method private static copyYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 15

    .prologue
    .line 2074
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v7

    .line 2075
    invoke-interface/range {p1 .. p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v13

    .line 2078
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v0

    .line 2079
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 2080
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    .line 2081
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x2

    .line 2082
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 2083
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v5}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v5

    const/4 v6, 0x1

    .line 2084
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v6

    const/4 v8, 0x1

    .line 2085
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v7}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v7

    const/4 v8, 0x0

    .line 2086
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v8}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x1

    .line 2087
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v9}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x2

    .line 2088
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v10}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v11, 0x0

    .line 2089
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v11}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v11

    const/4 v12, 0x1

    .line 2090
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v12}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v12

    const/4 v14, 0x1

    .line 2091
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    invoke-virtual {v13}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v13

    .line 2077
    invoke-static/range {v0 .. v13}, Lcom/google/android/apps/camera/jni/yuv/YuvUtilNative;->copyYUV_420_888(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)Z

    move-result v0

    .line 2093
    if-nez v0, :cond_0

    .line 2094
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Copy failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2098
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 2099
    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 2101
    :cond_1
    return-void
.end method


# virtual methods
.method public copyImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 6

    .prologue
    const/16 v4, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1030
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1033
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1034
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    if-eq v0, v4, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 1035
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1036
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v2

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1038
    invoke-virtual {v0, v1}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "source image size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is different with destination image size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-static {v2, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 1047
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 1048
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1050
    invoke-static {p1, p2}, Lcom/google/android/libraries/smartburst/training/MetadataSerializer;->copyYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 1052
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 1053
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/training/MetadataSerializer;->log:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Done Image Copy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 1054
    return-void

    :cond_0
    move v0, v2

    .line 1032
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1033
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 1034
    goto/16 :goto_2

    .line 1055
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported image format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
