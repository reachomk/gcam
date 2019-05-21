.class final Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;
.super Ljava/lang/Object;
.source "FrameSynchronizer.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$Source;,
        Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;,
        Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final frameSink:Lcom/google/android/apps/camera/async/BufferQueueController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final numSources:I

.field private final pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/SettableObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingFrames:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final ticketProvider:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

.field private final transactionalPendingFrameCount:Lcom/google/android/apps/camera/async/TransactionalObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/TransactionalObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;Lcom/google/android/apps/camera/async/BufferQueueController;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            "Lcom/google/android/apps/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-boolean v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->closed:Z

    .line 339
    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 340
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->ticketProvider:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 341
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->frameSink:Lcom/google/android/apps/camera/async/BufferQueueController;

    .line 342
    iput p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->numSources:I

    .line 343
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->lock:Ljava/lang/Object;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->sourceRecords:Ljava/util/List;

    move v0, v1

    .line 345
    :goto_1
    if-ge v0, p3, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->sourceRecords:Ljava/util/List;

    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;

    invoke-direct {v3}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 339
    goto :goto_0

    .line 348
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    .line 349
    new-instance v0, Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/SettableObservable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;

    .line 350
    new-instance v0, Lcom/google/android/apps/camera/async/TransactionalObservable;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;

    .line 351
    invoke-static {v1}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/TransactionalObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->transactionalPendingFrameCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->closed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->sourceRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Lcom/google/android/apps/camera/async/BufferQueueController;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->frameSink:Lcom/google/android/apps/camera/async/BufferQueueController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pruneSourceRecords()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->ticketProvider:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Lcom/google/android/apps/camera/async/TransactionalObservable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->transactionalPendingFrameCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;Lcom/android/camera/one/v2/core/ImageId;)Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->isImageAlreadySeen(Lcom/android/camera/one/v2/core/ImageId;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->numSources:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;)Lcom/google/android/apps/camera/async/SettableObservable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;

    return-object v0
.end method

.method private final isImageAlreadySeen(Lcom/android/camera/one/v2/core/ImageId;)Z
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->sourceRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;

    .line 370
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;->access$1100(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x1

    monitor-exit v1

    .line 375
    :goto_0
    return v0

    .line 374
    :cond_1
    monitor-exit v1

    .line 375
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final pruneSourceRecords()V
    .locals 7

    .prologue
    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 380
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->sourceRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;

    .line 384
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;->access$1100(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v0

    .line 385
    goto :goto_0

    .line 387
    :cond_0
    if-eq v3, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->sourceRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;

    move v1, v2

    .line 390
    :goto_2
    if-ge v1, v3, :cond_1

    .line 391
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;->access$1100(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 387
    goto :goto_1

    .line 394
    :cond_3
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->closed:Z

    if-eqz v3, :cond_1

    .line 402
    monitor-exit v2

    .line 414
    :cond_0
    return-void

    .line 404
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->closed:Z

    .line 405
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 407
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 408
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 411
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;

    .line 412
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->abort()V

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final flushTicket()Z
    .locals 4

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    monitor-exit v1

    .line 443
    :goto_0
    return v0

    .line 431
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 432
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;

    .line 433
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->access$1400(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;)Lcom/android/camera/one/v2/core/ImageId;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 436
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ImageId;

    .line 438
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;

    .line 439
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrames:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/SettableObservable;->setWithoutNotifying(Ljava/lang/Object;)V

    .line 440
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->abort()V

    .line 442
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->pendingFrameCount:Lcom/google/android/apps/camera/async/SettableObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/SettableObservable;->notifyListeners()V

    .line 443
    const/4 v0, 0x1

    goto :goto_0
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
    .line 418
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->transactionalPendingFrameCount:Lcom/google/android/apps/camera/async/TransactionalObservable;

    return-object v0
.end method

.method public final getImageSink(I)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 360
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->numSources:I

    if-ge p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 361
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$Source;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$Source;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;IB)V

    return-object v0

    :cond_0
    move v0, v2

    .line 359
    goto :goto_0

    :cond_1
    move v1, v2

    .line 360
    goto :goto_1
.end method
