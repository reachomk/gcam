.class public final Lcom/android/camera/burst/SingleSourceBurstFacade;
.super Ljava/lang/Object;
.source "SingleSourceBurstFacade.java"

# interfaces
.implements Lcom/android/camera/burst/BurstFacade;


# instance fields
.field private final baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

.field private final source:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstFacade$Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/BurstFacade;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->source:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/SingleSourceBurstFacade;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->source:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public final getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final initialize(Landroid/graphics/SurfaceTexture;Ljava/util/List;Lcom/android/camera/one/v2/util/PictureConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/burst/BurstFacade;->initialize(Landroid/graphics/SurfaceTexture;Ljava/util/List;Lcom/android/camera/one/v2/util/PictureConfiguration;)V

    .line 130
    return-void
.end method

.method public final isIdle()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isIdle()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 135
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->source:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public final setBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR55B0____(Lcom/android/camera/hdrplus/HdrPlusModule;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/burst/BurstFacade;->setBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR55B0____(Lcom/android/camera/hdrplus/HdrPlusModule;)V

    .line 147
    return-void
.end method

.method public final startBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A92JDTQN4OR57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMS92JEHGM6QR1C9M6AGR1E1Q7ASJ5ADIN6SR9DTN46SJ5C5Q6USHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTKIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T2CD5R6AK3ICLR6IPBN8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/burst/BurstFacade$Source;Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade$Source;",
            "Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;",
            "Lcom/android/camera/session/CaptureSessionManager;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "I",
            "Lcom/android/camera/burst/BurstLivePreviewController;",
            "Lcom/android/camera/hdrplus/HdrPlusSessionModule;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->source:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->ABSENT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 71
    invoke-interface/range {v0 .. v8}, Lcom/android/camera/burst/BurstFacade;->startBurst$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A92JDTQN4OR57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMS92JEHGM6QR1C9M6AGR1E1Q7ASJ5ADIN6SR9DTN46SJ5C5Q6USHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAT39DGNMOOBPDTQN8BQFE9KMARJKC5Q6IRRE7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTKIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T2CD5R6AK3ICLR6IPBN8DNMST3IDTM6OPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55666RRD5TJMURR7DHIIUORFDLMMURHFELQ6IR1FCDNMSORLE9P6ARJK5T66ISRKCLN62OJCCL37AT3LE9IJM___(Lcom/android/camera/burst/BurstFacade$Source;Lcom/android/camera/session/CaptureSession$StackableCaptureSessionCreator;Lcom/android/camera/session/CaptureSessionManager;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/burst/BurstLivePreviewController;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/camera/burst/SingleSourceBurstFacade$1;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/SingleSourceBurstFacade$1;-><init>(Lcom/android/camera/burst/SingleSourceBurstFacade;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 97
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public final stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/BurstFacade$Source;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->source:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/burst/BurstFacade$Source;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/burst/BurstFacade$Source;->LOW_STORAGE_ALERT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {p1, v0}, Lcom/android/camera/burst/BurstFacade$Source;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/burst/BurstFacade$Source;->FORCE_STOP:Lcom/android/camera/burst/BurstFacade$Source;

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/camera/burst/BurstFacade$Source;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/SingleSourceBurstFacade;->baseBurstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0, p1}, Lcom/android/camera/burst/BurstFacade;->stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/android/camera/burst/SingleSourceBurstFacade$2;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/SingleSourceBurstFacade$2;-><init>(Lcom/android/camera/burst/SingleSourceBurstFacade;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 122
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method
