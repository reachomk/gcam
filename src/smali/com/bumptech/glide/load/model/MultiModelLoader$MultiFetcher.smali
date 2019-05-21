.class final Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;
.super Ljava/lang/Object;
.source "MultiModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/MultiModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<TData;>;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-TData;>;"
        }
    .end annotation
.end field

.field private currentIndex:I

.field private final exceptionListPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TData;>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TData;>;>;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    .line 83
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;

    .line 84
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    .line 86
    return-void
.end method

.method private final startNextOrFail()V
    .locals 5

    .prologue
    .line 138
    iget v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 139
    iget v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->priority:Lcom/bumptech/glide/Priority;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v2, "Fetch failed"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    .line 108
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public final cleanup()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    .line 101
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback",
            "<-TData;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->priority:Lcom/bumptech/glide/Priority;

    .line 91
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->fetchers:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0, p1, p0}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 94
    return-void
.end method

.method public final onDataReady(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->startNextOrFail()V

    goto :goto_0
.end method

.method public final onLoadFailed(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;->startNextOrFail()V

    .line 135
    return-void
.end method
