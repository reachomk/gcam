.class final Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;
.source "CloseWhenDoneImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;
    }
.end annotation


# instance fields
.field private closePending:Z

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private openImages:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;)V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->lock:Ljava/lang/Object;

    .line 55
    iput-boolean v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closed:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closePending:Z

    .line 57
    iput v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->openImages:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->decrementImageCount()V

    return-void
.end method

.method private final decrementImageCount()V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->openImages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->openImages:I

    .line 97
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closePending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->openImages:I

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closed:Z

    .line 99
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->close()V

    .line 101
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closePending:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    monitor-exit v1

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closePending:Z

    .line 87
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->openImages:I

    if-nez v0, :cond_2

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closed:Z

    .line 89
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->close()V

    .line 91
    :cond_2
    monitor-exit v1

    goto :goto_0

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
    .line 63
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 67
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageWriter;->dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    :try_end_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 73
    :try_start_2
    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->openImages:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;->openImages:I

    .line 74
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter$ImageDecorator;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CloseWhenDoneImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    monitor-exit v1

    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 71
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v1, "Cannot dequeueInputImage from a closed ImageWriter"

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
