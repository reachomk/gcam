.class public final Lcom/android/camera/module/videointent/state/StateOpeningCamera;
.super Lcom/android/camera/module/videointent/state/VideoIntentState;
.source "StateOpeningCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

.field private final cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

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

.field private isPaused:Z

.field private isTorchSupported:Z

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
    const-string v0, "VidIntStOpenCamera"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/videointent/state/VideoIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/videointent/state/VideoIntentState;",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/camera/module/videointent/state/VideoIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 58
    new-instance v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$1;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    iput-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    .line 85
    iput-object p2, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 86
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 87
    iput-object p3, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 88
    iput-object p4, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 89
    iput-object p5, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->isPaused:Z

    .line 1096
    new-instance v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$2;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    .line 1104
    const-class v1, Lcom/android/camera/module/imageintent/event/EventStop;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1107
    new-instance v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$3;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    .line 1148
    const-class v1, Lcom/android/camera/module/videointent/event/Events$EventOnOpenCameraSucceeded;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1151
    new-instance v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$4;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    .line 1159
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraFailed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->isPaused:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/module/videointent/state/StateOpeningCamera;Z)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->isPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/module/video2/Video2OrientationCalculator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->isTorchSupported:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/device/CameraId;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method private final getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 333
    new-instance v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 335
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 336
    new-instance v1, Lcom/android/camera/module/videointent/state/StateOpeningCamera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$7;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    .line 344
    iput-boolean v3, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 345
    iput-boolean v3, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showCancel:Z

    .line 346
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showDone:Z

    .line 347
    new-instance v1, Lcom/android/camera/module/videointent/state/StateOpeningCamera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$8;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    .line 354
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showReview:Z

    .line 355
    new-instance v1, Lcom/android/camera/module/videointent/state/StateOpeningCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$9;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->reviewCallback:Landroid/view/View$OnClickListener;

    .line 362
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showRetake:Z

    .line 363
    new-instance v1, Lcom/android/camera/module/videointent/state/StateOpeningCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$10;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 371
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/videointent/state/VideoIntentState;
    .locals 27

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-nez v2, :cond_0

    .line 165
    sget-object v2, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    const-string v3, "mOneCameraCharacteristics is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Lcom/android/camera/module/videointent/state/StateFatal;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/module/videointent/state/StateFatal;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;)V

    .line 308
    :goto_0
    return-object v2

    .line 170
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v2}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v2}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 172
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v8

    .line 173
    const/4 v4, 0x0

    .line 174
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v26

    .line 175
    const/4 v5, 0x0

    .line 176
    if-eqz v3, :cond_1

    .line 178
    const-string v2, "output"

    .line 179
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 180
    if-eqz v2, :cond_1

    .line 183
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v3}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "rw"

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v8

    .line 184
    sget-object v3, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xe

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Input uri is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v3, v2}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    :goto_1
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 193
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 199
    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    move v6, v2

    .line 202
    :goto_3
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 203
    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    .line 206
    :goto_4
    const-string v2, "android.intent.extra.sizeLimit"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    const-string v2, "android.intent.extra.sizeLimit"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 208
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v26

    .line 209
    sget-object v2, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SIZE LIMTI IS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v2}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCamcorderManager()Lcom/android/camera/camcorder/CamcorderManager;

    move-result-object v2

    .line 213
    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 215
    invoke-interface {v2, v4}, Lcom/android/camera/camcorder/CamcorderManager;->getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 219
    invoke-interface {v5}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v7

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v5}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/settings/CameraFacingSetting;->get()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v5

    .line 220
    invoke-virtual {v7, v5, v4, v3, v6}, Lcom/android/camera/module/video2/Video2Settings;->getResolutionSetting(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/camcorder/CamcorderCharacteristics;Lcom/android/camera/camcorder/CamcorderCaptureRate;Z)Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v5

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v6}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCameraDeviceManager()Lcom/android/camera/device/CameraDeviceManager;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v7}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v6, v7, v10}, Lcom/android/camera/device/CameraDeviceManager;->open(Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 230
    invoke-interface {v6}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v6

    .line 232
    invoke-virtual {v4}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->isTorchAvailable()Z

    move-result v4

    .line 231
    invoke-virtual {v6, v3, v5, v4}, Lcom/android/camera/module/video2/Video2Settings;->isTorchSupported(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->isTorchSupported:Z

    .line 233
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->isTorchSupported:Z

    if-eqz v4, :cond_8

    .line 1313
    new-instance v14, Lcom/android/camera/module/videointent/state/StateOpeningCamera$6;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getFlashSetting()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$6;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;Lcom/google/android/apps/camera/async/Observable;)V

    .line 235
    :goto_5
    new-instance v4, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 236
    new-instance v6, Lcom/android/camera/module/video2/Video2OrientationCalculator;

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getCameraFacingSetting()Lcom/android/camera/settings/CameraFacingSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/settings/CameraFacingSetting;->get()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getOrientationManager$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE9LGMSOB7CLP3M___()Lcom/android/camera/burst/OrientationLockController;

    move-result-object v4

    invoke-direct {v6, v10, v11, v4}, Lcom/android/camera/module/video2/Video2OrientationCalculator;-><init>(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/burst/OrientationLockController;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    .line 241
    new-instance v4, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v10}, Lcom/google/android/apps/camera/aaa/FocusPoint;->at(FF)Lcom/google/android/apps/camera/aaa/FocusPoint;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 242
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v18

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/video2/Video2Settings;->shouldRecordLocation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getLocationProvider()Lcom/android/camera/location/LocationProvider;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v18

    .line 246
    :cond_3
    const/16 v22, 0x0

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 248
    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->isVideoStabilizationSupported()Z

    move-result v4

    .line 249
    if-eqz v4, :cond_4

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/video2/Video2Settings;->isVideoStabilizationEnabled()Z

    move-result v22

    .line 253
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 254
    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v4

    .line 255
    invoke-virtual {v4, v3, v5}, Lcom/android/camera/module/video2/Video2Settings;->getMaxRecordingDurationSeconds(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)I

    move-result v24

    .line 256
    if-eqz v9, :cond_5

    .line 257
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 260
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    .line 261
    invoke-interface {v4}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getVideo2Settings()Lcom/android/camera/module/video2/Video2Settings;

    move-result-object v4

    .line 262
    invoke-virtual {v4, v3, v5}, Lcom/android/camera/module/video2/Video2Settings;->getMaxTorchRecordingDurationSeconds(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)I

    move-result v25

    .line 263
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v25

    if-ge v4, v0, :cond_6

    .line 264
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 266
    :cond_6
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v19

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->camcorderDeviceCallback:Lcom/android/camera/camcorder/CamcorderDeviceCallback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v9

    check-cast v9, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v9}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getMediaStorageCallback()Lcom/android/camera/camcorder/MediaStorageCallback;

    move-result-object v9

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v10

    check-cast v10, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v10}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getAeController$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TG____()Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getEvCompProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v10

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v11}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getEvScrollingState$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v11

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v12

    check-cast v12, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v12}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getAeController$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TG____()Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getAeLockProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v12

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v13

    check-cast v13, Lcom/android/camera/module/videointent/state/VideoIntentContext;

    invoke-interface {v13}, Lcom/android/camera/module/videointent/state/VideoIntentContext;->getWhiteBalanceSetting()Lcom/android/camera/settings/WhiteBalanceSetting;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/settings/WhiteBalanceSetting;->getUnderlyingProperty()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->concurrentZoomRatio:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->video2OrientationCalculator:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    move-object/from16 v16, v0

    .line 282
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->getOrientationObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->concurrentStateActiveFocusPoint:Lcom/google/android/apps/camera/async/ConcurrentState;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 289
    invoke-static {}, Lcom/android/camera/module/video2/Video2Settings;->isH265EncodingEnabled()Z

    move-result v23

    .line 268
    invoke-interface/range {v2 .. v26}, Lcom/android/camera/camcorder/CamcorderManager;->openCamcorder$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E926ATJ9CDIK6OBCDHH62ORB7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP5CQB4CLNL4PBJDTM7AT39DTN3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62IB47D666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T6MAP39C59N8RRIC5JMAGR1DHM64OB3DCTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T7M4SR5E9R62OJCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9TH76PBIEPGM4R357D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQFC9PMASJMC5H6OP9R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUJR2EDIN4TJ1C9M6AEQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKUOJJCLP7COB2DHIJMJ33DTMIUPRFDTJMOP9FCDNMQRBFDONM4OBJCKNKUS3KD5NMSOBC7D666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQQB9D5KIA99HHMUR9FCTNMUPRCCKNM6RRDDLNMSBR2C5PMABQFE1Q6IRREC5M3MAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/android/camera/camcorder/CamcorderDeviceCallback;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Lcom/google/android/apps/camera/device/CameraId;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/camcorder/MediaStorageCallback;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;ZZZZIILcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 293
    new-instance v3, Lcom/android/camera/module/videointent/state/StateOpeningCamera$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/module/videointent/state/StateOpeningCamera$5;-><init>(Lcom/android/camera/module/videointent/state/StateOpeningCamera;)V

    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 308
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v2

    .line 187
    sget-object v3, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 234
    :cond_8
    new-instance v14, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    move-object v9, v5

    goto/16 :goto_4

    :cond_a
    move v6, v4

    goto/16 :goto_3
.end method

.method public final onLeave()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/module/videointent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 325
    return-void
.end method
