.class public Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;
.super Ljava/lang/Object;
.source "MediaDecoder.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/AudioFrameProvider;
.implements Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoStreamProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;,
        Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final EVENT_EOF:I = 0x2

.field private static final EVENT_START:I = 0x0

.field private static final EVENT_STOP:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "MediaDecoder"

.field public static final ROTATE_180:I = 0xb4

.field public static final ROTATE_90_LEFT:I = 0x10e

.field public static final ROTATE_90_RIGHT:I = 0x5a

.field public static final ROTATE_NONE:I


# instance fields
.field private final mAudioConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

.field private final mAudioConsumers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/AudioFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

.field private final mContext:Landroid/content/Context;

.field private final mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

.field private final mDecoderThread:Ljava/lang/Thread;

.field private final mEndMicros:J

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOpenGLEnabled:Z

.field private final mStartMicros:J

.field private final mTrackListener:Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;

.field private final mUri:Landroid/net/Uri;

.field private final mVideoConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

.field private final mVideoConsumers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mVideoTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 7

    .prologue
    .line 107
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;JZ)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JJ)V
    .locals 9

    .prologue
    .line 117
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;JJZ)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JJZ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumers:Ljava/util/HashSet;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumers:Ljava/util/HashSet;

    .line 84
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    invoke-direct {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    .line 87
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    invoke-direct {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mTrackListener:Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mContext:Landroid/content/Context;

    .line 144
    if-nez p2, :cond_1

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mUri:Landroid/net/Uri;

    .line 149
    cmp-long v0, p3, v4

    if-gez v0, :cond_2

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startMicros cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    cmp-long v0, p5, v4

    if-lez v0, :cond_3

    cmp-long v0, p3, p5

    if-lez v0, :cond_3

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startMicros cannot be larger than endMicros"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_3
    iput-wide p3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mStartMicros:J

    .line 158
    iput-wide p5, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mEndMicros:J

    .line 159
    iput-boolean p7, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mOpenGLEnabled:Z

    .line 160
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    invoke-direct {v0, p0, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    .line 161
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderThread:Ljava/lang/Thread;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JZ)V
    .locals 9

    .prologue
    .line 126
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;JJZ)V

    .line 127
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mOpenGLEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mStartMicros:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mTrackListener:Lcom/google/android/libraries/smartburst/filterfw/decoder/TrackDecoder$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mEndMicros:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumers:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumers:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;)Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->stop(Z)V

    return-void
.end method

.method private stop(Z)V
    .locals 2

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->postEvent(I)V

    .line 187
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->postEvent(I)V

    goto :goto_0
.end method


# virtual methods
.method public addAudioFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/AudioFrameConsumer;)V
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumers:Ljava/util/HashSet;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumers:Ljava/util/HashSet;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAudioSamples()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->clearBuffer()V

    .line 334
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->stop()V

    .line 247
    :cond_0
    return-void
.end method

.method public getDurationNs()J
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->getDurationUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public grabAudioSamples(Lcom/google/android/libraries/smartburst/filterfw/FrameValue;)Z
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumers:Ljava/util/HashSet;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->grabSample(Lcom/google/android/libraries/smartburst/filterfw/FrameValue;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;->decrementAndCheckZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/AudioTrackDecoder;->advance()V

    .line 291
    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    .line 208
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->getDefaultRotation()I

    move-result v0

    .line 207
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)Z

    move-result v0

    return v0
.end method

.method public grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumers:Ljava/util/HashSet;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;->decrementAndCheckZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->advance()V

    .line 271
    :cond_2
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpenGLEnabled()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mOpenGLEnabled:Z

    return v0
.end method

.method public removeAudioFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/AudioFrameConsumer;)V
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumers:Ljava/util/HashSet;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mAudioConsumers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 324
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumers:Ljava/util/HashSet;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skipVideoFrame()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoConsumerWaitCount:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$AtomicCounter;->decrementAndCheckZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mVideoTrackDecoder:Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoTrackDecoder;->advance()V

    .line 198
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderLoop:Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder$DecoderRunnable;->postEvent(I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->mDecoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/MediaDecoder;->stop(Z)V

    .line 182
    return-void
.end method
