.class abstract Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;
.super Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;
.source "FrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PriorityBackingCache"
.end annotation


# instance fields
.field private mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    .line 167
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache$1;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache$1;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mQueue:Ljava/util/PriorityQueue;

    .line 173
    return-void
.end method

.method private reserve(I)Z
    .locals 3

    .prologue
    .line 222
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mCacheMaxSize:I

    if-le p1, v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 225
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    .line 226
    :goto_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mCacheMaxSize:I

    if-le v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 228
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    .line 231
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->destroy()V

    goto :goto_1

    .line 233
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cacheBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->reserve(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->onCacheBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    .line 208
    return-void
.end method

.method public fetchBacking(II[II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 178
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->writeAccess()I

    move-result v1

    .line 181
    :goto_0
    and-int/2addr v1, p2

    if-ne v1, p2, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->getDimensions()[I

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->access$100([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->getElementSize()I

    move-result v1

    if-ne p4, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 185
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->onFetchBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V

    .line 191
    :goto_1
    return-object v0

    .line 180
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->readAccess()I

    move-result v1

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSizeLeft()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mCacheMaxSize:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;->mSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected abstract onCacheBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
.end method

.method protected abstract onFetchBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
.end method
