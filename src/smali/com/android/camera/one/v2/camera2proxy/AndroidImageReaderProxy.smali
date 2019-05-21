.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;
.super Ljava/lang/Object;
.source "AndroidImageReaderProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;


# instance fields
.field private final delegate:Landroid/media/ImageReader;

.field private final lock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/media/ImageReader;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/ImageReader;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;)V

    return-void
.end method

.method public static getFactory()Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$Factory;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    .line 83
    if-nez v2, :cond_0

    .line 84
    const/4 v0, 0x0

    monitor-exit v1

    .line 86
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;-><init>(Landroid/media/Image;)V

    monitor-exit v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    .line 96
    if-nez v2, :cond_0

    .line 97
    const/4 v0, 0x0

    monitor-exit v1

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {v0, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;-><init>(Landroid/media/Image;)V

    monitor-exit v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 123
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final discardFreeBuffers()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-static {v0}, Lcom/google/android/camera/support/v23/experimental/Experimental;->discardFreeBuffers(Landroid/media/ImageReader;)V

    .line 143
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    monitor-exit v1

    return v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getImageFormat()I
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    monitor-exit v1

    return v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getMaxImages()I
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    monitor-exit v1

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    monitor-exit v1

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setOnImageAvailableListener(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$2;

    invoke-direct {v2, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy$2;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;)V

    invoke-virtual {v0, v2, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 116
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->delegate:Landroid/media/ImageReader;

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "height"

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "format"

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->getImageFormat()I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->imageFormatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "max images"

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->getMaxImages()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
