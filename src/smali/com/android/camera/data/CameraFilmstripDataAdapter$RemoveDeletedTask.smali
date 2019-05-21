.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveDeletedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/data/FilmstripItemList;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;B)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 482
    check-cast p1, [Lcom/android/camera/data/FilmstripItemList;

    .line 2486
    aget-object v1, p1, v0

    .line 2487
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2490
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2491
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v4}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v4

    .line 3102
    sget-object v5, Lcom/android/camera/data/PhotoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/data/PhotoItemFactory;->queryUriAll(Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v4

    .line 2492
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2493
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v4}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v4

    .line 3103
    sget-object v5, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/data/VideoItemFactory;->queryUriAll(Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v4

    .line 2494
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2497
    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2499
    invoke-virtual {v1, v0}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 2501
    invoke-virtual {v1, v0}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->isInProgress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2505
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2506
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2497
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_1
    return-object v2
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 482
    check-cast p1, Ljava/util/List;

    .line 1516
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$500(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isInstanceLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1517
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity is destroyed. Canceling load."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_0
    return-void

    .line 1521
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1522
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    .line 1523
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$RemoveDeletedTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->removeAt(I)V

    goto :goto_0
.end method
