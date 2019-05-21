.class Lcom/android/camera/app/CameraActivityControllerImpl$10$1;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;",
        "Lcom/google/android/apps/camera/util/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

.field private synthetic this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4IBDE1M28C9G7C______:Lcom/android/camera/app/LegacyCameraProviderModule;

.field private synthetic val$data:Lcom/android/camera/data/FilmstripItem;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 3651
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallback(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1903
    .line 2906
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4IBDE1M28C9G7C______:Lcom/android/camera/app/LegacyCameraProviderModule;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->val$data:Lcom/android/camera/data/FilmstripItem;

    invoke-static {v0, v1}, Lcom/android/camera/app/LegacyCameraProviderModule;->access$3000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6O91H60TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBD7CKLC___(Lcom/android/camera/app/LegacyCameraProviderModule;Lcom/android/camera/data/FilmstripItem;)V

    .line 1903
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .prologue
    .line 3654
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isForegroundLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 3655
    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$000(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isVisibleLifetimeClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 3656
    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$100(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3659
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$202(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z

    .line 3660
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$10$1;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$300(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/module/ModuleController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/ModuleController;->stop()V

    .line 3662
    :cond_0
    return-void
.end method
