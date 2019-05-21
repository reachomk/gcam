.class final Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/Lifecycle;


# instance fields
.field private isDestroyed:Z

.field private isStarted:Z

.field private final lifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    .line 13
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->onDestroy()V

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->onStart()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->onStop()V

    goto :goto_0
.end method

.method final onDestroy()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isDestroyed:Z

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/LifecycleListener;

    .line 64
    invoke-interface {v0}, Lcom/bumptech/glide/manager/LifecycleListener;->onDestroy()V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method final onStart()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/LifecycleListener;

    .line 50
    invoke-interface {v0}, Lcom/bumptech/glide/manager/LifecycleListener;->onStart()V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method final onStop()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->isStarted:Z

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/LifecycleListener;

    .line 57
    invoke-interface {v0}, Lcom/bumptech/glide/manager/LifecycleListener;->onStop()V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->lifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
