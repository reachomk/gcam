.class final Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;
.super Ljava/lang/Object;
.source "AllocatingFrameTarget.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private final circulationPolicy:Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final inFlightImageTrackers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final responseListener:Lcom/android/camera/one/v2/core/ResponseListener;

.field private final surfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final ticketProvider:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;Ljava/util/Collection;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->circulationPolicy:Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;

    .line 40
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 41
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->surfaces:Ljava/util/Set;

    .line 43
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->responseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 44
    iput-object p4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->inFlightImageTrackers:Ljava/util/Collection;

    .line 45
    iput-object p5, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->ticketProvider:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v1, v2

    .line 41
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->surfaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;)Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->responseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->inFlightImageTrackers:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    return-void
.end method

.method public final prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/android/camera/one/v2/core/FrameTargets;->nullTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    return-object v0
.end method

.method public final prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->circulationPolicy:Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/CirculationPolicy;->circulateFramesToTarget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/android/camera/one/v2/core/FrameTargets;->nullTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->ticketProvider:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v0

    move-object v1, v0

    .line 65
    :goto_1
    if-nez v1, :cond_1

    .line 66
    invoke-static {}, Lcom/android/camera/one/v2/core/FrameTargets;->nullTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method
