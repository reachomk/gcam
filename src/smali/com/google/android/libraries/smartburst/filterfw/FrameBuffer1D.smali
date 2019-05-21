.class public Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;
.super Lcom/google/android/libraries/smartburst/filterfw/Frame;
.source "FrameBuffer1D.java"


# instance fields
.field private mLength:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/BackingStore;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;-><init>(Lcom/google/android/libraries/smartburst/filterfw/BackingStore;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->mLength:I

    .line 80
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->getDimensions()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->updateLength([I)V

    .line 81
    return-void
.end method

.method static assertCanCreate(Lcom/google/android/libraries/smartburst/filterfw/BackingStore;)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->getFrameType()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->getElementSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot access Frame of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " as a FrameBuffer instance!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->getDimensions()[I

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot access Frame with no dimensions as a FrameBuffer instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    return-void
.end method

.method static create(Lcom/google/android/libraries/smartburst/filterfw/BackingStore;)Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->assertCanCreate(Lcom/google/android/libraries/smartburst/filterfw/BackingStore;)V

    .line 75
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;-><init>(Lcom/google/android/libraries/smartburst/filterfw/BackingStore;)V

    return-object v0
.end method


# virtual methods
.method public getDimensions()[I
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getDimensions()[I

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->mLength:I

    return v0
.end method

.method public lockAllocation(I)Landroid/renderscript/Allocation;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->assertAccessible(I)V

    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->mBackingStore:Lcom/google/android/libraries/smartburst/filterfw/BackingStore;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->lockData(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public lockBytes(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->assertAccessible(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->mBackingStore:Lcom/google/android/libraries/smartburst/filterfw/BackingStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->lockData(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public resize([I)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->resize([I)V

    .line 71
    return-void
.end method

.method updateLength([I)V
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->mLength:I

    .line 98
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 99
    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->mLength:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameBuffer1D;->mLength:I

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
