.class public final Lcom/android/camera/module/capture/CaptureOneCameraCreator;
.super Ljava/lang/Object;
.source "CaptureOneCameraCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final burstFacade:Lcom/android/camera/burst/BurstFacade;

.field private camera:Lcom/android/camera/one/OneCamera;

.field private currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final hdrPlusSetting:Lcom/android/camera/one/HdrPlusSetting;

.field private final hdrSceneSetting:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentation:Lcom/android/camera/stats/Instrumentation;

.field private isCameraClosed:Lcom/google/android/apps/camera/async/IsClosed;

.field private final lock:Ljava/lang/Object;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final metricBuilder:Lcom/android/camera/debug/performance/MetricBuilder;

.field private final oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

.field private final oneCameraManger:Lcom/android/camera/one/OneCameraManager;

.field private final oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

.field private openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/android/camera/settings/Settings;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

.field private final zoom:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "Capture1CC"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/MainThread;Ljava/util/concurrent/Executor;Lcom/android/camera/settings/Settings;Lcom/android/camera/one/HdrPlusSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/OneCameraOpener;Landroid/util/DisplayMetrics;Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/debug/trace/Trace;Lcom/android/camera/debug/performance/MetricBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/settings/Settings;",
            "Lcom/android/camera/one/HdrPlusSetting;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            "Lcom/android/camera/one/OneCameraManager;",
            "Lcom/android/camera/one/OneCameraOpener;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/camera/burst/BurstFacadeImpl;",
            "Lcom/android/camera/stats/Instrumentation;",
            "Lcom/android/camera/debug/trace/Trace;",
            "Lcom/android/camera/debug/performance/MetricBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 109
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->executor:Ljava/util/concurrent/Executor;

    .line 110
    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->hdrPlusSetting:Lcom/android/camera/one/HdrPlusSetting;

    .line 111
    iput-object p5, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->hdrSceneSetting:Lcom/google/android/apps/camera/async/Observable;

    .line 112
    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->settings:Lcom/android/camera/settings/Settings;

    .line 113
    iput-object p6, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    .line 114
    iput-object p7, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraManger:Lcom/android/camera/one/OneCameraManager;

    .line 115
    iput-object p8, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    .line 116
    iput-object p9, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 117
    new-instance v0, Lcom/android/camera/burst/SingleSourceBurstFacade;

    invoke-direct {v0, p10}, Lcom/android/camera/burst/SingleSourceBurstFacade;-><init>(Lcom/android/camera/burst/BurstFacade;)V

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->burstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 118
    iput-object p11, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    .line 119
    iput-object p12, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 120
    iput-object p13, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->metricBuilder:Lcom/android/camera/debug/performance/MetricBuilder;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;Lcom/android/camera/ui/viewfinder/Viewfinder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openViewfinderSurface(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;Lcom/android/camera/ui/viewfinder/Viewfinder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/capture/CaptureOneCameraCreator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method private final checkExistingCameraConfig(Lcom/android/camera/module/OneModuleConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/OneModuleConfig;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraManger:Lcom/android/camera/one/OneCameraManager;

    iget-object v1, p1, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 191
    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->hdrPlusSetting:Lcom/android/camera/one/HdrPlusSetting;

    .line 194
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrPlusSupported()Z

    move-result v0

    .line 193
    invoke-static {p1, v1, v0}, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->from(Lcom/android/camera/module/OneModuleConfig;Lcom/android/camera/one/HdrPlusSetting;Z)Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->camera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->isCameraClosed:Lcom/google/android/apps/camera/async/IsClosed;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->isCameraClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 199
    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    sget-object v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    const-string v2, "Camera with the same configuration is already open, returning it."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->camera:Lcom/android/camera/one/OneCamera;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 219
    :goto_0
    return-object v0

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->isCameraClosed:Lcom/google/android/apps/camera/async/IsClosed;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->isCameraClosed:Lcom/google/android/apps/camera/async/IsClosed;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/IsClosed;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    sget-object v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    const-string v2, "Camera with the same configuration is opening, returning Future."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v1

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 206
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    const-string v3, "Camera with the same configuration exists, but has not been closed. Stopping and starting over."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->stop()V

    .line 217
    :cond_3
    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    .line 218
    monitor-exit v1

    .line 219
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->camera:Lcom/android/camera/one/OneCamera;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method private final createAndStartOneCameraInternal(Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/OneModuleConfig;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->oneCamera()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->create()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/OneCameraSession;

    .line 231
    invoke-virtual {v0}, Lcom/android/camera/stats/OneCameraSession;->recordOneCameraPrepare()V

    .line 233
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "OneCamera#create"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->createOneCamera(Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/stats/OneCameraSession;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Lcom/android/camera/stats/OneCameraSession;->recordOneCameraCreated()V

    .line 238
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "OneCamera#start"

    invoke-interface {v2, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1258
    sget-object v2, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    const-string v3, "Starting OneCamera"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->metricBuilder:Lcom/android/camera/debug/performance/MetricBuilder;

    const-string v3, "StartOneCamera"

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/debug/performance/MetricBuilder;->startMetric(Ljava/lang/String;J)Lcom/android/camera/debug/performance/Metric;

    move-result-object v2

    .line 1260
    invoke-virtual {v0}, Lcom/android/camera/stats/OneCameraSession;->recordOneCameraStart()V

    .line 1261
    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 1262
    new-instance v4, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/android/camera/module/capture/CaptureOneCameraCreator$2;-><init>(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/stats/OneCameraSession;Lcom/android/camera/debug/performance/Metric;Lcom/android/camera/one/OneCamera;)V

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_0
    iput-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->camera:Lcom/android/camera/one/OneCamera;

    .line 243
    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 244
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 246
    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final createOneCamera(Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/stats/OneCameraSession;)Lcom/android/camera/one/OneCamera;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/OneModuleConfig;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/stats/OneCameraSession;",
            ")",
            "Lcom/android/camera/one/OneCamera;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p1, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraManger:Lcom/android/camera/one/OneCameraManager;

    iget-object v1, p1, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 294
    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    .line 295
    new-instance v4, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraFeatureConfig:Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraManger:Lcom/android/camera/one/OneCameraManager;

    invoke-direct {v4, v1, v2, p1, v0}, Lcom/android/camera/module/capture/CaptureModuleHardwareSpec;-><init>(Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/module/OneModuleConfig;Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 298
    new-instance v3, Lcom/android/camera/one/FlashSetting;

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->settings:Lcom/android/camera/settings/Settings;

    const-string v1, "pref_camera_flashmode_key"

    .line 299
    invoke-virtual {v0, v5, v1}, Lcom/android/camera/settings/Settings;->ofScopedString$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/camera/one/FlashSetting;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 301
    iget-object v0, p1, Lcom/android/camera/module/OneModuleConfig;->captureResolution:Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->hdrPlusSetting:Lcom/android/camera/one/HdrPlusSetting;

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->hdrSceneSetting:Lcom/google/android/apps/camera/async/Observable;

    iget-object v6, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 302
    invoke-static/range {v0 .. v6}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/util/Size;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Lcom/google/android/apps/camera/async/Observable;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v6

    .line 311
    new-instance v0, Lcom/google/android/gms/internal/zzahv;

    iget-object v1, p1, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v1, v1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->burstFacade:Lcom/android/camera/burst/BurstFacade;

    new-instance v4, Lcom/android/camera/util/lifetime/AppLifetimeModule;

    invoke-direct {v4}, Lcom/android/camera/util/lifetime/AppLifetimeModule;-><init>()V

    iget-object v5, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzahv;-><init>(Lcom/android/camera/util/Size;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/burst/BurstA11yButtonController$Listener;Landroid/util/DisplayMetrics;)V

    .line 319
    invoke-virtual {p3}, Lcom/android/camera/stats/OneCameraSession;->recordOneCameraCreate()V

    .line 321
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    new-instance v2, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->isCameraClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 323
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraOpener:Lcom/android/camera/one/OneCameraOpener;

    iget-object v3, p1, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iget-object v4, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->isCameraClosed:Lcom/google/android/apps/camera/async/IsClosed;

    .line 324
    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/camera/one/OneCameraOpener;->open$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUP35EPKM6P9F8DGMQPBIC54M8EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL6OB6CL1MORRJCLGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA4CLO6ARJ4CLN66QB5ED6MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNKURJ58DGMQPBIC51M2S3KELP6AKR5EHQ6IRJ77CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ17C______(Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/android/gms/internal/zzahv;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/OneCamera;

    move-result-object v0

    .line 326
    monitor-exit v1

    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final openViewfinderSurface(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;Lcom/android/camera/ui/viewfinder/Viewfinder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/viewfinder/ViewfinderConfig;",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 333
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 338
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->viewfinder:Lcom/android/camera/ui/viewfinder/Viewfinder;

    .line 339
    invoke-interface {v0, p1}, Lcom/android/camera/ui/viewfinder/Viewfinder;->swapAndStartSurfaceViewViewfinder(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit v1

    return-object v0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final createAndStartOneCameraAsync(Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/OneModuleConfig;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->checkExistingCameraConfig(Lcom/android/camera/module/OneModuleConfig;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    sget-object v1, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    const-string v2, "Not opening camera because config did not change"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-object v0

    .line 173
    :cond_0
    new-instance v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/capture/CaptureOneCameraCreator$1;-><init>(Lcom/android/camera/module/capture/CaptureOneCameraCreator;Lcom/android/camera/module/OneModuleConfig;)V

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 174
    invoke-static {p2, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->createAndStartOneCameraInternal(Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public final getBurstFacade()Lcom/android/camera/burst/BurstFacade;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->burstFacade:Lcom/android/camera/burst/BurstFacade;

    return-object v0
.end method

.method public final getZoom()Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public final isCurrent(Lcom/android/camera/module/OneModuleConfig;)Z
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->hdrPlusSetting:Lcom/android/camera/one/HdrPlusSetting;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->oneCameraManger:Lcom/android/camera/one/OneCameraManager;

    iget-object v2, p1, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 157
    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrPlusSupported()Z

    move-result v1

    .line 153
    invoke-static {p1, v0, v1}, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->from(Lcom/android/camera/module/OneModuleConfig;Lcom/android/camera/one/HdrPlusSetting;Z)Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final stop()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->currentCameraKey:Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    .line 130
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->TAG:Ljava/lang/String;

    const-string v2, "Active camera open future currently exists. Aborting the previous open."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->openingCamera:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->camera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/capture/CaptureOneCameraCreator;->camera:Lcom/android/camera/one/OneCamera;

    .line 140
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
