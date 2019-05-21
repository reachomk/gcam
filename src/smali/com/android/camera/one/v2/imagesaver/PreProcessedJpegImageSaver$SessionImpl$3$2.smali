.class final Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$2;
.super Ljava/lang/Object;
.source "PreProcessedJpegImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$2;->this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$2;->this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;->access$300(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Failed to generate thumbnail"

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 312
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1315
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$2;->this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->access$400(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;)Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3$2;->this$2:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;

    iget-object v1, v1, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$3;->this$1:Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;

    .line 1316
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;->access$600(Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v1

    .line 1315
    invoke-interface {v0, p1, v1}, Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;->setCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 312
    return-void
.end method
