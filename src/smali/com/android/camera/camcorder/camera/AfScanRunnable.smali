.class public final Lcom/android/camera/camcorder/camera/AfScanRunnable;
.super Ljava/lang/Object;
.source "AfScanRunnable.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final afScanner:Lcom/android/camera/camcorder/camera/AfScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/AfScanner",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

.field private isClosed:Z

.field private final lock:Ljava/lang/Object;

.field private final observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final previewSurface:Landroid/view/Surface;

.field private final recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/RecordingRequestStarter",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final recordingSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Landroid/view/Surface;Landroid/view/Surface;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/camcorder/camera/AfScanner;Lcom/android/camera/camcorder/camera/RecordingRequestStarter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/android/apps/camera/aaa/FocusPoint;",
            ">;",
            "Lcom/android/camera/camcorder/camera/AfScanner",
            "<TC;>;",
            "Lcom/android/camera/camcorder/camera/RecordingRequestStarter",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->lock:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->isClosed:Z

    .line 36
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    .line 37
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    .line 38
    iput-object p3, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->previewSurface:Landroid/view/Surface;

    .line 39
    iput-object p4, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->recordingSurface:Landroid/view/Surface;

    .line 40
    iput-object p5, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    .line 41
    iput-object p6, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->afScanner:Lcom/android/camera/camcorder/camera/AfScanner;

    .line 42
    iput-object p7, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->isClosed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->recordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/camcorder/camera/AfScanRunnable;)Lcom/android/camera/camcorder/camera/RecordingRequestStarter;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->recordingRequestStarter:Lcom/android/camera/camcorder/camera/RecordingRequestStarter;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->isClosed:Z

    .line 81
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 9

    .prologue
    .line 47
    iget-object v7, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->isClosed:Z

    if-eqz v0, :cond_0

    .line 49
    monitor-exit v7

    .line 74
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->observableActiveFocusPoint:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/aaa/FocusPoint;

    .line 53
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->afScanner:Lcom/android/camera/camcorder/camera/AfScanner;

    iget-object v1, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->cameraCaptureSessionProxy:Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;

    iget-object v2, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->cameraRepeatingCaptureCallback:Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    const/4 v3, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->previewSurface:Landroid/view/Surface;

    aput-object v8, v5, v6

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/camera/camcorder/camera/AfScanRunnable;->recordingSurface:Landroid/view/Surface;

    aput-object v8, v5, v6

    .line 58
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;

    invoke-direct {v6, p0}, Lcom/android/camera/camcorder/camera/AfScanRunnable$1;-><init>(Lcom/android/camera/camcorder/camera/AfScanRunnable;)V

    .line 53
    invoke-interface/range {v0 .. v6}, Lcom/android/camera/camcorder/camera/AfScanner;->triggerAfScan(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;ZLcom/google/android/apps/camera/aaa/FocusPoint;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 74
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
