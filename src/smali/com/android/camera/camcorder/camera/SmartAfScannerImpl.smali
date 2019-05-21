.class public final Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;
.super Ljava/lang/Object;
.source "SmartAfScannerImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/camera/AfScanner;
.implements Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/camera/AfScanner",
        "<TC;>;",
        "Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aeExposureCompensation$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final aeExposureCompensationScrollingState:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final afModeIsContinuous:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final afRequestSender:Lcom/android/camera/camcorder/camera/AfRequestSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/AfRequestSender",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

.field private afResetRunnable:Ljava/lang/Runnable;

.field private final afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

.field private final updatableAeMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final updatableAfMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "CdrAfScanner"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/camera/AfRequestSender;Lcom/google/android/apps/camera/aaa/AfStateMonitor;Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Updatable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/camera/AfRequestSender",
            "<TC;>;",
            "Lcom/google/android/apps/camera/aaa/AfStateMonitor;",
            "Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afRequestSender:Lcom/android/camera/camcorder/camera/AfRequestSender;

    .line 55
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    .line 56
    iput-object p3, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    .line 57
    iput-object p4, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->updatableAeMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    .line 58
    iput-object p5, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->updatableAfMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    .line 59
    iput-object p6, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeExposureCompensation$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 60
    iput-object p7, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeExposureCompensationScrollingState:Lcom/google/android/apps/camera/async/Observable;

    .line 61
    iput-object p8, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 62
    iput-object p9, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afModeIsContinuous:Lcom/google/android/apps/camera/async/Updatable;

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5THM2RB5E9GIUKRDC5P78GB6ADHM2RJECLP4IRBGDGTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->delayThenSwitchToSceneDetectMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)Lcom/google/android/apps/camera/aaa/AfStateMonitor;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    return-object v0
.end method

.method private final delayThenSwitchToSceneDetectMode()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    new-instance v1, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$2;-><init>(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method


# virtual methods
.method public final onSceneChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeExposureCompensationScrollingState:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onSceneChanged while scrolling ev comp, ignoring"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeExposureCompensation$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onSceneChanged while ev comp is set, ignoring"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->setListener(Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;)V

    .line 120
    sget-object v0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->TAG:Ljava/lang/String;

    const-string v1, "reset AF"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afModeIsContinuous:Lcom/google/android/apps/camera/async/Updatable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->updatableAeMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->updatableAfMeteringParameters:Lcom/google/android/apps/camera/async/Updatable;

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->TAG:Ljava/lang/String;

    const-string v1, "reset AE"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeExposureCompensation$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->aeLock$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afResetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public final triggerAfScan(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;ZLcom/google/android/apps/camera/aaa/FocusPoint;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;",
            "Z",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afResetExecutor:Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->reset()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afStateMonitor:Lcom/google/android/apps/camera/aaa/AfStateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/aaa/AfStateMonitor;->setListener(Lcom/google/android/apps/camera/aaa/AfStateMonitor$Listener;)V

    .line 76
    iput-object p6, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afResetRunnable:Ljava/lang/Runnable;

    .line 79
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afModeIsContinuous:Lcom/google/android/apps/camera/async/Updatable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;->afRequestSender:Lcom/android/camera/camcorder/camera/AfRequestSender;

    .line 85
    invoke-virtual {p4}, Lcom/google/android/apps/camera/aaa/FocusPoint;->point()Landroid/graphics/PointF;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    .line 81
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/camcorder/camera/AfRequestSender;->sendAfRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;ZLandroid/graphics/PointF;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p4}, Lcom/google/android/apps/camera/aaa/FocusPoint;->lockFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camcorder/camera/SmartAfScannerImpl$1;-><init>(Lcom/android/camera/camcorder/camera/SmartAfScannerImpl;)V

    .line 88
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 104
    return-void
.end method
