.class public final Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;
.super Ljava/lang/Object;
.source "CameraCaptureSessionCreatorHfrImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreator",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraDeviceProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

.field private final handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

.field private isClosed:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "CamCapSesCreatorHfr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/google/android/apps/camera/async/HandlerExecutor;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->lock:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->cameraDeviceProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 37
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->isClosed:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;)Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->cameraDeviceProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->isClosed:Z

    .line 44
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final createCameraCaptureSession(Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/base/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraConstrainedHighSpeedCaptureSessionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 56
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    new-instance v2, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl$1;-><init>(Lcom/android/camera/camcorder/camera/CameraCaptureSessionCreatorHfrImpl;Landroid/view/Surface;Landroid/view/Surface;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
