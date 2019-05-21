.class final Lcom/android/camera/module/ResourceSurfaceTextureImpl;
.super Ljava/lang/Object;
.source "ResourceSurfaceTextureImpl.java"

# interfaces
.implements Lcom/android/camera/module/ResourceSurfaceTexture;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

.field private lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private lastPreviewSize:Lcom/android/camera/util/Size;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private previewLayoutSize:Lcom/android/camera/util/Size;

.field private previewSize:Lcom/android/camera/util/Size;

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ResSurfaceTexture"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/CameraAppUI;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/burst/OrientationLockController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 50
    iput-object p2, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 51
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    .line 52
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v1, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewLayoutSize:Lcom/android/camera/util/Size;

    .line 53
    iput-object p3, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    .line 54
    iput-object p4, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 55
    iput-object p5, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 56
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public final createPreviewSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final getPreviewSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public final setPreviewLayoutSize(Lcom/android/camera/util/Size;)V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 98
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewLayoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewLayoutSize:Lcom/android/camera/util/Size;

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->updatePreviewTransform()V

    .line 102
    :cond_0
    return-void
.end method

.method public final setPreviewSize(Lcom/android/camera/util/Size;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->lastPreviewSize:Lcom/android/camera/util/Size;

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->lastPreviewSize:Lcom/android/camera/util/Size;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iput-object p1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    .line 81
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/module/ResourceSurfaceTextureImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/ResourceSurfaceTextureImpl$1;-><init>(Lcom/android/camera/module/ResourceSurfaceTextureImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 91
    return-void
.end method

.method public final updatePreviewTransform()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 107
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 108
    sget-object v0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->TAG:Ljava/lang/String;

    const-string v1, "Do nothing since mPreviewSize is 0"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewLayoutSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 112
    sget-object v0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->TAG:Ljava/lang/String;

    const-string v1, "Do nothing since mPreviewLayoutSize is 0"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->lastPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    .line 117
    invoke-static {v1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewLayoutSize:Lcom/android/camera/util/Size;

    .line 118
    invoke-static {v0}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    .line 119
    invoke-static {v1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 120
    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    iget-object v1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewLayoutSize:Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraAppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->lastDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 126
    iget-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->previewSize:Lcom/android/camera/util/Size;

    iput-object v0, p0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;->lastPreviewSize:Lcom/android/camera/util/Size;

    goto :goto_0
.end method
