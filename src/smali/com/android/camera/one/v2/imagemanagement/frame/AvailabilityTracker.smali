.class Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;
.super Ljava/lang/Object;
.source "AvailabilityTracker.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;,
        Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameStreamWrapper;,
        Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;,
        Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;"
    }
.end annotation


# instance fields
.field private final aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;

.field final synthetic val$finalTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1069
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->val$finalTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1071
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->onStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F85M6ORR3C5Q6IRJ78PP62RB5AHGN4PR5EGI32EP99HL62TJ15TQN8QBC5THMURJ3ELP74PBEEGNM2T3FDLKM6BQ1EHNMQQB389NMUR35C5N3M___(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->onStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F85M6ORR3C5Q6IRJ78PP62RB5AHGN4PR5EGI32EP99HL62TJ15TQN8QBC5THMURJ3ELP74PBEEGNM2T3FDLKM6BQ1EHNMQQB389NMUR35C5N3M___(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1075
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->onStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    :goto_1
    return-void

    .line 1075
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->val$finalTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    goto :goto_1
.end method

.method public getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 3

    .prologue
    .line 1089
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/v2/core/ResponseListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;

    .line 1090
    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->access$100(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;)V

    aput-object v2, v0, v1

    .line 1089
    invoke-static {v0}, Lcom/android/camera/one/v2/core/FrameServerModule;->forListeners([Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->access$000(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
