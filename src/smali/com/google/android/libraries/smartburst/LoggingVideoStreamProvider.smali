.class public final Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;
.super Ljava/lang/Object;
.source "LoggingVideoStreamProvider.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;
.implements Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;


# instance fields
.field private mAddedOurselves:Z

.field private final mAllTimestamps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGrabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mMeasureStartNs:J

.field private final mSkipCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mAllTimestamps:Ljava/util/Set;

    .line 34
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mGrabs:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mSkipCounts:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mDimensions:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mAddedOurselves:Z

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mMeasureStartNs:J

    .line 41
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mMeasureStartNs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mAllTimestamps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mGrabs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mSkipCounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mDimensions:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mAddedOurselves:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mAddedOurselves:Z

    .line 134
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->close()V

    .line 146
    return-void
.end method

.method public final getGrabLogWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;-><init>(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)V

    return-object v0
.end method

.method public final getStatsReportWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$1;-><init>(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)V

    return-object v0
.end method

.method public final grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z

    move-result v1

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mGrabs:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mGrabs:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mDimensions:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v3

    .line 120
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v4

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    monitor-exit p0

    .line 122
    return v1

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onVideoFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;J)V
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mAllTimestamps:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->skipVideoFrame()V

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onVideoStreamError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 167
    const-string v0, "LoggingVideoStreamProvider"

    const-string v1, "Video stream error!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    return-void
.end method

.method public final onVideoStreamStarted()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mMeasureStartNs:J

    .line 159
    return-void
.end method

.method public final onVideoStreamStopped()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public final removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V

    .line 141
    return-void
.end method

.method public final skipVideoFrame()V
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mSkipCounts:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mSkipCounts:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;->skipVideoFrame()V

    .line 104
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->mVideoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
