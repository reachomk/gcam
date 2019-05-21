.class final Lcom/android/camera/burst/BurstFacadeRunner;
.super Ljava/lang/Object;
.source "BurstFacadeRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final autoGenerateArtifacts:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final burstCaptureCommand:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstCaptureCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final burstController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstController;",
            ">;"
        }
    .end annotation
.end field

.field private final burstHandlerThread:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final burstLifetime:Lcom/google/android/apps/camera/async/SafeCloseable;

.field private final burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

.field private final burstModeSetting:Lcom/android/camera/one/BurstModeSetting;

.field private final burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

.field private burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final burstUIController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusSessionModule;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final captureSession:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/session/StackableSession;",
            ">;"
        }
    .end annotation
.end field

.field private final captureSessionCreator:Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;

.field private final captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final deviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private final filesProxy:Lcom/android/camera/storage/FilesProxy;

.field private final imageOrientationDegrees:I

.field private final instrumentation:Lcom/android/camera/stats/Instrumentation;

.field private final previewSize:Lcom/android/camera/util/Size;

.field private final processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

.field private final readyForNextBurst:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final smartBurstLogs:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/stats/SmartBurstMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final storage:Lcom/android/camera/storage/Storage;

.field private final surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/SurfaceTextureContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "BurstFacadeRun"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/BurstFacadeRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/util/Size;Lcom/android/camera/hdrplus/HdrPlusModule;Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/processing/ProcessingServiceManager;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/one/BurstModeSetting;Lcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/hdrplus/HdrPlusSessionModule;Lcom/google/android/apps/camera/async/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/android/camera/storage/Storage;Lcom/android/camera/storage/FilesProxy;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/stats/Instrumentation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/hdrplus/HdrPlusModule;",
            "Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "I",
            "Lcom/android/camera/one/BurstModeSetting;",
            "Lcom/android/camera/burst/BurstLivePreviewController;",
            "Lcom/android/camera/hdrplus/HdrPlusSessionModule;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/SurfaceTextureContainer;",
            ">;",
            "Lcom/google/android/apps/camera/async/SafeCloseable;",
            "Lcom/android/camera/storage/Storage;",
            "Lcom/android/camera/storage/FilesProxy;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/android/camera/stats/Instrumentation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 89
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstHandlerThread:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->smartBurstLogs:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstCaptureCommand:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->readyForNextBurst:Lcom/google/common/util/concurrent/SettableFuture;

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->captureSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 129
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->appContext:Landroid/content/Context;

    .line 130
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->previewSize:Lcom/android/camera/util/Size;

    .line 131
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/hdrplus/HdrPlusModule;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    .line 136
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->captureSessionCreator:Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;

    .line 137
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/session/CaptureSessionManager;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 138
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/processing/ProcessingServiceManager;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 139
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/util/layout/Orientation;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->deviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 140
    invoke-static {p8}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCamera$Facing;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 141
    iput p9, p0, Lcom/android/camera/burst/BurstFacadeRunner;->imageOrientationDegrees:I

    .line 142
    invoke-static {p10}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/BurstModeSetting;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstModeSetting:Lcom/android/camera/one/BurstModeSetting;

    .line 143
    invoke-static {p11}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/burst/BurstLivePreviewController;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    .line 144
    invoke-static {p13}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Observable;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->autoGenerateArtifacts:Lcom/google/android/apps/camera/async/Observable;

    .line 145
    invoke-static/range {p14 .. p14}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 146
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstUIController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    invoke-static/range {p15 .. p15}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/SafeCloseable;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstLifetime:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 148
    invoke-static/range {p16 .. p16}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/Storage;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->storage:Lcom/android/camera/storage/Storage;

    .line 149
    invoke-static/range {p17 .. p17}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/FilesProxy;

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    .line 150
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 151
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstUIController:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AKJLDPN6ASHR9HL62TJ15TM62RJ75TA6GSJFETGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/burst/BurstFacadeRunner;Ljava/lang/Throwable;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)V
    .locals 2

    .prologue
    .line 50
    .line 2431
    sget-object v0, Lcom/android/camera/burst/BurstFacadeRunner;->TAG:Ljava/lang/String;

    const-string v1, "Exception while running the burst"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2433
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/UsageStatistics;->getBurstCaptureReportAccumulator()Lcom/android/camera/stats/BurstCaptureReportAccumulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/BurstCaptureReportAccumulator;->startFailedWithException()V

    .line 2435
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/camera/burst/BurstFacadeRunner$5;

    invoke-direct {v1, p2}, Lcom/android/camera/burst/BurstFacadeRunner$5;-><init>(Lcom/android/camera/hdrplus/HdrPlusSessionModule;)V

    .line 2436
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2444
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->captureSession:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackableSession;

    .line 2445
    if-eqz v0, :cond_0

    .line 2446
    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->cancel()V

    .line 2449
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/burst/BurstFacadeRunner;->cleanUp()V

    .line 50
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstController:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/camera/burst/BurstFacadeRunner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstLifetime:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->readyForNextBurst:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/stats/Instrumentation;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/burst/BurstFacadeRunner;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/camera/burst/BurstFacadeRunner;->onBurstFinishedSuccessfully()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/burst/BurstFacadeRunner;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/camera/burst/BurstFacadeRunner;->performCleanUp()V

    return-void
