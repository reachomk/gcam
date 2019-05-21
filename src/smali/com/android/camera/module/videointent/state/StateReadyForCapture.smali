.class public final Lcom/android/camera/module/videointent/state/StateReadyForCapture;
.super Lcom/android/camera/module/videointent/state/VideoIntentState;
.source "StateReadyForCapture.java"


# instance fields
.field private camcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

.field private camcorderDevice:Lcom/android/camera/camcorder/CamcorderDevice;

.field private concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;"
        }
    .end annotation
.end field

.field private concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private delayedExecutor:Ljava/util/concurrent/Executor;

.field private focusController:Lcom/android/camera/ui/focus/FocusController;

.field private oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

.field private video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

.field private videoSound:Lcom/android/camera/module/video2/Video2Sound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "StateReadyCap"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/module/video2/Video2Sound;Ljava/util/concurrent/Executor;Lcom/android/camera/camcorder/CamcorderCaptureSession;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/module/video2/Video2OrientationCalculator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/module/videointent/state/VideoIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 78
    iput-object p2, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 79
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 80
    iput-object p3, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 81
    iput-object p5, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->delayedExecutor:Ljava/util/concurrent/Executor;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    .line 83
    iput-object p4, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->videoSound:Lcom/android/camera/module/video2/Video2Sound;

    .line 84
    iput-object p6, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->camcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    .line 86
    iput-object p7, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->camcorderDevice:Lcom/android/camera/camcorder/CamcorderDevice;

    .line 87
    iput-object p8, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 88
    iput-object p9, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 89
    iput-object p10, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    .line 1095
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$1;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1104
    const-class v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1107
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$2;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1120
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureUpdated;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1123
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$3;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1131
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1134
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$4;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1142
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnSurfaceTextureDestroyed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1145
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$5;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1162
    const-class v1, Lcom/android/camera/module/videointent/event/Events$EventRecordingStarted;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1165
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$6;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1226
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnShutterButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1229
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$7;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1259
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnSwitchCameraButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1262
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$8;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1281
    const-class v1, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1284
    new-instance v0, Lcom/android/camera/module/videointent/state/StateReadyForCapture$9;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture$9;-><init>(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)V

    .line 1292
    const-class v1, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/camcorder/CamcorderDevice;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->camcorderDevice:Lcom/android/camera/camcorder/CamcorderDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/module/videointent/state/StateReadyForCapture;Lcom/android/camera/camcorder/CamcorderDevice;)Lcom/android/camera/camcorder/CamcorderDevice;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->camcorderDevice:Lcom/android/camera/camcorder/CamcorderDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/camcorder/CamcorderCaptureSession;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->camcorderCaptureSession:Lcom/android/camera/camcorder/CamcorderCaptureSession;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->delayedExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/module/videointent/state/StateReadyForCapture;Z)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->shouldUpdateTransformOnNextSurfaceTextureUpdate:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/module/video2/Video2Sound;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->videoSound:Lcom/android/camera/module/video2/Video2Sound;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/module/video2/Video2OrientationCalculator;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->focusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/videointent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
    .locals 4

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 298
    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v1

    .line 300
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxZoom()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->initializeZoom(F)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 302
    new-instance v1, Lcom/android/camera/ui/focus/FocusSound;

    .line 304
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCaptureModuleSoundPlayer()Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    move-result-object v0

    sget v2, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->FOCUS_SOUND:I

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/focus/FocusSound;-><init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;I)V

    .line 305
    new-instance v2, Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    .line 307
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getModuleUI()Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v3

    .line 309
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/focus/FocusSound;Lcom/google/android/apps/camera/async/MainThread;)V

    iput-object v2, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->focusController:Lcom/android/camera/ui/focus/FocusController;

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLeave()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateReadyForCapture;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 316
    return-void
.end method
