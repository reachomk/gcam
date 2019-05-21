.class public final Lcom/android/camera/module/ResourceSurfaceTextureFactory;
.super Ljava/lang/Object;
.source "ResourceSurfaceTextureFactory.java"


# instance fields
.field private final cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/CameraAppUI;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/burst/OrientationLockController;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    .line 26
    iput-object p2, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 27
    iput-object p3, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    .line 28
    iput-object p4, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 29
    return-void
.end method


# virtual methods
.method public final create(Landroid/graphics/SurfaceTexture;)Lcom/google/android/apps/camera/async/RefCountBase;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            ")",
            "Lcom/google/android/apps/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/module/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/module/ResourceSurfaceTextureImpl;

    iget-object v2, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->previewTransformCalculator:Lcom/android/camera/module/PreviewTransformCalculator;

    iget-object v3, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->cameraAppUI:Lcom/android/camera/ui/CameraAppUI;

    iget-object v4, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v5, p0, Lcom/android/camera/module/ResourceSurfaceTextureFactory;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/ResourceSurfaceTextureImpl;-><init>(Landroid/graphics/SurfaceTexture;Lcom/android/camera/module/PreviewTransformCalculator;Lcom/android/camera/ui/CameraAppUI;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/burst/OrientationLockController;)V

    .line 38
    new-instance v1, Lcom/google/android/apps/camera/async/RefCountBase;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/async/RefCountBase;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;)V

    return-object v1
.end method
