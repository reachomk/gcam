.class public Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;
.super Ljava/lang/Object;
.source "JpegThumbnailParametersNull.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs combine([Lcom/android/camera/one/v2/common/RequestTransformer;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 9

    .prologue
    .line 1118
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 1119
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1120
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1121
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1122
    array-length v5, p0

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, p0, v1

    .line 1123
    invoke-virtual {v6}, Lcom/android/camera/one/v2/common/RequestTransformer;->getTemplateType()Lcom/google/common/base/Optional;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1124
    invoke-virtual {v6}, Lcom/android/camera/one/v2/common/RequestTransformer;->getTemplateType()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 1126
    :cond_0
    invoke-virtual {v6}, Lcom/android/camera/one/v2/common/RequestTransformer;->getStreams()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1127
    invoke-virtual {v6}, Lcom/android/camera/one/v2/common/RequestTransformer;->getResponseListeners()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1128
    invoke-virtual {v6}, Lcom/android/camera/one/v2/common/RequestTransformer;->getParameters()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    new-instance v1, Lcom/android/camera/one/v2/common/RequestTransformer;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;-><init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method

.method public static forDynamicParameter(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<TT;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformers$2;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/common/RequestTransformers$2;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 1093
    invoke-static {p1, v0}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 1092
    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forDynamicParameter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static forDynamicParameter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<TT;>;>;)",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/v2/common/RequestTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformers$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/common/RequestTransformers$1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static forListener(Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 2

    .prologue
    .line 1138
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/one/v2/core/ResponseListener;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    return-object v0
.end method

.method public static forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;)",
            "Lcom/android/camera/one/v2/common/RequestTransformer;"
        }
    .end annotation

    .prologue
    .line 1146
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1147
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 1149
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;-><init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1146
    return-object v0
.end method

.method public static forParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)",
            "Lcom/android/camera/one/v2/common/RequestTransformer;"
        }
    .end annotation

    .prologue
    .line 1067
    new-instance v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameter(Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    return-object v0
.end method

.method public static forParameter(Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;)",
            "Lcom/android/camera/one/v2/common/RequestTransformer;"
        }
    .end annotation

    .prologue
    .line 1038
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1039
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 1042
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;-><init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1038
    return-object v0
.end method

.method public static forParameters(Ljava/util/List;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)",
            "Lcom/android/camera/one/v2/common/RequestTransformer;"
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1057
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 1060
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;-><init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1056
    return-object v0
.end method

.method public static varargs forParameters([Lcom/android/camera/one/v2/core/Request$Parameter;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;)",
            "Lcom/android/camera/one/v2/common/RequestTransformer;"
        }
    .end annotation

    .prologue
    .line 1049
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/one/v2/common/JpegThumbnailParametersNull;->forParameters(Ljava/util/List;)Lcom/android/camera/one/v2/common/RequestTransformer;

    move-result-object v0

    return-object v0
.end method

.method public static forStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 5

    .prologue
    .line 1107
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1108
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 1109
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;-><init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1107
    return-object v0
.end method

.method public static forTemplateType(I)Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 5

    .prologue
    .line 1157
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;-><init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1157
    return-object v0
.end method

.method public static noOp()Lcom/android/camera/one/v2/common/RequestTransformer;
    .locals 5

    .prologue
    .line 1027
    new-instance v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1028
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/common/RequestTransformer;-><init>(Lcom/google/common/base/Optional;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1027
    return-object v0
.end method
