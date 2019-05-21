.class final Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;
.super Ljava/lang/Object;
.source "FrameSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingFrame"
.end annotation


# instance fields
.field private done:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final imageId:Lcom/android/camera/one/v2/core/ImageId;

.field private final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
            ">;"
        }
    .end annotation
.end field

.field private final numSources:I

.field private ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;


# direct methods
.method private constructor <init>(ILcom/android/camera/one/v2/core/ImageId;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->numSources:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 95
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->imageId:Lcom/android/camera/one/v2/core/ImageId;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->images:Ljava/util/Map;

    .line 97
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->done:Lcom/google/common/util/concurrent/SettableFuture;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/camera/one/v2/core/ImageId;B)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;-><init>(ILcom/android/camera/one/v2/core/ImageId;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;)Lcom/android/camera/one/v2/core/ImageId;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->imageId:Lcom/android/camera/one/v2/core/ImageId;

    return-object v0
.end method


# virtual methods
.method final abort()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->images:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 154
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->done:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method final addImage(ILcom/android/camera/one/v2/imagemanagement/MetadataImage;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->images:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->images:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final addTicket$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIILG_(Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 107
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 108
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final createFrame()Lcom/android/camera/one/v2/imagemanagement/frame/Frame;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 134
    :goto_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->numSources:I

    if-ge v1, v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->images:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 136
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->imageId:Lcom/android/camera/one/v2/core/ImageId;

    sget-object v5, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->IMAGE_ID:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    invoke-virtual {v0, v5}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getChecked(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/one/v2/core/ImageId;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->imageId:Lcom/android/camera/one/v2/core/ImageId;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/core/ImageId;->getTimestampNs()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getTimestamp()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 141
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->hasImageData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 138
    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    goto :goto_2

    .line 147
    :cond_2
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/frame/FrameBase;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->imageId:Lcom/android/camera/one/v2/core/ImageId;

    .line 148
    invoke-virtual {v0}, Lcom/android/camera/one/v2/core/ImageId;->getTimestampNs()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->images:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {v1, v6, v7, v0, v4}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameBase;-><init>(JLcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-static {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/TicketFrame;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F8PP62RB57D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BRKD5HMMPBKE1NMUR1FAHKM6QR5EGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TJ74OBDCKNKCSJ1DLIJM___(Lcom/android/camera/one/v2/imagemanagement/frame/Frame;Lcom/android/camera/audio/SingleUseSoundPlayer;)Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    move-result-object v0

    return-object v0
.end method

.method final getDoneFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->done:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method final isComplete()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 123
    move v0, v1

    move v2, v3

    .line 124
    :goto_0
    iget v4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->numSources:I

    if-ge v0, v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->images:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->ticket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    if-eqz v0, :cond_1

    :goto_1
    and-int v0, v2, v3

    .line 128
    return v0

    :cond_1
    move v3, v1

    .line 127
    goto :goto_1
.end method

.method final notifyTicketAdded()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$PendingFrame;->done:Lcom/google/common/util/concurrent/SettableFuture;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
