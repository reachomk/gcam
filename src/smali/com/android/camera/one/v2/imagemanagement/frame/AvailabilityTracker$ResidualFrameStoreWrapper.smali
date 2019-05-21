.class final Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;
.super Ljava/lang/Object;
.source "AvailabilityTracker.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResidualFrameStoreWrapper"
.end annotation


# instance fields
.field private final capacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    .line 255
    invoke-static {p2}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;->access$400(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->capacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;B)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->close()V

    .line 294
    return-void
.end method

.method public final dumpFrames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->dumpFrames()Ljava/util/List;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 263
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->capacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v3

    .line 265
    if-eqz v3, :cond_0

    .line 266
    invoke-static {v0, v3}, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIJM___(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;Lcom/android/camera/audio/SingleUseSoundPlayer;)Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    return-object v1
.end method

.method public final forkFrames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->forkFrames()Ljava/util/List;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 277
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->capacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->tryAcquire$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v3

    .line 279
    if-eqz v3, :cond_0

    .line 280
    invoke-static {v0, v3}, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame;->createWithReference$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIJM___(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;Lcom/android/camera/audio/SingleUseSoundPlayer;)Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_1
    return-object v1
.end method

.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->getTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    return-object v0
.end method
