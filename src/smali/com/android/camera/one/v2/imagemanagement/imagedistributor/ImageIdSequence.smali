.class final Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;
.super Ljava/lang/Object;
.source "ImageIdSequence.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/core/ImageId;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final imageIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->imageIdComparator:Ljava/util/Comparator;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->lock:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private final removeUnlocked(Lcom/android/camera/one/v2/core/ImageId;)Z
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/android/camera/one/v2/core/ImageId;->getTimestampNs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 96
    :goto_0
    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    return v1

    .line 95
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final peek(Ljava/lang/Long;)Lcom/android/camera/one/v2/core/ImageId;
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ImageId;

    monitor-exit v1

    .line 55
    :goto_0
    return-object v0

    .line 54
    :cond_0
    monitor-exit v1

    .line 55
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final remove(Lcom/android/camera/one/v2/core/ImageId;)Z
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->removeUnlocked(Lcom/android/camera/one/v2/core/ImageId;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final removeIdsOlderThan(Lcom/android/camera/one/v2/core/ImageId;)Ljava/util/TreeSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->imageIdComparator:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 74
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 76
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ImageId;

    .line 77
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/ImageId;->getOnStartedId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/camera/one/v2/core/ImageId;->getOnStartedId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ImageId;

    .line 85
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->removeUnlocked(Lcom/android/camera/one/v2/core/ImageId;)Z

    goto :goto_1

    .line 87
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    return-object v1
.end method

.method public final update(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/camera/one/v2/core/ImageId;->getTimestampNs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_0
    monitor-exit v1

    return-void

    .line 111
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->imageIdComparator:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 112
    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->cache:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/android/camera/one/v2/core/ImageId;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageIdSequence;->update(Lcom/android/camera/one/v2/core/ImageId;)V

    return-void
.end method
