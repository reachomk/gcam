.class Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;
.super Ljava/lang/Object;
.source "MediaDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecoderRunnable"
.end annotation


# static fields
.field private static final MAX_EVENTS:I = 0x20

.field private static final VIDEO_START_WAIT_MS:J = 0x3e8L


# instance fields
.field private mAudioTrackIndex:I

.field private volatile mDefaultRotation:I

.field private volatile mDurationUs:J

.field private final mEventQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

.field private mSignaledEndOfInput:Z

.field private final mStarted:Landroid/os/ConditionVariable;

.field private mVideoTrackIndex:I

.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)V
    .locals 2

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mEventQueue:Ljava/util/concurrent/BlockingQueue;

    .line 400
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mStarted:Landroid/os/ConditionVariable;

    .line 421
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDurationUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)V

    return-void
.end method

.method private getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 615
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-nez v0, :cond_0

    .line 616
    invoke-static {v1, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->newTarget(II)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    return-object v0
.end method

.method private onDecode()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 584
    if-ltz v0, :cond_4

    .line 585
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    if-ne v0, v1, :cond_3

    .line 586
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->feedInput(Landroid/media/MediaExtractor;)Z

    .line 600
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->drainOutputBuffer()Z

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->drainOutputBuffer()Z

    .line 606
    :cond_2
    return-void

    .line 587
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    if-ne v0, v1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->feedInput(Landroid/media/MediaExtractor;)Z

    goto :goto_0

    .line 590
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mSignaledEndOfInput:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 592
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->signalEndOfInput()V

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 595
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->signalEndOfInput()V

    .line 597
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mSignaledEndOfInput:Z

    goto :goto_0
.end method

.method private onStart()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 478
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1000(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focus()V

    .line 482
    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 483
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1100(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 485
    iput v6, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    .line 486
    iput v6, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    .line 488
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 489
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 493
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/DecoderUtil;->isSupportedVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    if-ne v2, v6, :cond_3

    .line 494
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    .line 498
    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDurationUs:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    .line 499
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_4

    .line 500
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDurationUs:J

    .line 488
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_3
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/DecoderUtil;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    if-ne v2, v6, :cond_1

    .line 496
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    goto :goto_1

    .line 501
    :cond_4
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_5

    .line 502
    const-string v2, "durationUs"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDurationUs:J

    goto :goto_2

    .line 504
    :cond_5
    const-string v2, "durationUs"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDurationUs:J

    goto :goto_2

    .line 509
    :cond_6
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    if-ne v0, v6, :cond_7

    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    if-ne v0, v6, :cond_7

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Couldn\'t find a video or audio track in the provided file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_7
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    if-eq v0, v6, :cond_8

    .line 515
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1000(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 517
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/GpuVideoTrackDecoder;-><init>(ILandroid/media/MediaFormat;Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;)V

    .line 516
    :goto_3
    invoke-static {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$302(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    .line 519
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->init()V

    .line 520
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_8

    .line 522
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1100(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/util/MediaUtils;->getMediaRotation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDefaultRotation:I

    .line 526
    :cond_8
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    if-eq v0, v6, :cond_9

    .line 527
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    .line 529
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;-><init>(ILandroid/media/MediaFormat;Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;)V

    .line 528
    invoke-static {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$602(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    .line 530
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->init()V

    .line 531
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 534
    :cond_9
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_a

    .line 535
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 538
    :cond_a
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 540
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;

    .line 542
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;->onVideoStreamStarted()V

    goto :goto_4

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 518
    :cond_b
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/CpuVideoTrackDecoder;-><init>(ILandroid/media/MediaFormat;Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;)V

    goto/16 :goto_3

    .line 544
    :cond_c
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private onStop(Z)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 549
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 551
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->release()V

    .line 553
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$302(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->release()V

    .line 558
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$602(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$1000(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-eqz v0, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->release()V

    .line 565
    :cond_2
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->focusNone()V

    .line 568
    :cond_3
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mVideoTrackIndex:I

    .line 569
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mAudioTrackIndex:I

    .line 571
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mEventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 573
    if-eqz p1, :cond_5

    .line 574
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;

    .line 576
    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;->onVideoStreamStopped()V

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    :cond_5
    return-void
.end method

.method private waitForStart()V
    .locals 4

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mStarted:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timed out while waiting for video to load."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultRotation()I
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->waitForStart()V

    .line 429
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDefaultRotation:I

    return v0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->waitForStart()V

    .line 434
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDurationUs:J

    return-wide v0
.end method

.method public postEvent(I)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mEventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mEventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 444
    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    move v0, v2

    .line 462
    :goto_1
    if-eqz v0, :cond_0

    .line 475
    :goto_2
    return-void

    .line 447
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->onStart()V

    move v0, v2

    .line 448
    goto :goto_1

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->waitForFrameGrabs()Z

    .line 455
    :cond_2
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->onStop(Z)V

    move v0, v1

    .line 456
    goto :goto_1

    .line 459
    :cond_3
    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->mDurationUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->onDecode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 468
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 469
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->this$0:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;

    .line 470
    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;->onVideoStreamError(Ljava/lang/Exception;)V

    goto :goto_3

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    invoke-direct {p0, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->onStop(Z)V

    goto :goto_2

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
