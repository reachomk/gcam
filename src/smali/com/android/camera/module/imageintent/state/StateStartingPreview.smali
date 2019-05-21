.class public final Lcom/android/camera/module/imageintent/state/StateStartingPreview;
.super Lcom/android/camera/module/imageintent/state/ImageIntentState;
.source "StateStartingPreview.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation
.end field

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

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "StStartingPreview"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/google/android/apps/camera/async/RefCountBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/imageintent/state/ImageIntentState;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/ImageIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 36
    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getViewfinderSizeSelector()Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 38
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 39
    iput-object p3, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 1045
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview$1;-><init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V

    .line 1053
    const-class v1, Lcom/android/camera/module/imageintent/event/EventPause;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1056
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview$2;-><init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V

    .line 1064
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnTextureViewLayoutChanged;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1067
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview$3;-><init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V

    .line 1084
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnStartPreviewSucceeded;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1087
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview$4;-><init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V

    .line 1095
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnStartPreviewFailed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
    .locals 5

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateFatal;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateFatal;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V

    .line 146
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 112
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraId()Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    .line 113
    invoke-virtual {v3, v4, v0}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 116
    iget-object v3, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    const/4 v4, 0x0

    .line 117
    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->selectViewfinderSize(Ljava/util/List;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCamera$Facing;Z)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getPreviewAspectRatio()Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getAspectRatio()Lcom/android/camera/util/AspectRatio;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ResourceSurfaceTexture;

    invoke-interface {v0, v1}, Lcom/android/camera/module/ResourceSurfaceTexture;->setPreviewSize(Lcom/android/camera/util/Size;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;

    invoke-interface {v0}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;->startPreview()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateStartingPreview$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateStartingPreview$5;-><init>(Lcom/android/camera/module/imageintent/state/StateStartingPreview;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 146
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    new-instance v0, Lcom/android/camera/module/imageintent/state/StateFatal;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateFatal;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V

    goto :goto_0
.end method

.method public final onLeave()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 152
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateStartingPreview;->resourceOpenedCamera:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 153
    return-void
.end method
