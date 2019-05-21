.class final Lcom/android/camera/app/CameraActivityControllerImpl$11$1;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

.field private synthetic val$count:I

.field private synthetic val$firstItem:Lcom/android/camera/data/FilmstripItem;

.field private synthetic val$thumbnailBitmap:Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl$11;Lcom/android/camera/data/FilmstripItem;Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;I)V
    .locals 0

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iput-object p2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$firstItem:Lcom/android/camera/data/FilmstripItem;

    iput-object p3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$thumbnailBitmap:Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;

    iput p4, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2044
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$firstItem:Lcom/android/camera/data/FilmstripItem;

    if-eq v0, v1, :cond_1

    .line 2046
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "first filmstrip item changed, cancel indicator update"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$thumbnailBitmap:Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$thumbnailBitmap:Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;

    iget-object v0, v0, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;->bitmap:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2050
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$thumbnailBitmap:Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;

    iget-object v0, v0, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;->bitmap:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2052
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/util/Size;

    .line 2054
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "updateCaptureIndicatorWithFirstFilmstripItem bitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2051
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v1, v1, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-result-object v1

    invoke-interface {v1, v0, v5}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 2056
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v1, v1, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3400(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/storage/cache/SingleKeyCache;

    move-result-object v1

    new-instance v2, Lcom/android/camera/storage/cache/OrientationBitmap;

    sget-object v3, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-direct {v2, v0, v3}, Lcom/android/camera/storage/cache/OrientationBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/camera/util/layout/Orientation;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/storage/cache/SingleKeyCache;->update(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2059
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v1, v1, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v1

    .line 2060
    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;

    move-result-object v1

    .line 2061
    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->onFirstItemThumbnailUpdated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2065
    :cond_2
    iget v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$count:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->val$count:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2066
    :cond_3
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorController;->showPlaceholder()V

    .line 2067
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;->this$1:Lcom/android/camera/app/CameraActivityControllerImpl$11;

    iget-object v0, v0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$800(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripFragment;

    move-result-object v0

    .line 2068
    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripContentPanel()Lcom/android/camera/filmstrip/FilmstripContentPanel;

    move-result-object v0

    .line 2069
    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripContentPanel;->showFilmstripItemThumbnailPlaceholder()V

    goto/16 :goto_0
.end method
