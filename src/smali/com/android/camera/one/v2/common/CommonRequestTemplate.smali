.class public final Lcom/android/camera/one/v2/common/CommonRequestTemplate;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "CommonRequestTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/one/v2/common/RequestTransformer;",
        ">;",
        "Lcom/android/camera/one/v2/core/Request;",
        ">;"
    }
.end annotation


# instance fields
.field private final dynamicRequestTransformers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final finalTransformer:Lcom/android/camera/one/v2/common/RequestTransformer;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->noOp()Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;-><init>(Ljava/util/Collection;Lcom/android/camera/one/v2/common/RequestTransformer;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Lcom/android/camera/one/v2/common/RequestTransformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;>;",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lcom/google/android/apps/camera/async/Observables;->allAsList(Ljava/util/Collection;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 49
    iput-object p1, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->dynamicRequestTransformers:Ljava/util/Collection;

    .line 50
    iput-object p2, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->finalTransformer:Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 51
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 29
    check-cast p1, Ljava/util/List;

    .line 1057
    new-instance v1, Lcom/android/camera/one/v2/core/RequestBuilder;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;-><init>(I)V

    .line 1058
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1059
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/common/RequestTransformer;->transform(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    goto :goto_0

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->finalTransformer:Lcom/android/camera/one/v2/common/RequestTransformer;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/common/RequestTransformer;->transform(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 1062
    invoke-virtual {v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final varargs with([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/CommonRequestTemplate;
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    iget-object v1, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->dynamicRequestTransformers:Ljava/util/Collection;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/camera/one/v2/common/RequestTransformer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;->finalTransformer:Lcom/android/camera/one/v2/common/RequestTransformer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 72
    invoke-static {p1}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;-><init>(Ljava/util/Collection;Lcom/android/camera/one/v2/common/RequestTransformer;)V

    .line 70
    return-object v0
.end method