.end method

.method static synthetic access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AKJLDPN6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/hdrplus/HdrPlusModule;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/storage/FilesProxy;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->filesProxy:Lcom/android/camera/storage/FilesProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstCaptureCommand:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->smartBurstLogs:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/burst/BurstFacadeRunner;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/burst/BurstFacadeRunner;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->surfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AKJLDPN6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH96ASRLDHQ76J39EDQ6ARJ5E8TG____(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)Lcom/android/camera/burst/BurstResultsListener;
    .locals 1

    .prologue
    .line 50
    .line 3392
    new-instance v0, Lcom/android/camera/burst/BurstResultsListener;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/burst/BurstResultsListener;-><init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)V

    .line 50
    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->captureSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/processing/ProcessingServiceManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/storage/Storage;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->storage:Lcom/android/camera/storage/Storage;

    return-object v0
.end method

.method private final cleanUp()V
    .locals 3

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/camera/burst/BurstFacadeRunner;->stop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 459
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/camera/burst/BurstFacadeRunner$6;

    invoke-direct {v2, p0}, Lcom/android/camera/burst/BurstFacadeRunner$6;-><init>(Lcom/android/camera/burst/BurstFacadeRunner;)V

    .line 458
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->thenAlways(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V

    .line 467
    return-void
.end method

.method private final onBurstFinishedSuccessfully()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/camera/burst/BurstFacadeRunner;->cleanUp()V

    .line 454
    return-void
.end method

.method private final performCleanUp()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 470
    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 471
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstController;

    .line 472
    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lcom/android/camera/burst/BurstController;->close()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstCaptureCommand:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstHandlerThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 477
    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->smartBurstLogs:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/SmartBurstMetaData;

    .line 481
    if-eqz v0, :cond_2

    .line 482
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1487
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/stats/UsageStatistics;->smartburstCaptureDoneEvent(Lcom/android/camera/stats/SmartBurstMetaData;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 484
    :cond_2
    return-void
.end method

.method private static wasSuccessful(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Lcom/android/camera/burst/BurstFacadeRunner$7;

    invoke-direct {v0}, Lcom/android/camera/burst/BurstFacadeRunner$7;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final readyForNextBurstFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->readyForNextBurst:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final declared-synchronized run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "BurstFacadeRunner#run"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 156
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "burst_handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstHandlerThread:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1049
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v13, Lcom/google/android/apps/camera/async/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v13, v2}, Lcom/google/android/apps/camera/async/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 164
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->captureSessionCreator:Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;->createAndStartEmpty$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;

    move-result-object v9

    .line 166
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    .line 167
    const v1, 0x7f0a01e9

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v1

    invoke-interface {v9, v1}, Lcom/android/camera/session/StackableSession;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 168
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->captureSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstUIController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    invoke-virtual {v1}, Lcom/android/camera/hdrplus/HdrPlusSessionModule;->disableUI()V

    .line 172
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstModeSetting:Lcom/android/camera/one/BurstModeSetting;

    invoke-virtual {v1}, Lcom/android/camera/one/BurstModeSetting;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/libraries/smartburst/integration/BurstMode;

    move-object v12, v0

    .line 173
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->autoGenerateArtifacts:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v1}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 175
    sget-object v1, Lcom/android/camera/burst/BurstFacadeRunner;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeRunner;->deviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 178
    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    iget v3, p0, Lcom/android/camera/burst/BurstFacadeRunner;->imageOrientationDegrees:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x74

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Starting burst. Device orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " image orientation: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auto generate artifacts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/android/camera/burst/BurstController$ImageStreamProperties;

    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeRunner;->previewSize:Lcom/android/camera/util/Size;

    .line 188
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/burst/BurstFacadeRunner;->previewSize:Lcom/android/camera/util/Size;

    .line 189
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/camera/burst/BurstFacadeRunner;->imageOrientationDegrees:I

    iget-object v7, p0, Lcom/android/camera/burst/BurstFacadeRunner;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v8, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v7, v8, :cond_0

    :goto_0
    iget-object v6, p0, Lcom/android/camera/burst/BurstFacadeRunner;->deviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 192
    invoke-virtual {v6}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/burst/BurstController$ImageStreamProperties;-><init>(IIIZI)V

    .line 195
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    .line 198
    iget-object v11, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    iget-object v6, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstLivePreviewController:Lcom/android/camera/burst/BurstLivePreviewController;

    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstUIController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 206
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    .line 1343
    new-instance v2, Lcom/android/camera/burst/BurstFacadeRunner$3;

    move-object v3, p0

    move-object v4, v12

    move-object v7, v1

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/burst/BurstFacadeRunner$3;-><init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/burst/BurstController$ImageStreamProperties;Lcom/android/camera/hdrplus/HdrPlusSessionModule;Lcom/android/camera/session/StackableSession;ZLcom/android/camera/hdrplus/HdrPlusModule;)V

    invoke-static {v2}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v2

    .line 209
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    iget-object v1, v1, Lcom/android/camera/hdrplus/HdrPlusModule;->frameSaverFactory$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T374OBDCL9M2TJ5E9362ORKDTP7IEO_:Lcom/android/camera/memory/MemoryModule;

    iget v3, p0, Lcom/android/camera/burst/BurstFacadeRunner;->imageOrientationDegrees:I

    .line 214
    invoke-static {v3}, Lcom/google/android/apps/camera/util/layout/Orientation;->from(I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v3

    .line 213
    invoke-virtual {v1, v12, v3, v5}, Lcom/android/camera/memory/MemoryModule;->create(Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/burst/FrameSaver;

    move-result-object v1

    .line 217
    iget-object v3, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstCaptureCommand:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    iget-object v4, v4, Lcom/android/camera/hdrplus/HdrPlusModule;->burstCaptureCommandFactory$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH1M2S3KELP6AGRFDLMM2RJ48PGM6T3FE9SJM___:Lcom/android/camera/data/FilmstripDataModule;

    .line 218
    invoke-virtual {v4, v2, v1, v12}, Lcom/android/camera/data/FilmstripDataModule;->newBurstCaptureCommand(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/FrameSaver;Lcom/google/android/libraries/smartburst/integration/BurstMode;)Lcom/android/camera/burst/BurstCaptureCommand;

    move-result-object v1

    .line 217
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v13, v2}, Lcom/google/android/apps/camera/async/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 224
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstProcessingParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    iget-object v3, v1, Lcom/android/camera/hdrplus/HdrPlusModule;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstCaptureCommand:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-virtual {v3, v1}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :goto_1
    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 230
    invoke-static {v2}, Lcom/android/camera/burst/BurstFacadeRunner;->wasSuccessful(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/burst/BurstFacadeRunner;->wasSuccessful(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 232
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;

    invoke-direct {v2, p0, v5}, Lcom/android/camera/burst/BurstFacadeRunner$GetBurstSessionDirectory;-><init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 233
    invoke-static {v1, v2, v13}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 238
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/android/camera/burst/BurstFacadeRunner$1;

    invoke-direct {v2, p0}, Lcom/android/camera/burst/BurstFacadeRunner$1;-><init>(Lcom/android/camera/burst/BurstFacadeRunner;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 253
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 254
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    move v5, v6

    .line 189
    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    :try_start_3
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized stop()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :goto_0
    monitor-exit p0

    return-object v0

    .line 262
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running burst had no start future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 266
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    .line 271
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStartedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/android/camera/burst/BurstFacadeRunner$2;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/burst/BurstFacadeRunner$2;-><init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/google/android/apps/camera/async/MainThread;)V

    .line 272
    invoke-static {v1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 321
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner;->burstStoppedFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
