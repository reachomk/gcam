.class public final Lcom/android/camera/processing/LightcycleLensBlurTaskManager;
.super Ljava/lang/Object;
.source "LightcycleLensBlurTaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final currentMemoryUsage:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final featureMemoryReady:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isProcessing:Z

.field private final lock:Ljava/lang/Object;

.field private final maxMemoryBytes:J

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final taskFinishedCallback:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "LcLbTaskManager"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/processing/ProcessingServiceManager;)V
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->currentMemoryUsage:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 78
    iput-object p3, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->queue:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->lock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->isProcessing:Z

    .line 85
    const-wide/32 v0, 0x11e1a300

    .line 86
    invoke-virtual {p2}, Lcom/android/camera/memory/MaxNativeMemory;->getMaxAllowedNativeMemoryBytes()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->maxMemoryBytes:J

    .line 89
    new-instance v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$1;-><init>(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/memory/MemoryManager;->registerFeature(Lcom/android/camera/memory/FeatureMemoryUsage;)Z

    .line 109
    sget-object v0, Lcom/android/camera/memory/Feature;->LIGHTCYCLE_REFOCUS:Lcom/android/camera/memory/Feature;

    invoke-virtual {p1, v0}, Lcom/android/camera/memory/MemoryManager;->getAvailability(Lcom/android/camera/memory/Feature;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->featureMemoryReady:Lcom/google/android/apps/camera/async/Observable;

    .line 113
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->featureMemoryReady:Lcom/google/android/apps/camera/async/Observable;

    new-instance v1, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;

    invoke-direct {v1, p0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;-><init>(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V

    .line 125
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 128
    new-instance v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$3;-><init>(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V

    iput-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->taskFinishedCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->currentMemoryUsage:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->maxMemoryBytes:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->isProcessing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->featureMemoryReady:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->startNextTask()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->onTaskDone()V

    return-void
.end method

.method private final onTaskDone()V
    .locals 8

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->isProcessing:Z

    .line 208
    iget-object v2, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->currentMemoryUsage:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->currentMemoryUsage:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->maxMemoryBytes:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 209
    invoke-direct {p0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->startNextTask()V

    .line 210
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final startNextTask()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/ProcessingTask;

    invoke-direct {p0, v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->startTask(Lcom/android/camera/processing/ProcessingTask;)V

    .line 200
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

.method private final startTask(Lcom/android/camera/processing/ProcessingTask;)V
    .locals 8

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    sget-object v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Memory OK, processing task ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->isProcessing:Z

    .line 186
    iget-object v2, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->currentMemoryUsage:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->currentMemoryUsage:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->maxMemoryBytes:J

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->taskFinishedCallback:Lcom/google/android/apps/camera/util/Callback;

    invoke-interface {p1, v0}, Lcom/android/camera/processing/ProcessingTask;->setFinishedCallback(Lcom/google/android/apps/camera/util/Callback;)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/processing/ProcessingServiceManager;->enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V

    .line 189
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
.method public final enqueue(Lcom/android/camera/processing/ProcessingTask;)V
    .locals 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->featureMemoryReady:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->startTask(Lcom/android/camera/processing/ProcessingTask;)V

    .line 158
    :goto_0
    monitor-exit v1

    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Memory low, delaying processing ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final enqueue(Lcom/google/android/apps/refocus/processing/RenderingTask;)V
    .locals 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->featureMemoryReady:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->startTask(Lcom/android/camera/processing/ProcessingTask;)V

    .line 175
    :goto_0
    monitor-exit v1

    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Memory low, delaying processing ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/google/android/apps/refocus/processing/RenderingTask;->releaseRgbz()V

    .line 173
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getMaxMemoryBytes()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->maxMemoryBytes:J

    return-wide v0
.end method
