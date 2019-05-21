.class public final Lcom/android/camera/one/v2/imagemanagement/util/TicketImageProxy;
.super Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
.source "TicketImageProxy.java"


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V

    .line 18
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/util/TicketImageProxy;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/util/TicketImageProxy;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/util/TicketImageProxy;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-super {p0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 31
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/util/TicketImageProxy;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    goto :goto_0
.end method
