.class public final Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;
.super Lcom/google/android/apps/camera/proxy/camera2/AbstractCameraCaptureCallback;
.source "CameraRepeatingCaptureCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

.field private final firstFrameCompletionFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final recordSurface:Landroid/view/Surface;

.field private recordSurfaceDropFrameCount:I

.field private final updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "CdrCamCapCallback"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Lcom/google/android/apps/camera/async/Updatable;Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/camera/proxy/camera2/AbstractCameraCaptureCallback;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->firstFrameCompletionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->recordSurfaceDropFrameCount:I

    .line 34
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->recordSurface:Landroid/view/Surface;

    .line 35
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;

    .line 36
    iput-object p3, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 37
    return-void
.end method


# virtual methods
.method public final getFirstFrameCompletionFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->firstFrameCompletionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final getRecordSurfaceDropFrameCount()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->recordSurfaceDropFrameCount:I

    return v0
.end method

.method public final onCaptureBufferLost(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Landroid/view/Surface;J)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->recordSurface:Landroid/view/Surface;

    if-ne p2, v0, :cond_0

    .line 71
    iget v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->recordSurfaceDropFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->recordSurfaceDropFrameCount:I

    .line 73
    :cond_0
    return-void
.end method

.method public final onCaptureCompleted(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->firstFrameCompletionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->firstFrameCompletionFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 56
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->updatableScalerCropRegion:Lcom/google/android/apps/camera/async/Updatable;

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->afStateResponseListener$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PIJEHGN8PAICLPN0RREEDIKOQBJEHIMSPBI7C______:Lcom/android/camera/one/v2/core/ResponseListener;

    invoke-virtual {v0, p2}, Lcom/android/camera/one/v2/core/ResponseListener;->onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 61
    return-void
.end method

.method public final onCaptureFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureRequestProxy;Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
