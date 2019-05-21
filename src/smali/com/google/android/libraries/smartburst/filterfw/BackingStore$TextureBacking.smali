.class Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;
.super Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
.source "BackingStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/BackingStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextureBacking"
.end annotation


# instance fields
.field private mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

.field private mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;-><init>()V

    .line 583
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 584
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    return-void
.end method

.method private getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 687
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 688
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->getTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->forTexture(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;II)Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    return-object v0
.end method

.method private getTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;
    .locals 4

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->isAllocated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->allocate(II)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    return-object v0
.end method

.method private syncToAllocationBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 627
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    .line 628
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 630
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->allocateWithPixels(Ljava/nio/ByteBuffer;II)V

    .line 631
    return-void
.end method


# virtual methods
.method public allocate(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->assertImageCompatible(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V

    .line 589
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->newTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 590
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mRenderTarget:Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->release()V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->isAllocated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->release()V

    .line 670
    :cond_1
    return-void
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/2addr v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x2

    return v0
.end method

.method public lock(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 635
    packed-switch p1, :pswitch_data_0

    .line 643
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal access to texture!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->getTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v0

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readAccess()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x2

    return v0
.end method

.method public requiresGpu()Z
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x1

    return v0
.end method

.method public shouldCache()Z
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x1

    return v0
.end method

.method public syncTo(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 604
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->readAccess()I

    move-result v0

    .line 605
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p1, v5}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 607
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    aget v3, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->allocateWithPixels(Ljava/nio/ByteBuffer;II)V

    .line 621
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->unlock()V

    .line 622
    iput-boolean v4, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mIsDirty:Z

    .line 623
    return-void

    .line 608
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 609
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 610
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mTexture:Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->allocateWithBitmapPixels(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 611
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 612
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 613
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    aget v1, v1, v4

    .line 614
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->mDimensions:[I

    aget v2, v2, v5

    .line 615
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->getRenderTarget()Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->renderTextureToTarget(Lcom/google/android/libraries/smartburst/filterfw/TextureSource;Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;II)V

    goto :goto_0

    .line 616
    :cond_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$AllocationBacking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;->syncToAllocationBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    goto :goto_0

    .line 619
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot sync bytebuffer backing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeAccess()I
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x4

    return v0
.end method
