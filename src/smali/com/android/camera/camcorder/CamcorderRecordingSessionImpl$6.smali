.class final Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;
.super Ljava/lang/Object;
.source "CamcorderRecordingSessionImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->stop()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/google/common/base/Optional",
        "<",
        "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$000(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;

    move-result-object v0

    sget-object v1, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;->STOPPING_RECORD:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;

    invoke-virtual {v0, v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 323
    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$100(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CamcorderRecordingSessionImpl state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v11

    .line 388
    :goto_0
    return-object v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;->CLOSED:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;

    invoke-static {v0, v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$102(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;)Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$State;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 332
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$400(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 334
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 336
    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->getVideoFileFormat()Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->getMimeType()Lcom/android/camera/storage/MimeType;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$600(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/storage/FileNamer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/storage/FileNamer;->generateVideoName(J)Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v2}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$600(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/storage/FileNamer;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/storage/FileNamer;->generateFilePath(Ljava/lang/String;Lcom/android/camera/storage/MimeType;)Ljava/io/File;

    move-result-object v2

    .line 339
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->getStartTimeUtcMs()J

    move-result-wide v0

    sub-long v0, v6, v0

    iget-object v3, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v3}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$700(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)J

    move-result-wide v4

    sub-long v8, v0, v4

    .line 341
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 343
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Rename recording file to output file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 352
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$900(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    :cond_2
    new-instance v1, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 356
    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$500(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 357
    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$1000(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/google/common/base/Optional;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 358
    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$1100(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 361
    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$1200(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;->getRecordSurfaceDropFrameCount()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;-><init>(Ljava/io/File;Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;Lcom/google/common/base/Optional;ZJJI)V

    .line 362
    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v11

    goto/16 :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 365
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    .line 367
    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to rename recording file to output file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v11

    goto/16 :goto_0

    .line 384
    :cond_4
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Delete recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 386
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->this$0:Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;

    invoke-static {v1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;->access$800(Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to delete recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_5
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/android/camera/camcorder/CamcorderRecordingSessionImpl$6;->apply(Ljava/lang/Boolean;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
