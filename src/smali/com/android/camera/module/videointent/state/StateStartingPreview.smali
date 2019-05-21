.class public final Lcom/android/camera/module/videointent/state/StateStartingPreview;
.super Lcom/android/camera/module/videointent/state/VideoIntentState;
.source "StateStartingPreview.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bottomBarUISpec:Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

.field private final camcorder:Lcom/android/camera/camcorder/CamcorderDevice;

.field private final cameraId:Lcom/google/android/apps/camera/device/CameraId;

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

.field private final facing:Lcom/android/camera/one/OneCamera$Facing;

.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "VidIntStartPreview"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/camcorder/CamcorderDevice;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/videointent/state/VideoIntentState;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;",
            "Lcom/android/camera/camcorder/CamcorderDevice;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;",
            "Lcom/android/camera/module/video2/Video2OrientationCalculator;",
            "Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/camera/module/videointent/state/VideoIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 78
    iput-object p6, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 79
    iput-object p4, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 80
    iput-object p5, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->facing:Lcom/android/camera/one/OneCamera$Facing;

    .line 81
    iput-object p3, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->camcorder:Lcom/android/camera/camcorder/CamcorderDevice;

    .line 82
    iput-object p2, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 83
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 84
    iput-object p7, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 85
    iput-object p8, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 86
    iput-object p9, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    .line 87
    iput-object p10, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->bottomBarUISpec:Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    .line 1093
    new-instance v0, Lcom/android/camera/module/videointent/state/StateStartingPreview$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$1;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V

    .line 1102
    const-class v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1105
    new-instance v0, Lcom/android/camera/module/videointent/state/StateStartingPreview$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$2;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V

    .line 1113
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1116
    new-instance v0, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$3;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V

    .line 1155
    const-class v1, Lcom/android/camera/module/videointent/event/Events$EventOnStartPreviewSucceeded;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1158
    new-instance v0, Lcom/android/camera/module/videointent/state/StateStartingPreview$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$4;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V

    .line 1166
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnStartPreviewFailed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/camcorder/CamcorderDevice;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->camcorder:Lcom/android/camera/camcorder/CamcorderDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/module/video2/Video2OrientationCalculator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->bottomBarUISpec:Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/videointent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCamcorderManager()Lcom/android/camera/camcorder/CamcorderManager;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 175
    invoke-interface {v0, v1}, Lcom/android/camera/camcorder/CamcorderManager;->getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v1}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->facing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    const/4 v4, 0x0

    .line 181
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/module/video2/Video2Settings;->getResolutionSetting(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/camcorder/CamcorderCaptureRate;Z)Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v1

    .line 186
    new-instance v2, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;

    iget-object v3, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getViewfinderSizeSelector()Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;)V

    .line 195
    invoke-static {}, Lcom/android/camera/util/AspectRatio;->of16x9()Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 194
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;->selectViewfinderSize(Lcom/android/camera/util/AspectRatio;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v0}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getAspectRatio()Lcom/android/camera/util/AspectRatio;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 202
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ResourceSurfaceTexture;

    invoke-interface {v0, v1}, Lcom/android/camera/module/ResourceSurfaceTexture;->setPreviewSize(Lcom/android/camera/util/Size;)V

    .line 205
    new-instance v0, Lcom/android/camera/module/videointent/state/StateStartingPreview$5;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$5;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 232
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ResourceSurfaceTexture;

    invoke-interface {v0}, Lcom/android/camera/module/ResourceSurfaceTexture;->createPreviewSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/videointent/state/StateStartingPreview$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$6;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V

    .line 231
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/android/camera/module/videointent/state/StateStartingPreview$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateStartingPreview$7;-><init>(Lcom/android/camera/module/videointent/state/StateStartingPreview;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLeave()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 259
    return-void
.end method
