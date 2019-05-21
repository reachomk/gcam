.class public final Lcom/android/camera/module/capture/CaptureModeStartup;
.super Ljava/lang/Object;
.source "CaptureModeStartup.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Initializer;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

.field private final lazyCaptureOneCameraCreator:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final startupConfig:Lcom/android/camera/module/OneModuleConfig;

.field private final startupContext$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T9N8OBIEHQN0GRFDPQ6AU3KADIMOPB3EHNN492JEHGN4T3LE11MURJKCLS78EO_:Lcom/android/camera/advice/AdviceManagerImpl;

.field private final startupOneCamera:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation
.end field

.field private final startupViewfinder:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "CaptureModeStartup"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/device/CameraDeviceManager;Ljava/util/concurrent/Executor;Lcom/android/camera/advice/AdviceManagerImpl;Lcom/android/camera/module/OneModuleConfig;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Ldagger/Lazy;Lcom/android/camera/debug/trace/Trace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/device/CameraDeviceManager;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/advice/AdviceManagerImpl;",
            "Lcom/android/camera/module/OneModuleConfig;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;",
            "Ldagger/Lazy",
            "<",
            "Lcom/android/camera/module/capture/CaptureOneCameraCreator;",
            ">;",
            "Lcom/android/camera/debug/trace/Trace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    .line 56
    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupContext$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T9N8OBIEHQN0GRFDPQ6AU3KADIMOPB3EHNN492JEHGN4T3LE11MURJKCLS78EO_:Lcom/android/camera/advice/AdviceManagerImpl;

    .line 57
    iput-object p4, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupConfig:Lcom/android/camera/module/OneModuleConfig;

    .line 58
    iput-object p5, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupViewfinder:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 59
    iput-object p6, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupOneCamera:Lcom/google/common/util/concurrent/SettableFuture;

    .line 60
    iput-object p7, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->lazyCaptureOneCameraCreator:Ldagger/Lazy;

    .line 61
    iput-object p8, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/android/camera/module/OneModuleConfig;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupConfig:Lcom/android/camera/module/OneModuleConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupViewfinder:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupOneCamera:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/capture/CaptureModeStartup;)Lcom/android/camera/debug/trace/Trace;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/capture/CaptureModeStartup;)Ldagger/Lazy;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->lazyCaptureOneCameraCreator:Ldagger/Lazy;

    return-object v0
.end method


# virtual methods
.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
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
    .line 66
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CaptureModeStartup"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "CameraDevice#prewarm"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->cameraDeviceManager:Lcom/android/camera/device/CameraDeviceManager;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->startupContext$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5HN8QBMD5Q7IBR3DTN6CQB75T9N8OBIEHQN0GRFDPQ6AU3KADIMOPB3EHNN492JEHGN4T3LE11MURJKCLS78EO_:Lcom/android/camera/advice/AdviceManagerImpl;

    iget-object v1, v1, Lcom/android/camera/advice/AdviceManagerImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v0, v1}, Lcom/android/camera/device/CameraDeviceManager;->prewarm(Lcom/google/android/apps/camera/device/CameraId;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "OneCameraCreator#resolve"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1109
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1110
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/module/capture/CaptureModeStartup$3;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/capture/CaptureModeStartup$3;-><init>(Lcom/android/camera/module/capture/CaptureModeStartup;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v2, "OneCameraCreator#setupCreateAndStart"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/android/camera/module/capture/CaptureModeStartup$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/CaptureModeStartup$1;-><init>(Lcom/android/camera/module/capture/CaptureModeStartup;)V

    .line 78
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/android/camera/module/capture/CaptureModeStartup$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/CaptureModeStartup$2;-><init>(Lcom/android/camera/module/capture/CaptureModeStartup;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 104
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartup;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
