.class public abstract Lcom/android/camera/processing/memory/SimpleLruResourcePool;
.super Ljava/lang/Object;
.source "SimpleLruResourcePool.java"

# interfaces
.implements Lcom/android/camera/processing/memory/LruResourcePool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/processing/memory/LruResourcePool",
        "<TTKey;TTValue;>;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final lruPool:Lcom/android/camera/processing/memory/LruPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruPool",
            "<TTKey;TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->lock:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/android/camera/processing/memory/LruPool;

    invoke-direct {v0, p1}, Lcom/android/camera/processing/memory/LruPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->lruPool:Lcom/android/camera/processing/memory/LruPool;

    .line 25
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/processing/memory/SimpleLruResourcePool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->release(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final release(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->lruPool:Lcom/android/camera/processing/memory/LruPool;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->recycle(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/camera/processing/memory/LruPool;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)",
            "Lcom/android/camera/processing/memory/LruResourcePool$Resource",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v1, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->lruPool:Lcom/android/camera/processing/memory/LruPool;

    invoke-virtual {v0, p1}, Lcom/android/camera/processing/memory/LruPool;->acquire(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    :cond_0
    new-instance v1, Lcom/android/camera/processing/memory/LruResourcePool$Resource;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;-><init>(Lcom/android/camera/processing/memory/SimpleLruResourcePool;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation
.end method

.method protected recycle(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)TTValue;"
        }
    .end annotation

    .prologue
    .line 53
    return-object p2
.end method
