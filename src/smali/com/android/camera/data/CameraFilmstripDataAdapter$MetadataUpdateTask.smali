.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetadataUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final forceUpdate:Z

.field private synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Z)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 722
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 723
    iput-boolean p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->forceUpdate:Z

    .line 724
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 718
    check-cast p1, [Landroid/net/Uri;

    .line 2732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2733
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 2734
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v4}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/FilmstripItemList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/data/FilmstripItemList;->get(Landroid/net/Uri;)Lcom/android/camera/data/FilmstripItem;

    move-result-object v4

    .line 2735
    if-eqz v4, :cond_1

    .line 2738
    iget-object v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v5}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T1M2RB5E9GKCQBCDLPN8SJ9E1262T3185I62S3KCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQDCLQ62P31EHGKORR1CHIN4EO_(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v6}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->forceUpdate:Z

    if-eqz v4, :cond_1

    .line 2739
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2733
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_2
    return-object v1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 718
    check-cast p1, Ljava/util/List;

    .line 1747
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$500(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isInstanceLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1748
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity is destroyed. Canceling load."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1754
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1756
    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-virtual {v3, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1763
    :cond_2
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T1M2RB5E9GKCQBCDLPN8SJ9E1262T3185I62S3KCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQ6D5M6QSRKE9KN0H31EHGKSRRKD5J6IPBI7C______(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;

    move-result-object v0

    new-instance v2, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;

    invoke-direct {v2, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    .line 1775
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1900(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1900(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;->onMetadataUpdated(Ljava/util/List;)V

    goto :goto_0
.end method
