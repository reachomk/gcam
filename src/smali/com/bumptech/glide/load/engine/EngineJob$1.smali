.class Lcom/bumptech/glide/load/engine/EngineJob$1;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Factory;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1400
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->access$100(Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;)Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$1;->this$0:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->access$200(Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2397
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob$1;->create()Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method
