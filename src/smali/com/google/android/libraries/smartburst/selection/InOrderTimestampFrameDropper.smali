.class public final Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;
.super Ljava/lang/Object;
.source "InOrderTimestampFrameDropper.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameDropper;


# instance fields
.field private final mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private mMaxTimestampOfLastInsertedFrame:J

.field private final mOutOfOrderFrames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mOutOfOrderFrames:Ljava/util/TreeSet;

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mMaxTimestampOfLastInsertedFrame:J

    .line 25
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 27
    return-void
.end method


# virtual methods
.method public final getAcceptedFrames()Ljava/util/Set;
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
    .line 69
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized onFrameDropped(J)V
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mOutOfOrderFrames:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onFrameInserted(J)V
    .locals 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mMaxTimestampOfLastInsertedFrame:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 41
    const-string v0, "InOrderTimestampFrameDropper"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Encountered out of order frame with timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mOutOfOrderFrames:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mMaxTimestampOfLastInsertedFrame:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 44
    const-string v0, "InOrderTimestampFrameDropper"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Encountered duplicate frame with timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mOutOfOrderFrames:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 47
    :cond_1
    :try_start_2
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mMaxTimestampOfLastInsertedFrame:J

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final reserveBestFrameForProcessing()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reserveBestFrameForProcessing()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized reset()V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mMaxTimestampOfLastInsertedFrame:J

    .line 62
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mOutOfOrderFrames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized selectFrameToDrop()J
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mOutOfOrderFrames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mOutOfOrderFrames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 34
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
