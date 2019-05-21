.class final Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;
.implements Lcom/android/camera/one/v2/lifecycle/StartTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$StateCallback;
    }
.end annotation


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final deferredSessionFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

.field private final handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

.field private final inFlightPrepareRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/Surface;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inputConfig:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private final streamConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/Set;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/error/FatalErrorHandler;Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/common/base/Optional;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/debug/trace/Trace;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/error/FatalErrorHandler;",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;",
            "Lcom/android/camera/util/ApiHelper;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p5, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    .line 90
    const-string v0, "CmrCptrSssnCrtr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->log:Lcom/android/camera/debug/Logger;

    .line 91
    iput-object p2, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->deviceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 92
    iput-object p1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 93
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->streamConfigs:Ljava/util/List;

    .line 94
    iput-object p6, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->handlerFactory:Lcom/google/android/apps/camera/async/HandlerFactory;

    .line 95
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 96
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->deferredSessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 97
    iput-object p7, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->inputConfig:Lcom/google/common/base/Optional;

    .line 98
    iput-object p8, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->lock:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->started:Z

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->inFlightPrepareRequests:Ljava/util/Map;

    .line 102
    iput-object p9, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 103
    iput-object p10, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->log:Lcom/android/camera/debug/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->toSurfaceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->deferredSessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/error/FatalErrorHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->inFlightPrepareRequests:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->validateConfigurations(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->inputConfig:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method private static toSurfaceList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 301
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;

    .line 302
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 303
    const-string v3, "Surface must not be null when adding to surface list."

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_0
    return-object v1
.end method

.method private static validateConfigurations(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;

    .line 312
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_1
    const-string v5, "Configuration %s is not valid"

    new-array v6, v3, [Ljava/lang/Object;

    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_1

    .line 316
    :cond_2
    return-void
.end method


# virtual methods
.method public final getDeferredSessionFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->deferredSessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final getSessionFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final prepare(Landroid/view/Surface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->inFlightPrepareRequests:Ljava/util/Map;

    .line 323
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Surface already being prepared!"

    .line 322
    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->inFlightPrepareRequests:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$4;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;Landroid/view/Surface;ILcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->started:Z

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 171
    monitor-exit v1

    .line 296
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->started:Z

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->streamConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    .line 179
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->getOutputConfiguration()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 182
    :cond_1
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->streamConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    .line 188
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->isDeferred()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->getDeferredOutputConfiguration()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    :cond_3
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->deviceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v3, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$1;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V

    iget-object v4, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 197
    invoke-static {v2, v1, v3, v4}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$AsyncFunction2;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 255
    new-instance v2, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$2;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 284
    new-instance v0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$3;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator$3;-><init>(Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;)V

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;->sessionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_0
.end method
