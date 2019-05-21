.class public final Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;
.super Ljava/lang/Object;
.source "ResourceOpenedCameraImpl.java"

# interfaces
.implements Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final camera:Lcom/android/camera/one/OneCamera;

.field private final cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private final cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final oneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final pictureSize:Lcom/android/camera/util/Size;

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
    .line 15
    const-string v0, "ResOpenedCam"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/one/OneCamera;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCamera;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->camera:Lcom/android/camera/one/OneCamera;

    .line 74
    iput-object p2, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 75
    iput-object p3, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 76
    iput-object p4, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 77
    iput-object p5, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->pictureSize:Lcom/android/camera/util/Size;

    .line 78
    iput-object p6, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->oneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 79
    iput-object p7, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 80
    iput-object p8, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 81
    return-void
.end method

.method public static create(Lcom/android/camera/one/OneCamera;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Lifetime;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCamera;",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ")",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/imageintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;-><init>(Lcom/android/camera/one/OneCamera;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/google/android/apps/camera/async/ConcurrentState;Lcom/google/android/apps/camera/async/Lifetime;)V

    .line 61
    new-instance v1, Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/RefCountBase;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;)V

    return-object v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->close()V

    .line 88
    return-void
.end method

.method public final getCamera()Lcom/android/camera/one/OneCamera;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->camera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method public final getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method public final getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method public final getCameraId()Lcom/google/android/apps/camera/device/CameraId;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    return-object v0
.end method

.method public final getCaptureSetting()Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->oneCameraCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    return-object v0
.end method

.method public final getPictureSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->pictureSize:Lcom/android/camera/util/Size;

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
    .line 122
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->zoom:Lcom/google/android/apps/camera/async/ConcurrentState;

    return-object v0
.end method

.method public final startPreview()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/module/imageintent/resource/ResourceOpenedCameraImpl;->camera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->start()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
