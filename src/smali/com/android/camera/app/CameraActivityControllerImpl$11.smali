.class final Lcom/android/camera/app/CameraActivityControllerImpl$11;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;->updateCaptureIndicatorWithFirstFilmstripItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3300(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 2031
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getCount()I

    move-result v1

    .line 2033
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 2034
    if-eqz v2, :cond_0

    .line 2036
    invoke-interface {v2, v0, v0}, Lcom/android/camera/data/FilmstripItem;->generateThumbnail(II)Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;

    move-result-object v0

    .line 2040
    :goto_0
    iget-object v3, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v3}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1200(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl$11$1;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl$11;Lcom/android/camera/data/FilmstripItem;Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2088
    :goto_1
    return-void

    .line 2038
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2074
    :catch_0
    move-exception v0

    .line 2078
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception generating thumbnail"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2079
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$11;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1200(Lcom/android/camera/app/CameraActivityControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl$11$2;

    invoke-direct {v1, p0}, Lcom/android/camera/app/CameraActivityControllerImpl$11$2;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
