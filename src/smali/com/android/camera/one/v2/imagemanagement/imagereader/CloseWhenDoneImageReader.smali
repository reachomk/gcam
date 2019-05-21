.class public final Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;
.source "CloseWhenDoneImageReader.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;,
        Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;
    }
.end annotation


# instance fields
.field private closePending:Z

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private openImages:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->lock:Ljava/lang/Object;

    .line 87
    iput-boolean v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closed:Z

    .line 88
    iput v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->decrementImageCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closePending:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->drainOrClose()V

    return-void
.end method

.method private final decrementImageCount()V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    .line 142
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closePending:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->drainOrClose()V

    .line 145
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

.method private final drainOrClose()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closed:Z

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closed:Z

    .line 160
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->close()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->discardFreeBuffers()V

    goto :goto_0
.end method


# virtual methods
.method public final acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closed:Z

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_0

    .line 113
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    .line 114
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    monitor-exit v1

    .line 118
    :goto_0
    return-object v0

    .line 117
    :cond_0
    monitor-exit v1

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    .line 117
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
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closed:Z

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->openImages:I

    .line 99
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$ImageDecorator;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    monitor-exit v1

    .line 103
    :goto_0
    return-object v0

    .line 102
    :cond_0
    monitor-exit v1

    .line 103
    const/4 v0, 0x0

    goto :goto_0

    .line 102
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
    .line 123
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closePending:Z

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    monitor-exit v1

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->closePending:Z

    .line 128
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;->drainOrClose()V

    .line 129
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setOnImageAvailableListener(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader$DrainAfterClose;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/CloseWhenDoneImageReader;Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;)V

    invoke-super {p0, v0, p2}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->setOnImageAvailableListener(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 137
    return-void
.end method
