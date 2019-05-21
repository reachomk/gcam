.class final Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame$1;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "TicketFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIJM___(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;Lcom/android/camera/audio/SingleUseSoundPlayer;)Lcom/android/camera/one/v2/imagemanagement/frame/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic val$openImages:Ljava/util/concurrent/atomic/AtomicInteger;

.field private synthetic val$ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 2

    .prologue
    .line 38
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame$1;->val$openImages:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame$1;->val$ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame$1;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame$1;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->close()V

    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame$1;->val$openImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame$1;->val$ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    goto :goto_0
.end method
