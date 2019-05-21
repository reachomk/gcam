.class final Lcom/bumptech/glide/request/SingleRequest$1;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/SingleRequest;
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
        "Lcom/bumptech/glide/request/SingleRequest",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/SingleRequest;-><init>(B)V

    .line 38
    return-object v0
.end method
