.class final Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;
.super Ljava/lang/Object;
.source "YuvWriter.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static writeChromaPlanes(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;IILjava/io/ByteArrayOutputStream;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v5

    .line 54
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v6

    .line 56
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [B

    .line 57
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [B

    move v2, v1

    .line 59
    :goto_0
    if-ge v2, p3, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    array-length v0, v7

    invoke-virtual {v3, v7, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 63
    array-length v0, v8

    invoke-virtual {v4, v8, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v0, v1

    .line 65
    :goto_1
    if-ge v0, p2, :cond_0

    .line 66
    mul-int v9, v0, v5

    .line 67
    mul-int v10, v0, v6

    .line 69
    aget-byte v10, v8, v10

    invoke-virtual {p4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 70
    aget-byte v9, v7, v9

    invoke-virtual {p4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method private static writeLumaPlane(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;IILjava/io/ByteArrayOutputStream;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v4

    .line 36
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getPixelStride()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [B

    move v2, v1

    .line 37
    :goto_0
    if-ge v2, p2, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;->getRowStride()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    array-length v0, v5

    invoke-virtual {v3, v5, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v0, v1

    .line 40
    :goto_1
    if-ge v0, p1, :cond_0

    .line 41
    mul-int v6, v0, v4

    .line 42
    aget-byte v6, v5, v6

    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final writeAndCloseImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    const/16 v2, 0x23

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 78
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 1024
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    .line 1025
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1026
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1027
    mul-int v4, v1, v3

    .line 1028
    mul-int/2addr v1, v3

    .line 1029
    add-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 78
    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 80
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 81
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v3, v2}, Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;->writeLumaPlane(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;IILjava/io/ByteArrayOutputStream;)V

    .line 83
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 84
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    .line 86
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 85
    invoke-static {v0, v1, v3, v4, v2}, Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;->writeChromaPlanes(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;IILjava/io/ByteArrayOutputStream;)V

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 91
    return-void

    :cond_0
    move v0, v1

    .line 76
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    throw v0
.end method
