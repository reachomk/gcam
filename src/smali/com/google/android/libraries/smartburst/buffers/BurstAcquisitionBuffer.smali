.class public final Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;
.super Ljava/lang/Object;
.source "BurstAcquisitionBuffer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/buffers/FrameConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/buffers/FrameConsumer",
        "<",
        "Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapProcessor:Lcom/google/android/libraries/smartburst/media/BitmapProcessor;

.field private final mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

.field private final mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

.field private final mMaxNumberOfFrames:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;Lcom/google/android/libraries/smartburst/media/BitmapProcessor;I)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    .line 35
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Invalid max size."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 39
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mBitmapProcessor:Lcom/google/android/libraries/smartburst/media/BitmapProcessor;

    .line 40
    iput p3, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mMaxNumberOfFrames:I

    .line 41
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 5

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getTimestamp()J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;->containsTimestamp(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "BurstAcquisitionBuffer"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x49

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Encountered duplicate frame with timestamp, ignoring:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;->getSize()I

    move-result v2

    .line 53
    iget v3, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mMaxNumberOfFrames:I

    if-ne v2, v3, :cond_2

    .line 54
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v2}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->selectFrameToDrop()J

    move-result-wide v2

    .line 55
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;->removeFrame(J)V

    .line 59
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v4, v2, v3}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameDropped(J)V

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;->onFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 68
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v2, v0, v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->onFrameInserted(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_2
    :try_start_2
    iget v3, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mMaxNumberOfFrames:I

    if-le v2, v3, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store has more frames than inserted!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public final onEndOfStream()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameDropper:Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/selection/FrameDropper;->getAcceptedFrames()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    .line 74
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;->getTimestamps()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mBitmapProcessor:Lcom/google/android/libraries/smartburst/media/BitmapProcessor;

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;->extractBitmapsForTimestamps(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/libraries/smartburst/media/BitmapProcessor;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->mFrameImageBuffer:Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/FrameImageBuffer;->clear()V

    .line 76
    return-void
.end method

.method public final bridge synthetic onFrameAvailable(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/buffers/BurstAcquisitionBuffer;->onFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    return-void
.end method
