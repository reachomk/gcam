.class final Lcom/android/camera/one/v2/common/CommonRequestTemplateModule$1;
.super Ljava/lang/Object;
.source "CommonRequestTemplateModule.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/one/v2/common/RequestTransformer;",
        ">;",
        "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$requestTransformers:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule$1;->val$requestTransformers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 59
    check-cast p1, Ljava/util/List;

    .line 1064
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/common/RequestTransformer;

    .line 1065
    iget-object v2, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule$1;->val$requestTransformers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1068
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/common/CommonRequestTemplate;

    iget-object v1, p0, Lcom/android/camera/one/v2/common/CommonRequestTemplateModule$1;->val$requestTransformers:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/common/CommonRequestTemplate;-><init>(Ljava/util/Collection;)V

    .line 59
    return-object v0
.end method
