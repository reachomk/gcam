.class final Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;
.super Ljava/lang/Object;
.source "EagerSmartMeteringProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;
.implements Lcom/google/android/apps/camera/async/Observable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Lcom/google/googlex/gcam/AeResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraId:I

.field private closed:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final forceSingleAe:Z

.field private final gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

.field private latestMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "EagerSMProcssor"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusSession;IZLjava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 86
    iput p2, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->cameraId:I

    .line 87
    iput-boolean p3, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->forceSingleAe:Z

    .line 88
    iput-object p4, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->lock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->closed:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->latestMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;)Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->latestMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    invoke-interface {v0}, Lcom/android/camera/hdrplus/HdrPlusSession;->getLatestAeResultsObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->closed:Z

    if-eqz v0, :cond_0

    .line 151
    monitor-exit v1

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->closed:Z

    .line 154
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    iget v2, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->cameraId:I

    invoke-interface {v0, v2}, Lcom/android/camera/hdrplus/HdrPlusSession;->flushViewfinder(I)V

    .line 155
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    .line 1144
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    invoke-interface {v0}, Lcom/android/camera/hdrplus/HdrPlusSession;->getLatestAeResultsObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/AeResults;

    .line 33
    return-object v0
.end method

.method public final getLatestViewfinderFrame()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final process(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->closed:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->hasImageData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->closed:Z

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->TAG:Ljava/lang/String;

    const-string v2, "No image data! Ignoring the metering frame."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    if-eqz p1, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 108
    :cond_2
    monitor-exit v1

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    iget v2, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->cameraId:I

    iget-boolean v3, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->forceSingleAe:Z

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/camera/hdrplus/HdrPlusSession;->addViewfinderFrame(IZLcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 112
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->latestMeteringMetadata:Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 113
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final startCapture()Lcom/google/common/base/Supplier;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    .line 124
    invoke-interface {v1}, Lcom/android/camera/hdrplus/HdrPlusSession;->getLatestAeResultsObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor$AeResultsListener;-><init>(Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;Lcom/google/common/util/concurrent/SettableFuture;)V

    iget-object v3, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 125
    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 122
    const/4 v1, 0x0

    .line 126
    :try_start_1
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->gcamWrapper:Lcom/android/camera/hdrplus/HdrPlusSession;

    iget v2, p0, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->cameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/hdrplus/HdrPlusSession;->flushViewfinder(I)V

    .line 134
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 128
    sget-object v1, Lcom/android/camera/one/v2/smartmetering/EagerSmartMeteringProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get the synchronized metering data."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
