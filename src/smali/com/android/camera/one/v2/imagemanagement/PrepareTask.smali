.class final Lcom/android/camera/one/v2/imagemanagement/PrepareTask;
.super Ljava/lang/Object;
.source "PrepareTask.java"

# interfaces
.implements Lcom/android/camera/one/v2/lifecycle/StartTask;


# instance fields
.field private final imageSource:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;

.field private final maxImageCount:I

.field private final surface:Landroid/view/Surface;

.field private final surfacePreparer:Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;ILandroid/view/Surface;Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->surfacePreparer:Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;

    .line 28
    iput p2, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->maxImageCount:I

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->surface:Landroid/view/Surface;

    .line 30
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->imageSource:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;

    .line 31
    return-void
.end method


# virtual methods
.method public final run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->surfacePreparer:Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->surface:Landroid/view/Surface;

    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->maxImageCount:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;->prepare(Landroid/view/Surface;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;->imageSource:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;

    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->setPrepared(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
