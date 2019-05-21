.class final Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory",
        "<",
        "Lcom/bumptech/glide/load/engine/EngineJob",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 453
    .line 1456
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->access$300(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->access$400(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->access$500(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 1457
    invoke-static {v4}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->access$600(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Lcom/bumptech/glide/load/engine/EngineJobListener;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-static {v5}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->access$700(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Landroid/support/v4/util/Pools$Pool;)V

    .line 453
    return-object v0
.end method
