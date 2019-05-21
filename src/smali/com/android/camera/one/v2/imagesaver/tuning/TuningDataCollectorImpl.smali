.class final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;
.super Ljava/lang/Object;
.source "TuningDataCollectorImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final rawWriter:Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;

.field private final timestampToCapture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final tuningDataConsumer:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;

.field private final yuvWriter:Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->rawWriter:Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;

    .line 117
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->yuvWriter:Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;

    .line 118
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->tuningDataConsumer:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->timestampToCapture:Ljava/util/Map;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->markCaptureDone(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->timestampToCapture:Ljava/util/Map;

    return-object v0
.end method

.method private final getEntryForTimestamp(J)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;
    .locals 5

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->timestampToCapture:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;-><init>(Ljava/lang/String;B)V

    monitor-exit v1

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->timestampToCapture:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;

    monitor-exit v1

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final markCaptureDone(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-static {p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 161
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->timestampToCapture:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->tuningDataConsumer:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataConsumer;->processTuningData(Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V

    .line 165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final addRawImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 6

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    .line 210
    invoke-direct {p0, v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->getEntryForTimestamp(J)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;

    move-result-object v4

    .line 211
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$800(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v5, "Image already added"

    invoke-static {v0, v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 213
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->rawWriter:Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;

    invoke-interface {v5, p1, v0}, Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;->writeAndCloseImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :try_start_2
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$800(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v1

    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final addSelectedBaseFrame(J)V
    .locals 5

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->getEntryForTimestamp(J)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$500(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Base frame already selected!"

    .line 172
    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$502(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;

    .line 175
    monitor-exit v1

    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final addTotalCaptureResult(JLcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->getEntryForTimestamp(J)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$900(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final addYuvImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 6

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    .line 192
    invoke-direct {p0, v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->getEntryForTimestamp(J)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;

    move-result-object v4

    .line 193
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$700(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v5, "Image already added"

    invoke-static {v0, v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 195
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;->yuvWriter:Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;

    invoke-interface {v5, p1, v0}, Lcom/android/camera/one/v2/imagesaver/tuning/ImageWriter;->writeAndCloseImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->access$700(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v1

    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final markCaptureStart(Ljava/lang/String;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 126
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;-><init>(Ljava/lang/String;B)V

    .line 127
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector$CaptureHandle;-><init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)V

    return-object v1

    :cond_0
    move v0, v1

    .line 125
    goto :goto_0
.end method
