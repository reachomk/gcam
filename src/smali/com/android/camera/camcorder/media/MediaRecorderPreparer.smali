.class public interface abstract Lcom/android/camera/camcorder/media/MediaRecorderPreparer;
.super Ljava/lang/Object;
.source "MediaRecorderPreparer.java"


# virtual methods
.method public abstract prepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/camcorder/media/PreparedMediaRecorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract usePersistentSurface()Z
.end method
