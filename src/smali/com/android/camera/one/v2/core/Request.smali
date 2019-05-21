.class public final Lcom/android/camera/one/v2/core/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/Request$Parameter;
    }
.end annotation


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

.field private final parent:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
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

.field private final targets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/FrameTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final templateType:I


# direct methods
.method constructor <init>(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/FrameTarget;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/camera/one/v2/core/Request;->templateType:I

    .line 94
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/Request;->parameters:Ljava/util/Set;

    .line 95
    invoke-static {p3}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/Request;->responseListeners:Ljava/util/Set;

    .line 96
    invoke-static {p4}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/Request;->targets:Ljava/util/Set;

    .line 97
    iput-object p5, p0, Lcom/android/camera/one/v2/core/Request;->parent:Lcom/google/common/base/Optional;

    .line 98
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 159
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera/one/v2/core/Request;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/one/v2/core/Request;->templateType:I

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    iget v0, v0, Lcom/android/camera/one/v2/core/Request;->templateType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/core/Request;->parameters:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    iget-object v0, v0, Lcom/android/camera/one/v2/core/Request;->parameters:Ljava/util/Set;

    .line 162
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/core/Request;->targets:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/one/v2/core/Request;

    iget-object v0, v0, Lcom/android/camera/one/v2/core/Request;->targets:Ljava/util/Set;

    .line 163
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request;->responseListeners:Ljava/util/Set;

    check-cast p1, Lcom/android/camera/one/v2/core/Request;

    iget-object v1, p1, Lcom/android/camera/one/v2/core/Request;->responseListeners:Ljava/util/Set;

    .line 164
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 159
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
    .line 125
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request;->parameters:Ljava/util/Set;

    return-object v0
.end method

.method public final getParentMetadata()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request;->parent:Lcom/google/common/base/Optional;

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
    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request;->responseListeners:Ljava/util/Set;

    return-object v0
.end method

.method public final getTargets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/FrameTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request;->targets:Ljava/util/Set;

    return-object v0
.end method

.method public final getTemplateType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/camera/one/v2/core/Request;->templateType:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/one/v2/core/Request;->templateType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/core/Request;->parameters:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/one/v2/core/Request;->targets:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/camera/one/v2/core/Request;->responseListeners:Ljava/util/Set;

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 169
    return v0
.end method

.method public final isReprocessing()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/one/v2/core/Request;->parent:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    return v0
.end method
