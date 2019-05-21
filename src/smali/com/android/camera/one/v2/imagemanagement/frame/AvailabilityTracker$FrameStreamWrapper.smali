.class final Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;
.super Ljava/lang/Object;
.source "AvailabilityTracker.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameStreamWrapper"
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

.field private final reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    .line 176
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->access$400(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->close()V

    .line 210
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->close()V

    .line 211
    return-void
.end method

.method public final getCapacity()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->getCapacity()I

    move-result v0

    return v0
.end method

.method public final synthetic getNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 167
    .line 2215
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 2216
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v1

    .line 2217
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2218
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIJM___(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;Lcom/android/camera/audio/SingleUseSoundPlayer;)Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    return-object v0
.end method

.method public final increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->reserveCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 193
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final synthetic tryGetNext()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 167
    .line 1223
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->tryGetNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 1224
    if-nez v0, :cond_0

    .line 1225
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v1

    .line 1228
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIJM___(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;Lcom/android/camera/audio/SingleUseSoundPlayer;)Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    goto :goto_0
.end method

.method public final tryIncreaseCapacity(I)Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->tryReserveCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->tryIncreaseCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;->reservedCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;->releaseCapacity(I)V

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
