.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask$1;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask$1;->this$1:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask$1;->this$1:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->access$1600(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask$1;->this$1:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->access$1600(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;)Lcom/google/android/apps/camera/util/Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask$1;->this$1:Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    iget-object v0, v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T1M2RB5E9GKCQBCDLPN8SJ9E1262T3185I62S3KCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQ6D5M6QSRKE9KN0H31EHGKSRRKD5J6IPBI7C______(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->onFilmstripItemsLoaded()V

    .line 695
    :cond_0
    return-void
.end method
