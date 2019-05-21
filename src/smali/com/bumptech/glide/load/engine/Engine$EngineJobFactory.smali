.class final Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field private final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;-><init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/pool/FactoryPools;->simple(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    .line 463
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 464
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 465
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 466
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 467
    return-void
.end method

.method static synthetic access$300(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/EngineJobListener;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Landroid/support/v4/util/Pools$Pool;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    return-object v0
.end method


# virtual methods
.method final build(Lcom/bumptech/glide/load/Key;ZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 473
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/EngineJob;->init(Lcom/bumptech/glide/load/Key;ZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v0

    return-object v0
.end method
