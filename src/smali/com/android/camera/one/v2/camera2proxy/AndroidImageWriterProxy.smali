.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;
.super Ljava/lang/Object;
.source "AndroidImageWriterProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy$Factory;
    }
.end annotation


# instance fields
.field private final format:I

.field private final imageWriter:Landroid/media/ImageWriter;

.field private final lock:Ljava/lang/Object;

.field private final maxImages:I


# direct methods
.method private constructor <init>(Landroid/media/ImageWriter;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->lock:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->imageWriter:Landroid/media/ImageWriter;

    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->getFormat()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->format:I

    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->getMaxImages()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->maxImages:I

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/ImageWriter;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;-><init>(Landroid/media/ImageWriter;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 83
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 51
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/media/Image;->setTimestamp(J)V

    .line 52
    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;-><init>(Landroid/media/Image;)V

    monitor-exit v1

    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v2, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v2, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getMaxImages()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->maxImages:I

    return v0
.end method

.method public final queueInputImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getAndroidImage()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->imageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v2, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 77
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    :try_start_3
    new-instance v2, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v2, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final setImageListener(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 88
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->imageWriter:Landroid/media/ImageWriter;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy$1;

    invoke-direct {v2, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy$1;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy$ImageListener;)V

    invoke-virtual {v0, v2, p2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "format"

    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageWriterProxy;->format:I

    .line 109
    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->imageFormatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method
