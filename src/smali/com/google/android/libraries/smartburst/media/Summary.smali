.class public Lcom/google/android/libraries/smartburst/media/Summary;
.super Ljava/lang/Object;
.source "Summary.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/media/Image;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/media/Summary$ShareHandleFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/libraries/smartburst/media/Image;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/media/Image;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mExtraTimestamps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mImageHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final mNewHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method public constructor <init>(Ljava/util/Map;IILjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;>;>;II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/media/Summary;-><init>(Ljava/util/Map;IILjava/util/concurrent/Executor;Ljava/util/Set;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;IILjava/util/concurrent/Executor;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;>;>;II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mNewHandles:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mImageHandles:Ljava/util/Map;

    .line 59
    iput p2, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mWidth:I

    .line 60
    iput p3, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mHeight:I

    .line 61
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExecutor:Ljava/util/concurrent/Executor;

    .line 62
    iput-object p5, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExtraTimestamps:Ljava/util/Set;

    .line 63
    return-void
.end method

.method private getImageHandleResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mImageHandles:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/concurrency/Result;

    .line 89
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "No image at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/Functions;->closeInput()Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mImageHandles:Ljava/util/Map;

    .line 282
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/utils/Functions;->constant(Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mNewHandles:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/concurrency/Results;->whenAllDone(Ljava/lang/Iterable;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExecutor:Ljava/util/concurrent/Executor;

    .line 287
    invoke-virtual {v2, v3, v1, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExecutor:Ljava/util/concurrent/Executor;

    .line 288
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->mapEachResult(Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/concurrency/Result;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mHeight:I

    return v0
.end method

.method public final getImageHandleAt(J)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageHandleResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->getUnchecked(Lcom/google/android/libraries/smartburst/concurrency/Result;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    return-object v0
.end method

.method public final getImageResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageHandleResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/google/android/libraries/smartburst/utils/Functions;->getHandleValue()Lcom/google/android/libraries/smartburst/utils/Function;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    return-object v0
.end method

.method public final getSortedNonExtraTimestamps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/media/Summary;->getSortedTimestamps()Ljava/util/List;

    move-result-object v0

    .line 1200
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExtraTimestamps:Ljava/util/Set;

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 191
    return-object v0
.end method

.method public final getSortedTimestamps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mImageHandles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 180
    return-object v0
.end method

.method public final getTimestamps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mImageHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mWidth:I

    return v0
.end method

.method public final markAsExtra(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExtraTimestamps:Ljava/util/Set;

    .line 211
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExtraTimestamps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 212
    return-void
.end method

.method public final markedAsExtra()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExtraTimestamps:Ljava/util/Set;

    return-object v0
.end method

.method public final declared-synchronized newImageHandleAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/libraries/smartburst/concurrency/Result",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/media/Summary;->getImageHandleResultAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/libraries/smartburst/media/Summary$ShareHandleFunction;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/libraries/smartburst/media/Summary$ShareHandleFunction;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mNewHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized select(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/media/Summary;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;-><init>()V

    .line 263
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 264
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0, v2, v3}, Lcom/google/android/libraries/smartburst/media/Summary;->newImageHandleAt(J)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v4

    iget v5, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mWidth:I

    iget v6, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mHeight:I

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mExtraTimestamps:Ljava/util/Set;

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 265
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->add(JLcom/google/android/libraries/smartburst/concurrency/Result;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->build()Lcom/google/android/libraries/smartburst/media/Summary;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/media/Summary;->mImageHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
