.class final Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Landroid/support/v4/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/FactoryPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FactoryPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/util/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final factory:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final resetter:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/pool/FactoryPools$Factory;Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Factory",
            "<TT;>;",
            "Lcom/bumptech/glide/util/pool/FactoryPools$Resetter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->pool:Landroid/support/v4/util/Pools$Pool;

    .line 138
    iput-object p2, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->factory:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

    .line 139
    iput-object p3, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->resetter:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    .line 140
    return-void
.end method


# virtual methods
.method public final acquire()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    .line 145
    if-nez v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->factory:Lcom/bumptech/glide/util/pool/FactoryPools$Factory;

    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Factory;->create()Ljava/lang/Object;

    move-result-object v1

    .line 147
    const-string v0, "FactoryPools"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "FactoryPools"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Created new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    instance-of v0, v1, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 152
    check-cast v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->setRecycled(Z)V

    .line 154
    :cond_1
    return-object v1
.end method

.method public final release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 159
    instance-of v0, p1, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 160
    check-cast v0, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;

    invoke-interface {v0}, Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;->getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->setRecycled(Z)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->resetter:Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/util/pool/FactoryPools$Resetter;->reset(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/FactoryPools$FactoryPool;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
