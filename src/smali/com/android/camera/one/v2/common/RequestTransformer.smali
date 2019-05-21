.class public final Lcom/android/camera/one/v2/common/RequestTransformer;
.super Ljava/lang/Object;
.source "RequestTransformer.java"


# instance fields
.field private final parameters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final responseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/CaptureStream;",
            ">;"
        }
    .end annotation
.end field

.field private final templateType:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/CaptureStream;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->templateType:Lcom/google/common/base/Optional;

    .line 34
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->streams:Ljava/util/Set;

    .line 35
    invoke-static {p3}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->responseListeners:Ljava/util/Set;

    .line 36
    invoke-static {p4}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->parameters:Ljava/util/Set;

    .line 37
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 75
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/one/v2/common/RequestTransformer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->templateType:Lcom/google/common/base/Optional;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    iget-object v0, v0, Lcom/android/camera/one/v2/common/RequestTransformer;->templateType:Lcom/google/common/base/Optional;

    .line 77
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->streams:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    iget-object v0, v0, Lcom/android/camera/one/v2/common/RequestTransformer;->streams:Ljava/util/Set;

    .line 78
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->responseListeners:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    iget-object v0, v0, Lcom/android/camera/one/v2/common/RequestTransformer;->responseListeners:Ljava/util/Set;

    .line 79
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->parameters:Ljava/util/Set;

    check-cast p1, Lcom/android/camera/one/v2/common/RequestTransformer;

    iget-object v1, p1, Lcom/android/camera/one/v2/common/RequestTransformer;->parameters:Ljava/util/Set;

    .line 80
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 75
    goto :goto_0
.end method

.method public final getParameters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->parameters:Ljava/util/Set;

    return-object v0
.end method

.method public final getResponseListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->responseListeners:Ljava/util/Set;

    return-object v0
.end method

.method public final getStreams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/CaptureStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->streams:Ljava/util/Set;

    return-object v0
.end method

.method public final getTemplateType()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->templateType:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final transform(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->templateType:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->templateType:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setTemplateType(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/CaptureStream;

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestBuilder;

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->responseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/RequestBuilder;

    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/camera/one/v2/common/RequestTransformer;->parameters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/core/RequestBuilder;

    goto :goto_2

    .line 55
    :cond_3
    return-void
.end method
