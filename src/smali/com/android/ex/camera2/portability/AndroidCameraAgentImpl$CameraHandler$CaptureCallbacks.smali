.class final Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureCallbacks"
.end annotation


# instance fields
.field public final mJpeg:Landroid/hardware/Camera$PictureCallback;

.field public final mPostView:Landroid/hardware/Camera$PictureCallback;

.field public final mRaw:Landroid/hardware/Camera$PictureCallback;

.field public final mShutter:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mShutter:Landroid/hardware/Camera$ShutterCallback;

    .line 276
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mRaw:Landroid/hardware/Camera$PictureCallback;

    .line 277
    iput-object p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mPostView:Landroid/hardware/Camera$PictureCallback;

    .line 278
    iput-object p5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$CameraHandler$CaptureCallbacks;->mJpeg:Landroid/hardware/Camera$PictureCallback;

    .line 279
    return-void
.end method
