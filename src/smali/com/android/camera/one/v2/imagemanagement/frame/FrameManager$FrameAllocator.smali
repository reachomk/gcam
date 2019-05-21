.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
.super Ljava/lang/Object;
.source "FrameManager.java"


# virtual methods
.method public abstract createResidualStore(IILcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;
.end method

.method public abstract createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
.end method

.method public abstract getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxFrameCount()I
.end method
