.class final Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "AllocatingFrameTarget.java"


# instance fields
.field private synthetic this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UPJIC5MMABQ1DHM6UOR1EHKMSPQ6E9GMQPAKC5P6EPBK4GOJM___:Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UPJIC5MMABQ1DHM6UOR1EHKMSPQ6E9GMQPAKC5P6EPBK4GOJM___:Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UPJIC5MMABQ1DHM6UOR1EHKMSPQ6E9GMQPAKC5P6EPBK4GOJM___:Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F85M6ORR3C5Q6IRJ78PP62RB5AHGN4PR5EGI32EP99HL62TJ15TQN8QBC5THMURJ3ELP74PBEEGNM2T3FDLKM6BQ1EHNMQQB389NMUR35C5N3M___(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UPJIC5MMABQ1DHM6UOR1EHKMSPQ6E9GMQPAKC5P6EPBK4GOJM___:Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F85M6ORR3C5Q6IRJ78PP62RB5AHGN4PR5EGI32EP99HL62TJ15TQN8QBC5THMURJ3ELP74PBEEGNM2T3FDLKM6BQ1EHNMQQB389NMUR35C5N3M___(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 104
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UPJIC5MMABQ1DHM6UOR1EHKMSPQ6E9GMQPAKC5P6EPBK4GOJM___:Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->val$finalTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;-><init>(Lcom/android/camera/audio/SingleUseSoundPlayer;)V

    const/4 v1, 0x0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget$1$1;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UPJIC5MMABQ1DHM6UOR1EHKMSPQ6E9GMQPAKC5P6EPBK4GOJM___:Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;

    iget-object v0, v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;->access$400(Lcom/android/camera/one/v2/imagemanagement/frame/AllocatingFrameTarget;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;

    .line 107
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;->create$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBDC5N62PR5DLIMST1FEHKM6QR5EHO6URRC5TA6IORBCLQ3M___()Lcom/android/camera/audio/SingleUseSoundPlayer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/one/v2/imagemanagement/frame/InFlightImageTracker;->onStarted$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIILG_(Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 104
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    throw v0

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v1, v2

    .line 100
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;->close()V

    return-void

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method
