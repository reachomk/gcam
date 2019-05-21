.class public interface abstract Lcom/android/camera/camcorder/CamcorderRecordingSession;
.super Ljava/lang/Object;
.source "CamcorderRecordingSession.java"


# virtual methods
.method public abstract getPauseDuration()J
.end method

.method public abstract getStartTimeUtcMs()J
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract stopRecording()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/common/FrameClock$RepeatTask;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract takeSnapshot$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6OBDCDNN4P35E8NK6OBDCDNN4P35E99MSOBGEDK6UT26ELQ7ASJ5ECTG____()Lcom/android/camera/one/v2/command/CommandExecutorModule;
.end method
