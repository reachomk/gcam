.class final Lcom/google/android/libraries/smartburst/filterfw/BackingStore;
.super Ljava/lang/Object;
.source "BackingStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/BackingStore$AllocationBacking;,
        Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;,
        Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;,
        Lcom/google/android/libraries/smartburst/filterfw/BackingStore$BitmapBacking;,
        Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;,
        Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    }
.end annotation


# static fields
.field static final ACCESS_ALLOCATION:I = 0x20

.field static final ACCESS_BITMAP:I = 0x10

.field static final ACCESS_BYTES:I = 0x1

.field static final ACCESS_NONE:I = 0x0

.field static final ACCESS_OBJECT:I = 0x8

.field static final ACCESS_RENDERTARGET:I = 0x4

.field static final ACCESS_TEXTURE:I = 0x2

.field private static final BACKING_ALLOCATION:I = 0x5

.field private static final BACKING_BITMAP:I = 0x4

.field private static final BACKING_BYTEBUFFER:I = 0x1

.field private static final BACKING_OBJECT:I = 0x3

.field private static final BACKING_TEXTURE:I = 0x2


# instance fields
.field private mBackings:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

.field private mDimensions:[I

.field private final mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

.field private mLockedBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

.field private mReadLocks:I

.field private mRefCount:I

.field private mTimestamp:J

.field private final mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

.field private mWriteLocked:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[ILcom/google/android/libraries/smartburst/filterfw/FrameManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mTimestamp:J

    .line 60
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    .line 62
    iput-boolean v4, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mWriteLocked:Z

    .line 63
    iput v4, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mReadLocks:I

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    .line 68
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mCurrentBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 71
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mLockedBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 75
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 76
    if-eqz p2, :cond_0

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mDimensions:[I

    .line 77
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    .line 78
    return-void
.end method

.method private final attachNewBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->createBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->markDirty()V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    return-object v0
.end method

.method private final createBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->getElementSize()I

    move-result v1

    .line 228
    invoke-static {p2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->shouldFetchCached(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mDimensions:[I

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->fetchBacking(II[II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    .line 231
    :cond_0
    if-nez v0, :cond_4

    .line 232
    sparse-switch p2, :sswitch_data_0

    .line 255
    :goto_0
    if-nez v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not create backing for access type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :sswitch_0
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ByteBufferBacking;-><init>()V

    goto :goto_0

    .line 238
    :sswitch_1
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$TextureBacking;-><init>()V

    goto :goto_0

    .line 241
    :sswitch_2
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$ObjectBacking;-><init>()V

    goto :goto_0

    .line 244
    :sswitch_3
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$BitmapBacking;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$BitmapBacking;-><init>()V

    goto :goto_0

    .line 247
    :sswitch_4
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$AllocationBacking;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempted to create an AllocationBacking in context that does not support RenderScript!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$AllocationBacking;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getRenderScript()Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$AllocationBacking;-><init>(Landroid/renderscript/RenderScript;)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->requiresGpu()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    .line 260
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isOpenGLSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create backing that requires GPU in a runner that does not support OpenGL!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mDimensions:[I

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->setDimensions([I)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->setElementSize(I)V

    .line 267
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->getElementId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->setElementId(I)V

    .line 268
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->allocate(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V

    .line 269
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->onBackingCreated(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 271
    :cond_4
    return-object v0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private final fetchBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->getBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->attachNewBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    .line 191
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->syncBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 192
    return-object v0
.end method

.method private final getBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 206
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->writeAccess()I

    move-result v2

    .line 208
    :goto_1
    and-int/2addr v2, p2

    if-ne v2, p2, :cond_1

    .line 212
    :goto_2
    return-object v0

    .line 207
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->readAccess()I

    move-result v2

    goto :goto_1

    .line 203
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private final importBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 277
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->requiresGpu()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 278
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->createBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->syncTo(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 280
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 281
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mCurrentBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 282
    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->readAccess()I

    move-result v0

    goto :goto_0
.end method

.method private final lock(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;I)V
    .locals 4

    .prologue
    .line 298
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 300
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mReadLocks:I

    if-lez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to write-lock the read-locked frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mWriteLocked:Z

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to write-lock the write-locked frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 311
    if-eq v0, p1, :cond_2

    .line 312
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->markDirty()V

    .line 309
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 315
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mWriteLocked:Z

    .line 316
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mCurrentBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 323
    :goto_1
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mLockedBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 324
    return-void

    .line 318
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mWriteLocked:Z

    if-eqz v0, :cond_5

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to read-lock locked frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_5
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mReadLocks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mReadLocks:I

    goto :goto_1
.end method

.method private final releaseBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mFrameManager:Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->onBackingAvailable(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 295
    return-void
.end method

.method private final releaseBackings()V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->releaseBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mCurrentBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 291
    return-void
.end method

.method private static shouldFetchCached(I)Z
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final syncBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 1

    .prologue
    .line 196
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mCurrentBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mCurrentBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->syncTo(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public final getDimensions()[I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mDimensions:[I

    return-object v0
.end method

.method public final getElementCount()I
    .locals 5

    .prologue
    .line 154
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mDimensions:[I

    if-eqz v1, :cond_0

    .line 156
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mDimensions:[I

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, v3, v1

    .line 157
    mul-int/2addr v2, v0

    .line 156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 160
    :cond_0
    return v0
.end method

.method public final getFrameType()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mTimestamp:J

    return-wide v0
.end method

.method public final importStore(Lcom/google/android/libraries/smartburst/filterfw/BackingStore;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p1, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p1, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->importBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 168
    :cond_0
    iget-wide v0, p1, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mTimestamp:J

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mTimestamp:J

    .line 169
    return-void
.end method

.method public final lockBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->fetchBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not fetch frame data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->lock(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;I)V

    .line 94
    return-object v0
.end method

.method public final lockData(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->lockBacking(II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->lock(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final release()Lcom/google/android/libraries/smartburst/filterfw/BackingStore;
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    if-gtz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DOUBLE-RELEASE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    .line 126
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    if-nez v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->releaseBackings()V

    .line 128
    const/4 p0, 0x0

    .line 130
    :cond_1
    return-object p0
.end method

.method public final resize([I)V
    .locals 4

    .prologue
    .line 137
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 139
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->resize([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->releaseBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    goto :goto_0

    .line 145
    :cond_1
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mBackings:Ljava/util/Vector;

    .line 146
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mDimensions:[I

    .line 147
    return-void
.end method

.method public final retain()Lcom/google/android/libraries/smartburst/filterfw/BackingStore;
    .locals 5

    .prologue
    .line 111
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 112
    const-string v0, "BackingStore"

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "High ref-count of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    if-gtz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RETAINING RELEASED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mRefCount:I

    .line 118
    return-object p0
.end method

.method public final setTimestamp(J)V
    .locals 1

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mTimestamp:J

    .line 183
    return-void
.end method

.method public final unlock()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mWriteLocked:Z

    if-eqz v1, :cond_1

    .line 99
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mWriteLocked:Z

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mLockedBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->unlock()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mLockedBacking:Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 107
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 100
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mReadLocks:I

    if-lez v1, :cond_0

    .line 101
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mReadLocks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore;->mReadLocks:I

    goto :goto_0
.end method
