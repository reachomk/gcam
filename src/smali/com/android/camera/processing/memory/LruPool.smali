.class public final Lcom/android/camera/processing/memory/LruPool;
.super Ljava/lang/Object;
.source "LruPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/memory/LruPool$Configuration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final configuration:Lcom/android/camera/processing/memory/LruPool$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruPool$Configuration",
            "<TTKey;TTValue;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final lruKeyList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TTKey;>;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private size:I

.field private final valuePool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TTKey;",
            "Ljava/util/Queue",
            "<TTValue;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/camera/processing/memory/LruPool$Configuration;

    invoke-direct {v0}, Lcom/android/camera/processing/memory/LruPool$Configuration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/processing/memory/LruPool;-><init>(ILcom/android/camera/processing/memory/LruPool$Configuration;)V

    .line 103
    return-void
.end method

.method private constructor <init>(ILcom/android/camera/processing/memory/LruPool$Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera/processing/memory/LruPool$Configuration",
            "<TTKey;TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maxSize must be > 0."

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 108
    iput p1, p0, Lcom/android/camera/processing/memory/LruPool;->maxSize:I

    .line 109
    iput-object p2, p0, Lcom/android/camera/processing/memory/LruPool;->configuration:Lcom/android/camera/processing/memory/LruPool$Configuration;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->lock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->lruKeyList:Ljava/util/LinkedList;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->valuePool:Ljava/util/HashMap;

    .line 114
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final unsafeTrimToSize(I)V
    .locals 3

    .prologue
    .line 212
    :goto_0
    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->lruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->lruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->valuePool:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 219
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 221
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->valuePool:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    .line 3236
    const/4 v1, 0x1

    const-string v2, "Size was < 0."

    invoke-static {v1, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 225
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    goto :goto_0

    .line 229
    :cond_1
    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->lruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    if-eqz v0, :cond_3

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LruPool.sizeOf() is reporting inconsistent results!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    return-void
.end method


# virtual methods
.method public final acquire(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->lruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->valuePool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget v2, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    .line 1236
    const/4 v3, 0x1

    const-string v4, "Size was < 0."

    invoke-static {v3, v4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 139
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    .line 143
    :goto_0
    monitor-exit v1

    .line 145
    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/android/camera/processing/memory/LruPool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->lruKeyList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->valuePool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 166
    iget-object v2, p0, Lcom/android/camera/processing/memory/LruPool;->valuePool:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 171
    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    .line 2236
    const/4 v2, 0x1

    const-string v3, "Size was < 0."

    invoke-static {v2, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/processing/memory/LruPool;->size:I

    .line 173
    iget v0, p0, Lcom/android/camera/processing/memory/LruPool;->maxSize:I

    invoke-direct {p0, v0}, Lcom/android/camera/processing/memory/LruPool;->unsafeTrimToSize(I)V

    .line 174
    monitor-exit v1

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/memory/LruPool;->valuePool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
