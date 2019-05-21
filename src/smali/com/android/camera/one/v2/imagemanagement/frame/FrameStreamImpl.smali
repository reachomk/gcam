.class final Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;
.super Lcom/google/android/apps/camera/async/ForwardingBufferQueue;
.source "FrameStreamImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/ForwardingBufferQueue",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
        ">;",
        "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;"
    }
.end annotation


# instance fields
.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final target:Lcom/android/camera/one/v2/core/FrameTarget;

.field private final ticketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/core/FrameTarget;Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/BufferQueue;Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameTarget;",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            "Lcom/google/android/apps/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p3}, Lcom/google/android/apps/camera/async/ForwardingBufferQueue;-><init>(Lcom/google/android/apps/camera/async/BufferQueue;)V

    .line 40
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->target:Lcom/android/camera/one/v2/core/FrameTarget;

    .line 41
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 42
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->ticketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    .line 43
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/android/apps/camera/async/ForwardingBufferQueue;->close()V

    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 69
    return-void
.end method

.method public final getCapacity()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->ticketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->getCapacity()I

    move-result v0

    return v0
.end method

.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->target:Lcom/android/camera/one/v2/core/FrameTarget;

    return-object v0
.end method

.method public final increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->ticketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->reserveCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final tryIncreaseCapacity(I)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;->ticketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->tryReserveCapacity(I)Z

    move-result v0

    return v0
.end method
