.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
.super Ljava/lang/Object;
.source "FrameManager.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/CaptureStream;
.implements Lcom/google/android/apps/camera/async/BufferQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/core/CaptureStream;",
        "Lcom/google/android/apps/camera/async/BufferQueue",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCapacity()I
.end method

.method public abstract increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract tryIncreaseCapacity(I)Z
.end method
