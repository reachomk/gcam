.class public final Lcom/android/camera/burst/SurfaceTextureContainer;
.super Ljava/lang/Object;
.source "SurfaceTextureContainer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final surface:Landroid/view/Surface;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 17
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->surface:Landroid/view/Surface;

    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 31
    iget-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 32
    return-void
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/burst/SurfaceTextureContainer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
