.class final Lcom/android/camera/one/v2/autofocus/FocusMonitor;
.super Ljava/lang/Object;
.source "FocusMonitor.java"


# instance fields
.field private focusScanFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final focusScanStateListener:Lcom/android/camera/one/v2/core/ResponseListener;

.field private isTriggered:Z

.field private final lock:Ljava/lang/Object;

.field private final triggerResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

.field private triggeredFrameNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/autofocus/FocusMonitor$1;-><init>(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->focusScanStateListener:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 66
    new-instance v0, Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/autofocus/FocusMonitor$2;-><init>(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->triggerResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->lock:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->isTriggered:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/one/v2/autofocus/FocusMonitor;Z)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->isTriggered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/autofocus/FocusMonitor;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->triggeredFrameNumber:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/camera/one/v2/autofocus/FocusMonitor;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->triggeredFrameNumber:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/autofocus/FocusMonitor;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->processCaptureResult(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    return-void
.end method

.method private final processCaptureResult(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 124
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->triggeredFrameNumber:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x78

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    .line 125
    :cond_0
    sget-object v3, Lcom/android/camera/one/v2/autofocus/AfTriggerResult;->AF_TRIGGER_DONE_STATES:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 126
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->isTriggered:Z

    .line 127
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->focusScanFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getFocusScanFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->focusScanFuture:Lcom/google/common/util/concurrent/SettableFuture;

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getFocusScanStateListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->focusScanStateListener:Lcom/android/camera/one/v2/core/ResponseListener;

    return-object v0
.end method

.method public final getTriggerResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->triggerResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    return-object v0
.end method

.method public final reset()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->focusScanFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->focusScanFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 116
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->focusScanFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->isTriggered:Z

    .line 118
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
