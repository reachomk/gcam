.class final Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$1;
.super Ljava/lang/Object;
.source "ImageFilterImageSelector.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector;->selectBestImage(Ljava/util/List;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$imagesToProcessAndClose:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$1;->val$imagesToProcessAndClose:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    check-cast p1, Ljava/util/Set;

    .line 1087
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 1089
    invoke-static {p1, v2}, Lcom/google/common/collect/Serialization;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    .line 1091
    iget-object v3, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v4

    .line 1092
    iget-object v0, v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 1094
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/ImageFilterImageSelector$1;->val$imagesToProcessAndClose:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 1097
    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v0, v2

    .line 1088
    goto :goto_0

    .line 1100
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1101
    if-ltz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 1102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    return-object v0

    :cond_2
    move v1, v2

    .line 1101
    goto :goto_2
.end method
