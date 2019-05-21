.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadNewPhotosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/data/PhotoItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final doneCallback:Lcom/google/android/apps/camera/util/Callback;

.field private final minPhotoId:J

.field private synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;JLcom/google/android/apps/camera/util/Callback;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 398
    iput-wide p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->minPhotoId:J

    .line 399
    iput-object p4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->doneCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 400
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 392
    check-cast p1, [Landroid/content/ContentResolver;

    .line 2409
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "LoadNewPhotosTask.doInBackground"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 2411
    iget-wide v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->minPhotoId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2412
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->minPhotoId:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x47

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "updating media metadata with photos newer than id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/PhotoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->minPhotoId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/PhotoItemFactory;->queryAll(Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v0

    .line 2418
    :goto_0
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 392
    return-object v0

    .line 2416
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 392
    check-cast p1, Ljava/util/List;

    .line 1424
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "LoadNewPhotosTask.onPostExecute"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$500(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isInstanceLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity is destroyed. Canceling load."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1433
    :goto_0
    return-void

    .line 1430
    :cond_0
    if-nez p1, :cond_1

    .line 1431
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null data returned from new photos query"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_0

    .line 1436
    :cond_1
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "new photos query return num items: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1438
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    .line 1441
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v0

    .line 1442
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J

    move-result-wide v4

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x4a

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "updating last photo id (old:new) "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$602(Lcom/android/camera/data/CameraFilmstripDataAdapter;J)J

    .line 1451
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    .line 1452
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 1453
    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$700(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/storage/Storage;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera/storage/Storage;->getSessionUriFromContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1454
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-virtual {v4, v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 1455
    :cond_3
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "updating with new item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    goto :goto_1

    .line 1458
    :cond_4
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "skipping session source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1462
    :cond_5
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->doneCallback:Lcom/google/android/apps/camera/util/Callback;

    if-eqz v0, :cond_6

    .line 1463
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->doneCallback:Lcom/google/android/apps/camera/util/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 1465
    :cond_6
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_0
.end method
