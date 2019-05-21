.class final Lcom/android/camera/app/CameraActivityControllerImpl$9;
.super Landroid/os/AsyncTask;
.source "CameraActivityControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;->notifyNewMedia(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/data/FilmstripItem;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/FilmstripItem;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$9;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1761
    check-cast p1, [Lcom/android/camera/data/FilmstripItem;

    .line 3764
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 3765
    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$9;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$9;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v2}, Lcom/android/camera/app/CameraActivityControllerImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 1761
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1761
    check-cast p1, Lcom/android/camera/data/FilmstripItem;

    .line 2772
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$9;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1700(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2777
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$9;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    .line 1761
    :cond_0
    return-void
.end method
