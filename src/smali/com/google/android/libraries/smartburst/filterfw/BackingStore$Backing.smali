.class abstract Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
.super Ljava/lang/Object;
.source "BackingStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/BackingStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Backing"
.end annotation


# instance fields
.field cachePriority:I

.field protected mDimensions:[I

.field private mElementID:I

.field private mElementSize:I

.field protected mIsDirty:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mDimensions:[I

    .line 336
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mIsDirty:Z

    .line 338
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->cachePriority:I

    return-void
.end method


# virtual methods
.method public abstract allocate(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V
.end method

.method protected assertImageCompatible(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->getElementId()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot allocate texture with non-RGBA data type!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mDimensions:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mDimensions:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 409
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot allocate non 2-dimensional texture!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_2
    return-void
.end method

.method public abstract destroy()V
.end method

.method public getDimensions()[I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mDimensions:[I

    return-object v0
.end method

.method public getElementId()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mElementID:I

    return v0
.end method

.method public getElementSize()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mElementSize:I

    return v0
.end method

.method public abstract getSize()I
.end method

.method public abstract getType()I
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mIsDirty:Z

    return v0
.end method

.method public abstract lock(I)Ljava/lang/Object;
.end method

.method public markDirty()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mIsDirty:Z

    .line 399
    return-void
.end method

.method public abstract readAccess()I
.end method

.method public abstract requiresGpu()Z
.end method

.method public resize([I)Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Internal error: Setting data on frame backing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which does not support setting data directly!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDimensions([I)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mDimensions:[I

    .line 371
    return-void
.end method

.method public setElementId(I)V
    .locals 0

    .prologue
    .line 378
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mElementID:I

    .line 379
    return-void
.end method

.method public setElementSize(I)V
    .locals 0

    .prologue
    .line 374
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->mElementSize:I

    .line 375
    return-void
.end method

.method public abstract shouldCache()Z
.end method

.method public abstract syncTo(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public abstract writeAccess()I
.end method
