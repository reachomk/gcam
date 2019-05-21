.class public interface abstract Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;
.super Ljava/lang/Object;
.source "FrameManager.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/CaptureStream;
.implements Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;
.implements Lcom/google/android/apps/camera/async/BufferQueueController;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/core/CaptureStream;",
        "Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;",
        "Lcom/google/android/apps/camera/async/BufferQueueController;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# virtual methods
.method public abstract dumpFrames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract forkFrames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation
.end method
