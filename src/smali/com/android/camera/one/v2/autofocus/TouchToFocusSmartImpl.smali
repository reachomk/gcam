.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;
.super Ljava/lang/Object;
.source "TouchToFocusSmartImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/TouchToFocus;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private final afModeState:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;"
        }
    .end annotation
.end field

.field private final afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

.field private final cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

.field private inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final meteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final resetFocusToContinuous:Ljava/lang/Runnable;

.field private final sceneChangeMonitor:Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

.field private final settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

.field private final smartAFScanCommandFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "SmartTouchToFocus"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/gms/internal/zzxg$zza;Ljavax/inject/Provider;Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;",
            ">;",
            "Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/google/android/gms/internal/zzxg$zza;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;",
            ">;",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$3;-><init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->resetFocusToContinuous:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->afModeState:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 56
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 57
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    .line 58
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->meteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 59
    iput-object p6, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

    .line 60
    iput-object p7, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->smartAFScanCommandFactory:Ljavax/inject/Provider;

    .line 61
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    .line 62
    iput-object p8, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->sceneChangeMonitor:Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

    .line 63
    iput-object p9, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUL3FELHMGL3F8PNM6TBJADMM2SJK95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB58DNMST3IDTM6OPBI7C______(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->delayThenSwitchToSceneDetectMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->sceneChangeMonitor:Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->meteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->afModeState:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->resetFocusToContinuous:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final delayThenSwitchToSceneDetectMode()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    new-instance v1, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$4;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$4;-><init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method


# virtual methods
.method public final triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->reset()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->sceneChangeMonitor:Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;->clearCallback()V

    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->meteringParameters:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/apps/camera/aaa/FocusPoint;->point()Landroid/graphics/PointF;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lcom/google/android/apps/camera/aaa/FocusPoint;->point()Landroid/graphics/PointF;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 84
    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->settings3A$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQJCLQ78QBECTPJ6G9R:Lcom/google/android/gms/internal/zzxg$zza;

    .line 81
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;->createForNormalizedCoordinates$51662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267D662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267D4KOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T9MAT3KD5N6ESPJ84TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFC5QN8RR6DTHNASPFA1NMIRJK9LIN8PBID5N6EK31E9GMQPBKCLP76EO_(Landroid/graphics/PointF;Landroid/graphics/PointF;ILcom/google/android/gms/internal/zzxg$zza;)Lcom/android/camera/one/v2/autofocus/PointMeteringParameters;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->afModeState:Lcom/google/android/apps/camera/async/ConcurrentState;

    sget-object v2, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->AUTO:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->smartAFScanCommandFactory:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;

    .line 94
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->cameraCommandExecutor:Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->run(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 95
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->inProgressScan:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verify(Z)V

    .line 98
    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->getConvergeFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$1;-><init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V

    .line 97
    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 117
    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->getConvergeFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/google/android/apps/camera/aaa/FocusPoint;->lockFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$2;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$2;-><init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V

    .line 116
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 129
    return-void

    .line 95
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
