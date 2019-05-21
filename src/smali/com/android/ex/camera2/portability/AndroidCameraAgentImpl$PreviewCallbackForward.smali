.class final Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V
    .locals 0

    .prologue
    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->mHandler:Landroid/os/Handler;

    .line 1287
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1288
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    .line 1289
    return-void
.end method

.method static synthetic access$1600(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;
    .locals 1

    .prologue
    .line 1278
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1279
    :cond_0
    const/4 v0, 0x0

    .line 1281
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;

    invoke-direct {v1, p0, p1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$PreviewCallbackForward;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1300
    return-void
.end method
