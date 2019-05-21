.class Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;
.super Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
.source "BackingStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/BackingStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectBacking"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public allocate(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    .line 422
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    .line 474
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x3

    return v0
.end method

.method public lock(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public readAccess()I
    .locals 1

    .prologue
    .line 426
    const/16 v0, 0x8

    return v0
.end method

.method public requiresGpu()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    .line 484
    return-void
.end method

.method public shouldCache()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public syncTo(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    .line 448
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mIsDirty:Z

    .line 449
    return-void

    .line 438
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    .line 439
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->unlock()V

    goto :goto_0

    .line 442
    :pswitch_1
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;->mObject:Ljava/lang/Object;

    .line 443
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->unlock()V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeAccess()I
    .locals 1

    .prologue
    .line 431
    const/16 v0, 0x8

    return v0
.end method
