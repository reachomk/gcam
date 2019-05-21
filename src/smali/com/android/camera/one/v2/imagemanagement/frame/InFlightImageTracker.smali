.class final Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;
.super Ljava/lang/Object;
.source "InFlightImageTracker.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private closed:Z

.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

.field private final inFlightImageTickets:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->lock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->inFlightImageTickets:Ljava/util/Queue;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->closed:Z

    .line 40
    return-void
.end method


# virtual methods
.method public final addOrCloseImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    .line 68
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->closed:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 78
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 81
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 83
    :goto_1
    return-object v0

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->inFlightImageTickets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 76
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/util/TicketImageProxy;

    invoke-direct {v2, p1, v0}, Lcom/android/camera/one/v2/imagemanagement/util/TicketImageProxy;-><init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    move-object p1, v1

    move-object v0, v2

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    invoke-interface {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->addOrCloseImage(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->closed:Z

    .line 97
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->inFlightImageTickets:Ljava/util/Queue;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/CloseableList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->inFlightImageTickets:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 102
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->delegate:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final onStarted$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIILG_(Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->closed:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p1}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 58
    monitor-exit v1

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->inFlightImageTickets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
