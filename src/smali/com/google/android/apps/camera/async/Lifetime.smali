.class public Lcom/google/android/apps/camera/async/Lifetime;
.super Ljava/lang/Object;
.source "Lifetime.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/AddOnlyLifetime;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final closeables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/camera/async/SafeCloseable;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final lock:Ljava/lang/Object;

.field private final parent:Lcom/google/android/apps/camera/async/Lifetime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->lock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->closeables:Ljava/util/Set;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->parent:Lcom/google/android/apps/camera/async/Lifetime;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->closed:Z

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->lock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->closeables:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Lifetime;->parent:Lcom/google/android/apps/camera/async/Lifetime;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->closed:Z

    .line 46
    return-void
.end method


# virtual methods
.method public final add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/apps/camera/async/SafeCloseable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/camera/async/Lifetime;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->closed:Z

    if-eqz v2, :cond_1

    .line 62
    const/4 v0, 0x1

    .line 66
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p1}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 70
    :cond_0
    return-object p1

    .line 64
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->closeables:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/google/android/apps/camera/async/Lifetime;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->closed:Z

    if-eqz v2, :cond_1

    .line 78
    monitor-exit v1

    .line 94
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->closed:Z

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->parent:Lcom/google/android/apps/camera/async/Lifetime;

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->parent:Lcom/google/android/apps/camera/async/Lifetime;

    .line 1106
    iget-object v3, v2, Lcom/google/android/apps/camera/async/Lifetime;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1107
    :try_start_1
    iget-object v2, v2, Lcom/google/android/apps/camera/async/Lifetime;->closeables:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1108
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->closeables:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v2, p0, Lcom/google/android/apps/camera/async/Lifetime;->closeables:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 89
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 92
    invoke-interface {v1}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    goto :goto_0

    .line 1108
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 89
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>(Lcom/google/android/apps/camera/async/Lifetime;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/android/apps/camera/async/Lifetime;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/camera/async/Lifetime;->closed:Z

    monitor-exit v1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
