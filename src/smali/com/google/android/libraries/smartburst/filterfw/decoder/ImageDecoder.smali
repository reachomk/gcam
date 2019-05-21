.class public Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/decoder/VideoStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$DefaultTimestampProvider;,
        Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$TimestampProvider;
    }
.end annotation


# static fields
.field private static final CONSUMER_REGISTRATION_DELAY_MS:J = 0x7d0L

.field private static final INTER_FRAME_TIME_GAP_MS:J = 0xfaL


# instance fields
.field private final mConsumerRegistrationDelay:J

.field private final mConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoderThread:Landroid/os/HandlerThread;

.field private final mHandler:Landroid/os/Handler;

.field private final mImageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mImages:[Landroid/graphics/Bitmap;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRunning:Z

.field private final mTimestampProvider:Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$TimestampProvider;

.field private final mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 82
    const-wide/16 v0, 0x7d0

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$DefaultTimestampProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$DefaultTimestampProvider;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$1;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;-><init>([Landroid/graphics/Bitmap;JLcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$TimestampProvider;)V

    .line 83
    return-void
.end method

.method public constructor <init>([Landroid/graphics/Bitmap;JLcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$TimestampProvider;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImages:[Landroid/graphics/Bitmap;

    .line 96
    iput-wide p2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumerRegistrationDelay:J

    .line 97
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mTimestampProvider:Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$TimestampProvider;

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageDecoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mDecoderThread:Landroid/os/HandlerThread;

    .line 99
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->signalNewFrame()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;)J
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->getTimestampForCurrentFrame()J

    move-result-wide v0

    return-wide v0
.end method

.method public static createFromUri(Landroid/net/Uri;)Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 73
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image uri is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;-><init>([Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private decrementConsumersAndSignalNextFrame()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImages:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 189
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->signalNewFrame()V

    .line 195
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->signalStop()V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTimestampForCurrentFrame()J
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mTimestampProvider:Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$TimestampProvider;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$TimestampProvider;->getTimestampForFrame(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private signalNewFrame()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$2;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    return-void
.end method

.method private signalStop()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$3;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    return-void
.end method


# virtual methods
.method public addVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 161
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->stop()V

    .line 181
    :cond_0
    return-void
.end method

.method public getDurationNs()J
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImages:[Landroid/graphics/Bitmap;

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public grabVideoFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameValue;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImages:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 139
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImages:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mImageIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    aget-object v2, v2, v3

    .line 140
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-interface {p3, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;->scale(II)[I

    move-result-object v3

    .line 141
    aget v4, v3, v1

    aget v5, v3, v0

    invoke-static {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    invoke-virtual {p1, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->resize([I)V

    .line 143
    invoke-virtual {p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->getTimestampForCurrentFrame()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 145
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->decrementConsumersAndSignalNextFrame()V

    .line 148
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public removeVideoFrameConsumer(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mWaitingConsumers:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 173
    :cond_0
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
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->decrementConsumersAndSignalNextFrame()V

    .line 133
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;)V

    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mConsumerRegistrationDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/decoder/ImageDecoder;->mDecoderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 123
    return-void
.end method
