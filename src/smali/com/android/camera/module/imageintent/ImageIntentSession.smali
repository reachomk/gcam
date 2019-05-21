.class public final Lcom/android/camera/module/imageintent/ImageIntentSession;
.super Ljava/lang/Object;
.source "ImageIntentSession.java"

# interfaces
.implements Lcom/android/camera/session/StackableSession;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final captureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private final sessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final sessionStartMillis:J

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "CapIntSession"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/imageintent/ImageIntentSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollectorImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->captureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 68
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->title:Ljava/lang/String;

    .line 69
    iput-wide p2, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->sessionStartMillis:J

    .line 72
    iput-object p6, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 74
    return-void
.end method


# virtual methods
.method public final addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 0

    .prologue
    .line 192
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final captureStartCommitted()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public final createStackedSession()Lcom/android/camera/session/StackedCaptureSession;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized delete()V
    .locals 0

    .prologue
    .line 195
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final finalizeSession()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final finish()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public final finishWithFailure(Lcom/android/camera/ui/UiString;Z)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public final focus()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public final getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->captureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public final declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized getProgressMessage()Lcom/android/camera/ui/UiString;
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSessionType()Lcom/android/camera/session/CaptureSession$SessionType;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/camera/session/CaptureSession$SessionType;->NORMAL:Lcom/android/camera/session/CaptureSession$SessionType;

    return-object v0
.end method

.method public final getStartTimeMillis()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->sessionStartMillis:J

    return-wide v0
.end method

.method public final getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final saveAndFinish(Ljava/io/InputStream;Lcom/android/camera/session/MediaInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/camera/session/MediaInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getOrientation()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    sget-object v1, Lcom/android/camera/module/imageintent/ImageIntentSession;->TAG:Ljava/lang/String;

    const-string v2, "Orientation not set"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    invoke-static {p1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/session/SessionNotifier;->notifySessionPictureDataAvailable([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/android/camera/session/MediaInfo;->getOrientation()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    sget-object v1, Lcom/android/camera/module/imageintent/ImageIntentSession;->TAG:Ljava/lang/String;

    const-string v2, "Could not read image bytes."

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final selectCaptureCommand(I)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public final setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final declared-synchronized setProgress(I)V
    .locals 0

    .prologue
    .line 131
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final setProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public final declared-synchronized setProgressMessage(Lcom/android/camera/ui/UiString;)V
    .locals 0

    .prologue
    .line 139
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized startEmpty(Lcom/android/camera/util/Size;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 0

    .prologue
    .line 166
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final startSession(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startSession(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;Lcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startSession([BLcom/android/camera/ui/UiString;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final updateCaptureIndicatorThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;I)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final updatePreview()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    invoke-virtual {v0, p1}, Lcom/android/camera/session/SessionNotifier;->notifySessionThumbnailAvailable(Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method public final updateThumbnail(Lcom/bumptech/glide/load/resource/drawable/DrawableResource;)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->get()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->bitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/camera/module/imageintent/ImageIntentSession;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    invoke-virtual {v1, v0}, Lcom/android/camera/session/SessionNotifier;->notifySessionThumbnailAvailable(Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method
