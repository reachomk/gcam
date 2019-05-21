.class public final Lcom/bumptech/glide/manager/TargetTracker;
.super Ljava/lang/Object;
.source "TargetTracker.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# instance fields
.field private final targets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

    .line 16
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 54
    return-void
.end method

.method public final getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

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

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    .line 44
    invoke-interface {v0}, Lcom/bumptech/glide/request/target/Target;->onDestroy()V

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

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

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    .line 30
    invoke-interface {v0}, Lcom/bumptech/glide/request/target/Target;->onStart()V

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

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

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    .line 37
    invoke-interface {v0}, Lcom/bumptech/glide/request/target/Target;->onStop()V

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final track(Lcom/bumptech/glide/request/target/Target;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public final untrack(Lcom/bumptech/glide/request/target/Target;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/manager/TargetTracker;->targets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method
