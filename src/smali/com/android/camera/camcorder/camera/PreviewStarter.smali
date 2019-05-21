.class public final Lcom/android/camera/camcorder/camera/PreviewStarter;
.super Ljava/lang/Object;
.source "PreviewStarter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

.field private final captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/camcorder/camera/CaptureRequestListCreator",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

.field private isClosed:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "CdrPreviewStarter"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/camera/PreviewStarter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;Lcom/google/android/apps/camera/async/HandlerExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;",
            "Lcom/android/camera/camcorder/camera/CaptureRequestListCreator",
            "<TC;>;",
            "Lcom/google/android/apps/camera/async/HandlerExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->lock:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    .line 45
    iput-object p2, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    .line 46
    iput-object p3, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->isClosed:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camcorder/camera/PreviewStarter;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/camcorder/camera/PreviewStarter;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->isClosed:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/camcorder/camera/PreviewStarter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/camcorder/camera/PreviewStarter;)Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->cameraCaptureRequestBuilderFactory:Lcom/android/camera/camcorder/camera/CameraCaptureRequestBuilderFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/camcorder/camera/PreviewStarter;)Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->captureRequestListCreator:Lcom/android/camera/camcorder/camera/CaptureRequestListCreator;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->isClosed:Z

    .line 54
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final startPreview(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    .line 71
    iget-object v6, p0, Lcom/android/camera/camcorder/camera/PreviewStarter;->handlerExecutor:Lcom/google/android/apps/camera/async/HandlerExecutor;

    new-instance v0, Lcom/android/camera/camcorder/camera/PreviewStarter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camcorder/camera/PreviewStarter$1;-><init>(Lcom/android/camera/camcorder/camera/PreviewStarter;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Landroid/view/Surface;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v6, v0}, Lcom/google/android/apps/camera/async/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-object v5
.end method
