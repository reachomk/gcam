.class final Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;
.super Ljava/lang/Object;
.source "AvailabilityTracker.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameAllocatorWrapper"
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final jointCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

.field private final sources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->sources:Ljava/util/Set;

    .line 126
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->sources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;

    .line 129
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F85R62QBCC5H6IR39EHSL8SJ1CDLMASH485R62QBCC5H6IR39EHSL8SJ1CDLMIRJ795MM2PR5ADNNASJ3CKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TQ6IORBCLQ70RRFDGNL8QB3DDIN8K3FDTM3M___(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->jointCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;B)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->jointCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    return-object v0
.end method


# virtual methods
.method public final createResidualStore(IILcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 145
    invoke-interface {v1, p1, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createResidualStore(IILcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;B)V

    .line 144
    return-object v0
.end method

.method public final createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->sources:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V

    return-object v0
.end method

.method public final getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->jointCapacity:Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxFrameCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->getMaxFrameCount()I

    move-result v0

    return v0
.end method
