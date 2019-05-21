.class public final Lcom/google/android/apps/camera/async/RefCountBase;
.super Ljava/lang/Object;
.source "RefCountBase.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final object:Lcom/google/android/apps/camera/async/SafeCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private objectClosed:Z

.field private refCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/SafeCloseable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/camera/async/RefCountBase;-><init>(Lcom/google/android/apps/camera/async/SafeCloseable;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/async/SafeCloseable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "initialReferenceCount is not greater than 0."

    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->lock:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/camera/async/RefCountBase;->object:Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 25
    iput p2, p0, Lcom/google/android/apps/camera/async/RefCountBase;->refCount:I

    .line 26
    iput-boolean v1, p0, Lcom/google/android/apps/camera/async/RefCountBase;->objectClosed:Z

    .line 27
    return-void

    :cond_0
    move v0, v1

    .line 21
    goto :goto_0
.end method


# virtual methods
.method public final addRef()V
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/google/android/apps/camera/async/RefCountBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->objectClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "addRef on an object which has been closed."

    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 32
    iget v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->refCount:I

    .line 33
    monitor-exit v1

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/apps/camera/async/RefCountBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->objectClosed:Z

    if-eqz v0, :cond_0

    .line 45
    monitor-exit v1

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->refCount:I

    .line 48
    iget v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->refCount:I

    if-lez v0, :cond_1

    .line 49
    monitor-exit v1

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 51
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->objectClosed:Z

    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->object:Lcom/google/android/apps/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_0
.end method

.method public final get()Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->object:Lcom/google/android/apps/camera/async/SafeCloseable;

    return-object v0
.end method

.method public final getRefCount()I
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/apps/camera/async/RefCountBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget v0, p0, Lcom/google/android/apps/camera/async/RefCountBase;->refCount:I

    monitor-exit v1

    return v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
