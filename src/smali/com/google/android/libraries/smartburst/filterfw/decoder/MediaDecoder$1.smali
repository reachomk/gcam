.class Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;
.super Ljava/lang/Object;
.source "MediaDecoder.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSeenEndOfAudioOutput:Z

.field private mSeenEndOfVideoOutput:Z

.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodedOutputAvailable(Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder;)V
    .locals 6

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->getTimestampNs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->stop()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$500(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;->set(I)V

    .line 357
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;

    .line 358
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    .line 359
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->getTimestampNs()J

    move-result-wide v4

    .line 358
    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;->onVideoFrameAvailable(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;J)V

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :cond_2
    :goto_1
    return-void

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$700(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$800(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$700(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;->set(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$700(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/AudioFrameConsumer;

    .line 366
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-interface {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/AudioFrameConsumer;->onAudioSamplesAvailable(Lcom/google/android/libraries/smartburst/filterfw/AudioFrameProvider;)V

    goto :goto_2

    .line 368
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public onEndOfStream(Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 374
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 375
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->mSeenEndOfAudioOutput:Z

    .line 380
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->mSeenEndOfAudioOutput:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    .line 381
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->mSeenEndOfVideoOutput:Z

    if-eqz v0, :cond_3

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$900(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Z)V

    .line 384
    :cond_3
    return-void

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 377
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;->mSeenEndOfVideoOutput:Z

    goto :goto_0
.end method
