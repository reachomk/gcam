.class final Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ModelLoaderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelLoaderCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;
    }
.end annotation


# instance fields
.field private final cachedModelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    return-void
.end method

.method public final get(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModel;*>;>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;

    .line 110
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;->access$100(Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final put(Ljava/lang/Class;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModel;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->cachedModelLoaders:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;

    invoke-direct {v1, p2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry;

    .line 102
    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Already cached loaders for model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method
