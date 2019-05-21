.class final Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;
.super Ljava/lang/Object;
.source "MostRecentImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver$ImageSaverSession;


# instance fields
.field private final fullSizeImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation
.end field

.field private final singleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

.field private final thumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->singleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->thumbnails:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    .line 32
    return-void
.end method

.method private final closeAllImages()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->thumbnails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 88
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 92
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    goto :goto_1

    .line 94
    :cond_1
    return-void
.end method

.method private static closeOlderImages(JLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "+",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 99
    cmp-long v0, v4, p0

    if-gez v0, :cond_0

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 104
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Long;

    .line 105
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_2
    return-void
.end method


# virtual methods
.method public final addFullSizeImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    .line 46
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 47
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->forImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->TOTAL_CAPTURE_RESULT:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    invoke-virtual {v2, v3, p2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->add(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    move-object v1, v0

    .line 1111
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    invoke-static {v2, v3, v0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages(JLjava/util/Map;)V

    .line 1113
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->thumbnails:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages(JLjava/util/Map;)V

    .line 49
    :cond_0
    return-void

    .line 1121
    :cond_1
    const/4 v2, 0x0

    .line 1122
    const-wide/16 v0, 0x0

    .line 1123
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v7, v0

    move v1, v2

    move-wide v2, v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 1124
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v4

    .line 1125
    if-eqz v1, :cond_2

    cmp-long v0, v4, v2

    if-lez v0, :cond_5

    .line 1127
    :cond_2
    const/4 v2, 0x1

    move-wide v0, v4

    :goto_2
    move-wide v7, v0

    move v1, v2

    move-wide v2, v7

    .line 1129
    goto :goto_1

    .line 1130
    :cond_3
    if-nez v1, :cond_4

    .line 1131
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1133
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_5
    move-wide v7, v2

    move v2, v1

    move-wide v0, v7

    goto :goto_2
.end method

.method public final close()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 55
    :try_start_0
    new-instance v0, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>()V

    .line 56
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 1139
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v4, v2

    .line 59
    :goto_0
    if-eqz v4, :cond_5

    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    move-object v1, v0

    .line 67
    :goto_1
    if-eqz v4, :cond_4

    .line 68
    invoke-virtual {v4}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v2

    .line 1153
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->thumbnails:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 69
    if-eqz v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->thumbnails:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->singleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    .line 78
    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 79
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 77
    invoke-interface {v2, v3, v0, v1}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->saveAndCloseImage(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeAllImages()V

    .line 83
    return-void

    .line 1143
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->fullSizeImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 1144
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    :cond_2
    :goto_4
    move-object v1, v0

    .line 1147
    goto :goto_3

    :cond_3
    move-object v4, v1

    .line 1148
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeAllImages()V

    throw v0

    :cond_4
    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v1, v3

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_4
.end method
