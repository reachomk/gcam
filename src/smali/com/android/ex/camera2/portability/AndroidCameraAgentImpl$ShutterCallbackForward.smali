.class final Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShutterCallbackForward"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

.field private final mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    .line 1200
    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCamera:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1201
    iput-object p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    .line 1202
    return-void
.end method

.method static synthetic access$1300(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    return-object v0
.end method

.method public static getNewInstance(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;
    .locals 1

    .prologue
    .line 1191
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1192
    :cond_0
    const/4 v0, 0x0

    .line 1194
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;-><init>(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public final onShutter()V
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward$1;

    invoke-direct {v1, p0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward$1;-><init>(Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$ShutterCallbackForward;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1212
    return-void
.end method
