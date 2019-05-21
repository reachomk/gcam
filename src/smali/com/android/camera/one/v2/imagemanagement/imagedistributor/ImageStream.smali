.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageStream;
.super Ljava/lang/Object;
.source "ImageStream.java"

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
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getNext()Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation
.end method
