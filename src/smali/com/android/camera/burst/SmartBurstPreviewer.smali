.class public final Lcom/android/camera/burst/SmartBurstPreviewer;
.super Ljava/lang/Object;
.source "SmartBurstPreviewer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/BurstController;Lcom/android/camera/burst/BurstLivePreviewController;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    iput-object p2, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    .line 22
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstLivePreviewController;->stop()V

    .line 62
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Burst closed while running"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/camera/burst/BurstLivePreviewController;->showError$5166KOBMC4NMOOBECSNL8Q3IDTRM2OJCCKTIILG_()V

    .line 64
    :cond_0
    return-void
.end method

.method public final declared-synchronized showCount(I)V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    invoke-interface {v0, p1}, Lcom/android/camera/burst/BurstLivePreviewController;->showCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final showError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstLivePreviewController;->showError$5166KOBMC4NMOOBECSNL8Q3IDTRM2OJCCKTIILG_()V

    .line 56
    return-void
.end method

.method public final declared-synchronized start(Lcom/google/android/libraries/smartburst/integration/BurstMode;)V
    .locals 3

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstLivePreviewController;->start$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ2ELP76T2DDTI6AEP9AO______()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstPreviewer;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstLivePreviewController;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
