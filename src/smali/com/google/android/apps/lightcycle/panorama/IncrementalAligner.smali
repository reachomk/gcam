.class public final Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
.super Ljava/lang/Thread;
.source "IncrementalAligner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private doneCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private final imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processingImages:Z

.field private shutdownNow:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "IncrementalAligner"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 30
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->shutdownNow:Ljava/lang/Boolean;

    .line 38
    return-void
.end method


# virtual methods
.method public final alignNextImage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 156
    const-string v0, "alignNextImage called for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected interruption"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final interrupt()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    const-string v1, "Poison Pill"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public final isProcessingImages()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    return v0
.end method

.method public final run()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->imagesToProcess:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    .line 68
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Ljava/lang/String;

    .line 70
    const-string v6, "Poison Pill"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v2

    .line 86
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->processingImages:Z

    .line 87
    if-eqz v0, :cond_0

    .line 92
    :cond_2
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->TAG:Ljava/lang/String;

    const-string v1, "Incremental aligner shutting down. Firing callback ..."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 96
    :cond_3
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->TAG:Ljava/lang/String;

    const-string v1, "Incremental aligner thread shut down. Bye."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 76
    :cond_4
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->shutdownNow:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v2

    .line 78
    goto :goto_2

    .line 82
    :cond_5
    const-string v6, "Processing file "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    :goto_3
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycle;->alignNextImage()V

    goto :goto_1

    .line 82
    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public final declared-synchronized shutdownNow$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IncrementalAligner is already shut down."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->doneCallback$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->shutdownNow:Ljava/lang/Boolean;

    .line 136
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-void
.end method

.method public final start()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method
