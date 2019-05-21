.class final Lcom/android/camera/app/CameraActivityControllerImpl$4;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/storage/cache/OrientationBitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 779
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exception retrieving cached indicator Bitmap"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 746
    check-cast p1, Lcom/android/camera/storage/cache/OrientationBitmap;

    .line 1749
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "retrieved indicator Bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    if-eqz p1, :cond_0

    .line 1751
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updating indicator Bitmap from cache"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/storage/cache/OrientationBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/camera/storage/cache/OrientationBitmap;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 1753
    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    .line 1752
    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 1754
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v0

    .line 1755
    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;

    move-result-object v0

    iget-object v1, p1, Lcom/android/camera/storage/cache/OrientationBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1756
    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->onFirstItemThumbnailUpdated(Landroid/graphics/Bitmap;)V

    .line 1758
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$900(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1000(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filmstrip_index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1760
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1200(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/app/CameraActivityControllerImpl$4$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/app/CameraActivityControllerImpl$4$1;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl$4;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1772
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$4;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, v4}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$902(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z

    .line 746
    :cond_0
    return-void
.end method
