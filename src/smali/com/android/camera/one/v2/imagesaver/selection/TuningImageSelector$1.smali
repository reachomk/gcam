.class final Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector$1;
.super Ljava/lang/Object;
.source "TuningImageSelector.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;->selectBestImage(Ljava/util/List;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;

.field private synthetic val$timestamps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector$1;->this$0:Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector$1;->val$timestamps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 1046
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector$1;->val$timestamps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkElementIndex(II)I

    .line 1051
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector$1;->this$0:Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;->access$000(Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/selection/TuningImageSelector$1;->val$timestamps:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;->addSelectedBaseFrame(J)V

    .line 42
    return-object p1
.end method
