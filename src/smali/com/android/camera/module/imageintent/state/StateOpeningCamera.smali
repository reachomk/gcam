.class public final Lcom/android/camera/module/imageintent/state/StateOpeningCamera;
.super Lcom/android/camera/module/imageintent/state/ImageIntentState;
.source "StateOpeningCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private final cameraSettingsScope:Ljava/lang/String;

.field private faceDetectionCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMQPBKC5I62T315TJ62OR55T362OR58HIN8PB3EHKMURI3C5M6OOJ1CDLJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

.field private isPaused:Z

.field private oneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private pictureSize:Lcom/android/camera/util/Size;

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
    .line 49
    const-string v0, "StateOpeningCamera"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Lcom/android/camera/one/OneCamera$Facing;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/imageintent/state/ImageIntentState;",
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
    .line 81
    invoke-direct {p0, p1}, Lcom/android/camera/module/imageintent/state/ImageIntentState;-><init>(Lcom/android/camera/fsm/State;)V

    .line 66
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$1;

    invoke-direct {v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->faceDetectionCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMQPBKC5I62T315TJ62OR55T362OR58HIN8PB3EHKMURI3C5M6OOJ1CDLJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 82
    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 83
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->addRef()V

    .line 84
    iput-object p3, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 85
    iput-object p4, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 86
    iput-object p5, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->isPaused:Z

    .line 88
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraSettingsScope:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 1095
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$2;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V

    .line 1103
    const-class v1, Lcom/android/camera/module/imageintent/event/EventPause;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1106
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$3;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V

    .line 1164
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraSucceeded;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 1167
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$4;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V

    .line 1175
    const-class v1, Lcom/android/camera/module/imageintent/event/EventOnOpenCameraFailed;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->setEventHandler(Ljava/lang/Class;Lcom/android/camera/fsm/EventHandler;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->isPaused:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;Z)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->isPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/ConcurrentState;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/device/CameraId;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->pictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->oneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraSettingsScope:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method private final getBottomBarSpec()Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 283
    new-instance v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 285
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 286
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$7;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showCancel:Z

    .line 296
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showDone:Z

    .line 297
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$8;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    .line 304
    iput-boolean v2, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->showRetake:Z

    .line 305
    new-instance v1, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$9;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V

    iput-object v1, v0, Lcom/android/camera/ui/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 312
    return-object v0
.end method

.method private final getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$6;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic onEnter()Lcom/android/camera/fsm/State;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;

    move-result-object v0

    return-object v0
.end method

.method public final onEnter()Lcom/android/camera/module/imageintent/state/ImageIntentState;
    .locals 7

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    const-string v1, "mCameraCharacteristics is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateFatal;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateFatal;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V

    .line 235
    :goto_0
    return-object v0

    .line 185
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v4

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getImageIntentHardwareSpecProvider$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABR9DLGMEPB9DPQ6ARJK5T4MQOB7CL4MST35DPQ4GOBICHRM2SJ5ADO6AOQGE9NNCQB4CLP3M___()Lcom/google/android/apps/camera/async/CloseableFutures;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/async/CloseableFutures;->setHardwareSpec(Lcom/android/camera/hardware/HardwareSpec;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->pictureSize:Lcom/android/camera/util/Size;

    .line 192
    new-instance v3, Lcom/android/camera/one/FlashSetting;

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 195
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getSettings()Lcom/android/camera/settings/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraSettingsScope:Ljava/lang/String;

    const-string v2, "pref_camera_flashmode_key"

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/Settings;->ofScopedString$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/camera/one/FlashSetting;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->pictureSize:Lcom/android/camera/util/Size;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    .line 201
    invoke-static {v1}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    const/4 v2, 0x0

    .line 202
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraSettingsScope:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 199
    invoke-static/range {v0 .. v6}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/util/Size;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Lcom/google/android/apps/camera/async/Observable;)Lcom/android/camera/one/OneCameraCaptureSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->oneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    new-instance v0, Lcom/google/android/gms/internal/zzahv;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 214
    invoke-virtual {v1}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/ResourceSurfaceTexture;

    invoke-interface {v1}, Lcom/android/camera/module/ResourceSurfaceTexture;->getPreviewSize()Lcom/android/camera/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    .line 215
    invoke-virtual {v2}, Lcom/google/android/apps/camera/async/RefCountBase;->get()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/ResourceSurfaceTexture;

    invoke-interface {v2}, Lcom/android/camera/module/ResourceSurfaceTexture;->createPreviewSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/android/camera/burst/BurstFacadeStub;

    invoke-direct {v3}, Lcom/android/camera/burst/BurstFacadeStub;-><init>()V

    iget-object v4, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->faceDetectionCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMQPBKC5I62T315TJ62OR55T362OR58HIN8PB3EHKMURI3C5M6OOJ1CDLJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v5}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzahv;-><init>(Lcom/android/camera/util/Size;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/burst/BurstA11yButtonController$Listener;Landroid/util/DisplayMetrics;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 222
    invoke-virtual {v1}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getOneCameraOpener()Lcom/android/camera/one/OneCameraOpener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    new-instance v3, Lcom/google/android/apps/camera/async/IsClosed;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/IsClosed;-><init>()V

    iget-object v4, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->oneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 223
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/camera/one/OneCameraOpener;->open$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUP35EPKM6P9F8DGMQPBIC54M8EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL6OB6CL1MORRJCLGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4OA4CLO6ARJ4CLN66QB5ED6MUP3LDHIJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNKURJ58DGMQPBIC51M2S3KELP6AKR5EHQ6IRJ77CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ17C______(Lcom/google/android/apps/camera/device/CameraId;Lcom/google/android/apps/camera/async/SafeCloseable;Lcom/google/android/gms/internal/zzahv;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/OneCamera;

    move-result-object v1

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 226
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v2, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$5;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$5;-><init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;Lcom/android/camera/one/OneCamera;)V

    .line 227
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 235
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    sget-object v1, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->TAG:Ljava/lang/String;

    const-string v2, "Failed while open camera"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateFatal;

    invoke-direct {v0, p0}, Lcom/android/camera/module/imageintent/state/StateFatal;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V

    goto/16 :goto_0
.end method

.method public final onLeave()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->resourceSurfaceTexture:Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/RefCountBase;->close()V

    .line 241
    return-void
.end method
