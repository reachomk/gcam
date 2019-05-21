.class public Lcom/android/camera/data/FilmstripDataModule;
.super Ljava/lang/Object;
.source "FilmstripDataModule.java"


# instance fields
.field private final burstInputSurface:Landroid/view/Surface;

.field private final flashObservable:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final frameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final maxFramesToRequest:I

.field private final minFramesToRequest:I

.field private final requestBuilder:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final restorePreviewCommand:Ljava/lang/Runnable;

.field private final trace:Lcom/android/camera/debug/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Landroid/view/Surface;Ljava/lang/Runnable;IILcom/android/camera/debug/trace/Trace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            "Landroid/view/Surface;",
            "Ljava/lang/Runnable;",
            "II",
            "Lcom/android/camera/debug/trace/Trace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2057
    iput-object p1, p0, Lcom/android/camera/data/FilmstripDataModule;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 2058
    iput-object p2, p0, Lcom/android/camera/data/FilmstripDataModule;->requestBuilder:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2059
    iput-object p3, p0, Lcom/android/camera/data/FilmstripDataModule;->flashObservable:Lcom/google/android/apps/camera/async/Observable;

    .line 2060
    iput-object p4, p0, Lcom/android/camera/data/FilmstripDataModule;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 2061
    iput-object p5, p0, Lcom/android/camera/data/FilmstripDataModule;->burstInputSurface:Landroid/view/Surface;

    .line 2062
    iput-object p6, p0, Lcom/android/camera/data/FilmstripDataModule;->restorePreviewCommand:Ljava/lang/Runnable;

    .line 2063
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/data/FilmstripDataModule;->minFramesToRequest:I

    .line 2064
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/camera/data/FilmstripDataModule;->maxFramesToRequest:I

    .line 2065
    iput-object p9, p0, Lcom/android/camera/data/FilmstripDataModule;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 2066
    return-void
.end method


# virtual methods
.method public canStartBurst()Z
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule;->burstInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iget v1, p0, Lcom/android/camera/data/FilmstripDataModule;->minFramesToRequest:I

    .line 1092
    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstCaptureCommand;->canStartBurst(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1091
    goto :goto_0
.end method

.method public newBurstCaptureCommand(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/FrameSaver;Lcom/google/android/libraries/smartburst/integration/BurstMode;)Lcom/android/camera/burst/BurstCaptureCommand;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
            ">;",
            "Lcom/android/camera/burst/FrameSaver;",
            "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
            ")",
            "Lcom/android/camera/burst/BurstCaptureCommand;"
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataModule;->burstInputSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    new-instance v0, Lcom/android/camera/burst/BurstCaptureCommand;

    iget-object v1, p0, Lcom/android/camera/data/FilmstripDataModule;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    iget-object v2, p0, Lcom/android/camera/data/FilmstripDataModule;->requestBuilder:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, p0, Lcom/android/camera/data/FilmstripDataModule;->flashObservable:Lcom/google/android/apps/camera/async/Observable;

    .line 1077
    invoke-interface {v3}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    iget-object v4, p0, Lcom/android/camera/data/FilmstripDataModule;->frameAllocator:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iget-object v5, p0, Lcom/android/camera/data/FilmstripDataModule;->burstInputSurface:Landroid/view/Surface;

    iget-object v8, p0, Lcom/android/camera/data/FilmstripDataModule;->restorePreviewCommand:Ljava/lang/Runnable;

    iget v9, p0, Lcom/android/camera/data/FilmstripDataModule;->minFramesToRequest:I

    iget v10, p0, Lcom/android/camera/data/FilmstripDataModule;->maxFramesToRequest:I

    iget-object v11, p0, Lcom/android/camera/data/FilmstripDataModule;->trace:Lcom/android/camera/debug/trace/Trace;

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/burst/BurstCaptureCommand;-><init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Landroid/view/Surface;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/burst/FrameSaver;Ljava/lang/Runnable;IILcom/android/camera/debug/trace/Trace;Lcom/google/android/libraries/smartburst/integration/BurstMode;)V

    .line 1074
    return-object v0
.end method
