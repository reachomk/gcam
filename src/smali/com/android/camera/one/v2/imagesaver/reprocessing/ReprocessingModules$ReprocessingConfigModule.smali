.class public Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingModules$ReprocessingConfigModule;
.super Ljava/lang/Object;
.source "ReprocessingModules.java"

# interfaces
.implements Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/media/PersistentInputSurfaceFactory;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideReprocessingSaver(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;
    .locals 8

    .prologue
    .line 1088
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {p4, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    .line 1089
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    move-result-object v3

    .line 1095
    invoke-interface {p3}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;->getMaxImages()I

    move-result v1

    .line 1096
    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->getMaxFrameCount()I

    move-result v0

    .line 1094
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1098
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    const/4 v4, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;-><init>(Lcom/android/camera/one/v2/core/ReprocessingFrameServerSession;Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;IILjava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    .line 1107
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 1109
    return-object v0
.end method


# virtual methods
.method public createPersistentInputSurface()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
