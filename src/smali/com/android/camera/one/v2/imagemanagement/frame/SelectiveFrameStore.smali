.class final Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;
.super Ljava/lang/Object;
.source "SelectiveFrameStore.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;


# instance fields
.field private closed:Z

.field private final frameCount:Lcom/google/android/apps/camera/async/PollingObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/PollingObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ForkableFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final requirement:Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

.field private final targetSize:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;I)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->requirement:Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

    .line 44
    iput p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->targetSize:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/google/android/apps/camera/async/PollingObservable;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/PollingObservable;-><init>(Lcom/google/common/base/Supplier;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frameCount:Lcom/google/android/apps/camera/async/PollingObservable;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->closed:Z

    .line 95
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/CloseableList;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frameCount:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 99
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 100
    return-void

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final dumpFrames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 135
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/camera/async/Futures2;->poll(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 138
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->requirement:Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

    invoke-interface {v6, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;->discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 139
    :goto_1
    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 138
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 143
    :cond_1
    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frameCount:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 149
    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 150
    return-object v3
.end method

.method public final flushTicket()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 116
    new-instance v1, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 118
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v0, 0x1

    .line 123
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 125
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frameCount:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 126
    return v0

    .line 123
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final forkFrames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ForkableFrame;

    .line 159
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForkableFrame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/camera/async/Futures2;->poll(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 162
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->requirement:Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

    invoke-interface {v6, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;->discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 163
    :goto_1
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 162
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ForkableFrame;->fork()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 172
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frameCount:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 174
    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 175
    return-object v3
.end method

.method public final getFlushableTicketCount()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frameCount:Lcom/google/android/apps/camera/async/PollingObservable;

    return-object v0
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->closed:Z

    monitor-exit v1

    return v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic update(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 22
    check-cast p1, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 1062
    new-instance v2, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 1063
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/ForkableFrame;->createAndClose(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;)Lcom/android/camera/one/v2/imagemanagement/frame/ForkableFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 1068
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getImageCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1069
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1072
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/camera/async/Futures2;->poll(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 1073
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->requirement:Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

    invoke-interface {v5, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;->discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1077
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->closed:Z

    if-eqz v0, :cond_3

    .line 1078
    invoke-virtual {v2, p1}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 1080
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1082
    :goto_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->targetSize:I

    if-le v0, v1, :cond_4

    .line 1083
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1085
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->frameCount:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 1087
    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 22
    return-void
.end method
