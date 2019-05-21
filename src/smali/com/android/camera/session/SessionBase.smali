.class public interface abstract Lcom/android/camera/session/SessionBase;
.super Ljava/lang/Object;
.source "SessionBase.java"


# virtual methods
.method public abstract finishWithFailure(Lcom/android/camera/ui/UiString;Z)V
.end method

.method public abstract getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
.end method

.method public abstract saveAndFinish(Ljava/io/InputStream;Lcom/android/camera/session/MediaInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method

.method public abstract setProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
.end method
