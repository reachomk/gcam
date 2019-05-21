.class Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;
.super Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
.source "BackingStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/BackingStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBufferBacking"
.end annotation


# instance fields
.field mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;-><init>()V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private syncToAllocationBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 749
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    .line 750
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->getElementId()I

    move-result v1

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_0

    .line 751
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 752
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 757
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->getElementId()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->getSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [F

    .line 755
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo([F)V

    .line 756
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 758
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 760
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->getElementId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Trying to sync to an allocation with an unsupported element id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public allocate(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V
    .locals 5

    .prologue
    .line 701
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->getElementSize()I

    move-result v1

    .line 702
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mDimensions:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 703
    mul-int/2addr v1, v4

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    .line 706
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    .line 787
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x1

    return v0
.end method

.method public lock(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public readAccess()I
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x1

    return v0
.end method

.method public requiresGpu()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCache()Z
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x1

    return v0
.end method

.method public syncTo(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 725
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->readAccess()I

    move-result v0

    .line 726
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 727
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 728
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mDimensions:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mDimensions:[I

    aget v3, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/GLToolbox;->readTarget(Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;Ljava/nio/ByteBuffer;II)V

    .line 742
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->unlock()V

    .line 743
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 744
    iput-boolean v4, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mIsDirty:Z

    .line 745
    return-void

    .line 729
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 730
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 731
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 732
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 733
    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 734
    invoke-virtual {p1, v5}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 735
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 736
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 737
    :cond_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$AllocationBacking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->syncToAllocationBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    goto :goto_0

    .line 740
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot sync bytebuffer backing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 772
    return-void
.end method

.method public writeAccess()I
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method
