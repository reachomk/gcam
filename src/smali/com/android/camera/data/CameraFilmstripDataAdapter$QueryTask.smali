.class final Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final doneCallback:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 535
    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->doneCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 536
    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;)Lcom/google/android/apps/camera/util/Callback;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->doneCallback:Lcom/google/android/apps/camera/util/Callback;

    return-object v0
.end method

.method private varargs doInBackground([Landroid/content/Context;)Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;
    .locals 11

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "QueryTask.doInBackground"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x0

    aget-object v7, p1, v0

    .line 550
    new-instance v8, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v8}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    .line 552
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "QueryTask.photoItemFactory.queryAll"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v0

    .line 1073
    sget-object v1, Lcom/android/camera/data/PhotoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/PhotoItemFactory;->queryAll(Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v0

    .line 556
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    const-string v2, "QueryTask.IteratePhotoItems"

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v2

    .line 560
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 562
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/PhotoItem;

    .line 563
    invoke-virtual {p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 668
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 564
    const/4 v0, 0x0

    .line 664
    :goto_1
    return-object v0

    .line 567
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/camera/data/PhotoItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 569
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    invoke-static {v5}, Lcom/android/camera/data/BurstItemData;->isFileNamePartOfBurst(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 576
    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    invoke-interface {v2, v6, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 668
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0

    .line 584
    :cond_2
    :try_start_2
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "QueryTask.AddBurstItems"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 590
    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 667
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 668
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 592
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 595
    :cond_4
    :try_start_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 596
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/PhotoItem;

    invoke-virtual {v1}, Lcom/android/camera/data/PhotoItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v5

    .line 597
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1, v5}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$900(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemData;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 598
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    .line 600
    new-instance v2, Lcom/android/camera/data/BurstFrameItem;

    check-cast v0, Lcom/android/camera/data/PhotoItem;

    invoke-direct {v2, v0}, Lcom/android/camera/data/BurstFrameItem;-><init>(Lcom/android/camera/data/PhotoItem;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 603
    :cond_5
    new-instance v0, Lcom/android/camera/data/BurstItem;

    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 605
    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1000(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 606
    invoke-static {v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1100(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 607
    invoke-static {v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 608
    invoke-static {v4}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1300(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/GlideFilmstripManager;

    move-result-object v4

    .line 609
    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/camera/data/BurstItemData;->createFromListOfBurstFrames(Landroid/net/Uri;Ljava/util/List;)Lcom/android/camera/data/BurstItemData;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 611
    invoke-static {v6}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$700(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/storage/Storage;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/BurstItem;-><init>(Lcom/android/camera/processing/ProcessingServiceManager;Lcom/android/camera/session/CaptureSessionManager;Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/BurstItemData;Lcom/android/camera/storage/Storage;)V

    .line 603
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 613
    :cond_6
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skipping burst metadata because saving is in progress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 616
    :cond_7
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skipping burst metadata because burst items is empty"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 621
    :cond_8
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "QueryTask.videoItemFactory.queryAll"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v0

    .line 1080
    sget-object v1, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/data/VideoItemFactory;->queryAll(Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v4

    .line 625
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "QueryTask.Video"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 626
    const-wide/16 v2, -0x1

    .line 627
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 632
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_9

    .line 635
    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v0

    move-wide v2, v0

    .line 640
    :cond_9
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x36

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "retrieved photo metadata, number of items: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v8, v9}, Lcom/android/camera/data/FilmstripItemList;->addAll(Ljava/util/List;)V

    .line 643
    if-eqz v4, :cond_a

    .line 644
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x36

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "retrieved video metadata, number of items: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v8, v4}, Lcom/android/camera/data/FilmstripItemList;->addAll(Ljava/util/List;)V

    .line 647
    :cond_a
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sorting video/photo metadata"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v0, Lcom/android/camera/data/NewestFirstComparator;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/camera/data/NewestFirstComparator;-><init>(Ljava/util/Date;)V

    invoke-virtual {v8, v0}, Lcom/android/camera/data/FilmstripItemList;->sort(Ljava/util/Comparator;)V

    .line 652
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sorted video/photo metadata"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "QueryTask.MetadataLoading"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 656
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x5

    if-ge v0, v1, :cond_c

    invoke-virtual {v8}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 657
    invoke-virtual {p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_b

    .line 667
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 668
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 658
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 661
    :cond_b
    :try_start_4
    invoke-virtual {v8, v0}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 662
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v4}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T1M2RB5E9GKCQBCDLPN8SJ9E1262T3185I62S3KCLP3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQDCLQ62P31EHGKORR1CHIN4EO_(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 664
    :cond_c
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;

    invoke-direct {v0, v8, v2, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;-><init>(Lcom/android/camera/data/FilmstripItemList;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 667
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 668
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 528
    check-cast p1, [Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->doInBackground([Landroid/content/Context;)Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 528
    check-cast p1, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;

    .line 1674
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    const-string v1, "QueryTask.onPostExecute"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1676
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$500(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isInstanceLifetimeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity is destroyed. Canceling load."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1700
    :goto_0
    return-void

    .line 1682
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-wide v2, p1, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;->lastPhotoId:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$602(Lcom/android/camera/data/CameraFilmstripDataAdapter;J)J

    .line 1683
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v1, p1, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;->filmstripItemList:Lcom/android/camera/data/FilmstripItemList;

    invoke-static {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1500(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemList;)V

    .line 1685
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;

    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 1687
    invoke-static {v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J

    move-result-wide v2

    new-instance v4, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask$1;

    invoke-direct {v4, p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask$1;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;JLcom/google/android/apps/camera/util/Callback;)V

    .line 1697
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$1200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewPhotosTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    throw v0
.end method
