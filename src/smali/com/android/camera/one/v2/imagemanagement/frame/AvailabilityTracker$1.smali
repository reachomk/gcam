.class Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$1;
.super Ljava/lang/Object;
.source "AvailabilityTracker.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;

.field final synthetic val$frameStore:Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;

.field final synthetic val$minImages:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;I)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$1;->val$frameStore:Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;

    iput p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$1;->val$minImages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public circulateFramesToTarget()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1180
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;->access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F95MM2PR5A9IM2P35E94MQOB7CL9MUTBICDIJ4926E9GMQPA1DHM6UOR1EHNN4IBDE1M3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT2GDTNMOEO_(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1181
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$1;->val$frameStore:Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;->getFlushableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1182
    if-le v2, v0, :cond_0

    move v0, v1

    .line 1193
    :goto_0
    return v0

    .line 1187
    :cond_0
    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$1;->val$minImages:I

    if-le v0, v2, :cond_1

    move v0, v1

    .line 1191
    goto :goto_0

    .line 1193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
