.class final Lcom/android/camera/one/v2/viewfinder/ViewfinderCaptureStream;
.super Ljava/lang/Object;
.source "ViewfinderCaptureStream.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/CaptureStream;


# instance fields
.field private final viewfinderSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderCaptureStream;->viewfinderSurface:Landroid/view/Surface;

    .line 19
    return-void
.end method


# virtual methods
.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/one/v2/viewfinder/ViewfinderCaptureStream;->viewfinderSurface:Landroid/view/Surface;

    invoke-static {}, Lcom/android/camera/one/v2/core/FrameServerModule;->noop()Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/core/FreeFrameTarget;->create(Landroid/view/Surface;Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    return-object v0
.end method
